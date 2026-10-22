import json
import math

from . import gmlparse as gml_parse
from .gmltables import (BUILTIN_FUNCS, CONSTANTS, INSTANCE_VARS, GLOBAL_VARS, ARRAY_GLOBALS)

R, S, B, U = 'R', 'S', 'B', 'U'
PAUSING = {'show_question', 'get_string', 'show_message', 'get_integer', 'show_message_ext'}


def q(s):
    return '"' + s.replace('\\', '\\\\').replace('"', '\\"').replace('\n', '\\n').replace('\r', '') + '"'


def num(v):
    if v == int(v) and abs(v) < 1e15:
        return '%d.0' % int(v)
    return repr(float(v))


def walk(node, fn):
    if isinstance(node, tuple):
        fn(node)
        for c in node[1:]:
            walk(c, fn)
    elif isinstance(node, list):
        for c in node:
            walk(c, fn)


class Game:
    def __init__(self, data):
        self.d = data
        self.res = {}
        self.obj_names = []
        for kind in ('objects', 'sprites', 'sounds', 'backgrounds', 'scripts', 'fonts', 'rooms', 'paths', 'timelines'):
            for x in data[kind]:
                if x:
                    self.res[x['name']] = (kind, x['id'])
        self.scripts = {s['name']: s for s in data['scripts'] if s}
        self.script_ids = {}
        self.vartype = {}
        self.script_ret = {}
        self.unknown_calls = {}
        self.global_names = set()
        self.global_arrays = set()
        self.inst_arrays = set()
        self.pausing_scripts = set()

    def resource_const(self, name):
        kind, i = self.res[name]
        return float(i)


def action_code_blocks(game, label, actions):
    out = []
    for a in actions:
        if a['library'] == 1 and a['action_id'] == 603:
            out.append(('code', a, a['args'][0]))
    return out


class TypeInfer:
    def __init__(self, game):
        self.g = game
        self.vartype = game.vartype
        self.assigns = []

    def collect(self, ast, scriptname=None):
        def visit(n):
            if n[0] == 'assign':
                self.assigns.append((n[1], n[2], n[3], scriptname))
            elif n[0] == 'return' and scriptname:
                self.assigns.append(('ret', ('script', scriptname), n[1], scriptname))
        walk(ast, visit)

    def key(self, lhs):
        t = lhs[0]
        if t == 'id':
            return lhs[1]
        if t == 'field':
            if lhs[1] == ('id', 'global'):
                return 'global.' + lhs[2]
            return lhs[2]
        if t == 'index':
            return self.key(lhs[1]) + '[]'
        return None

    def etype(self, e):
        t = e[0]
        if t == 'num':
            return R
        if t == 'str':
            return S
        if t == 'paren':
            return self.etype(e[1])
        if t == 'un':
            return R
        if t == 'bin':
            op = e[1]
            if op == '+':
                a, b = self.etype(e[2]), self.etype(e[3])
                if a == S and b == S:
                    return S
                if a == '?' or b == '?':
                    return '?'
                if a == R and b == R:
                    return R
                if a == S or b == S:
                    return S if (a in (S, R, B) and b in (S, R, B) and (a == S or b == S)) else U
                return U
            return R
        if t == 'id':
            n = e[1]
            if n in ('true', 'false', 'pi', 'noone', 'all', 'self', 'other', 'global'):
                return R if n != 'self' and n != 'other' else U
            if n.startswith('argument'):
                return U
            if n in CONSTANTS or n in self.g.res:
                return R
            if n in INSTANCE_VARS:
                return INSTANCE_VARS[n][1]
            if n in GLOBAL_VARS:
                return GLOBAL_VARS[n][1]
            return self.vartype.get(n, '?')
        if t == 'field':
            if e[1] == ('id', 'global'):
                return self.vartype.get('global.' + e[2], '?')
            if e[2] in INSTANCE_VARS:
                return INSTANCE_VARS[e[2]][1]
            return self.vartype.get(e[2], '?')
        if t == 'index':
            k = self.key(e[1])
            if k and k.split('.')[-1] == 'alarm':
                return R
            return self.vartype.get(k + '[]', '?') if k else U
        if t == 'call':
            n = e[1]
            if n in self.g.scripts:
                return self.g.script_ret.get(n, '?')
            if n in BUILTIN_FUNCS:
                return BUILTIN_FUNCS[n][1]
            return U
        return U

    @staticmethod
    def join(a, b):
        if a == '?':
            return b
        if b == '?':
            return a
        if a == b:
            return a
        return U

    def solve(self):
        for _ in range(30):
            changed = False
            for op, lhs, rhs, sc in self.assigns:
                rt = self.etype(rhs)
                if rt == B:
                    rt = R
                if op == 'ret':
                    name = lhs[1]
                    nt = self.join(self.g.script_ret.get(name, '?'), rt)
                    if nt != self.g.script_ret.get(name, '?'):
                        self.g.script_ret[name] = nt
                        changed = True
                    continue
                k = self.key(lhs)
                if k is None:
                    continue
                if op in ('-=', '*=', '/=', '&=', '|=', '^=', '<<=', '>>='):
                    rt = R
                elif op == '+=':
                    cur = self.vartype.get(k, '?')
                    rt = self.join(cur, rt) if rt != R or cur != '?' else R
                    if cur == S or rt == S:
                        rt = S if (rt == S and cur in ('?', S)) else U
                nt = self.join(self.vartype.get(k, '?'), rt)
                if nt != self.vartype.get(k, '?'):
                    self.vartype[k] = nt
                    changed = True
            if not changed:
                break
        for k, v in list(self.vartype.items()):
            if v == '?':
                self.vartype[k] = U
        for n in list(self.g.script_ret):
            if self.g.script_ret[n] == '?':
                self.g.script_ret[n] = R


class Ctx:
    def __init__(self, kind, self_expr='self', declared=None, locals_=None, method=None):
        self.kind = kind
        self.self_expr = self_expr
        self.declared = declared
        self.locals = set(locals_ or [])
        self.depth = 0
        self.method = method
        self.uses_self_decl = declared is not None


class Gen:
    def __init__(self, game, infer):
        self.g = game
        self.inf = infer
        self.ctx = None
        self.uid = 0
        self.used_vars = None
        self.used_arrays = set()

    def nid(self):
        self.uid += 1
        return self.uid

    def sref(self):
        return self.ctx.self_expr

    def tr(self, code, t):
        if t == B:
            return code
        if t == R:
            return '(%s) >= 0.5' % code
        return 'GM.truth(%s)' % code

    def val(self, code, t):
        if t == B:
            return '(1.0 if %s else 0.0)' % code, R
        return code, t

    def cond(self, e):
        c, t = self.expr(e)
        return self.tr(c, t)

    def vexpr(self, e):
        c, t = self.expr(e)
        return self.val(c, t)

    def instvar_access(self, name, selfexpr):
        spec = INSTANCE_VARS[name]
        return '%s.%s' % (selfexpr, spec[0]) if selfexpr != 'self' else spec[0] if not spec[0].endswith('()') else 'self.' + spec[0]

    def var_ref(self, name):
        c = self.ctx
        if name in c.locals:
            return 'l_' + name, 'local'
        if name.startswith('argument') and name[8:].isdigit():
            return name, 'arg'
        pn = 'v_' + name
        if c.self_expr == 'self' and c.declared is not None:
            self.used_vars.add(name)
            return pn, 'field'
        return None, 'dyn'

    def expr(self, e):
        t = e[0]
        if t == 'num':
            return num(e[1]), R
        if t == 'str':
            return q(e[1]), S
        if t == 'paren':
            c, ty = self.expr(e[1])
            return '(%s)' % c, ty
        if t == 'id':
            return self.id_read(e[1])
        if t == 'un':
            op = e[1]
            if op == '!':
                return 'not (%s)' % self.cond(e[2]), B
            c, ty = self.vexpr(e[2])
            if op == '-':
                return '(-%s)' % c if not c.startswith('-') else '(-(%s))' % c, R
            if op == '~':
                return 'GM.bnot(%s)' % c, R
            return c, R
        if t == 'bin':
            return self.binop(e)
        if t == 'field':
            return self.field_read(e)
        if t == 'index':
            return self.index_read(e)
        if t == 'call':
            return self.call(e)
        raise ValueError('expr %r' % (e,))

    def id_read(self, n):
        c = self.ctx
        if n == 'true':
            return '1.0', R
        if n == 'false':
            return '0.0', R
        if n == 'pi':
            return '3.141592653589793', R
        if n == 'noone':
            return '-4.0', R
        if n == 'all':
            return '-3.0', R
        if n == 'self':
            return c.self_expr, U
        if n == 'other':
            return '%s.other' % c.self_expr, U
        if n == 'global':
            raise ValueError('bare global')
        if n in c.locals:
            return 'l_' + n, self.local_type(n)
        if n.startswith('argument') and n[8:].isdigit():
            return n, U
        if n in INSTANCE_VARS:
            s = INSTANCE_VARS[n]
            return self.inst_member(s[0]), s[1]
        if n in GLOBAL_VARS:
            return GLOBAL_VARS[n][0], GLOBAL_VARS[n][1]
        if n in CONSTANTS:
            return num(CONSTANTS[n]), R
        if n in self.g.res:
            return num(self.g.resource_const(n)), R
        ref, kind = self.var_ref(n)
        ty = self.inf.vartype.get(n, U)
        if kind == 'field':
            return ref, ty
        return 'GM.vget(%s, %s)' % (c.self_expr, q('v_' + n)), ty

    def local_type(self, n):
        return U

    def inst_member(self, m):
        return m if self.ctx.self_expr == 'self' else '%s.%s' % (self.ctx.self_expr, m)

    def global_ref(self, n):
        self.g.global_names.add(n)
        return 'GM.G[%s]' % q(n)

    def obj_expr(self, e):
        c, t = self.vexpr(e)
        return c

    def field_read(self, e):
        base, name = e[1], e[2]
        if base == ('id', 'global'):
            return self.global_ref(name), self.inf.vartype.get('global.' + name, U)
        bc = self.obj_expr(base)
        if name in INSTANCE_VARS:
            s = INSTANCE_VARS[name]
            return 'GM.vb(%s, %s)' % (bc, q(s[0])), s[1]
        return 'GM.vget(%s, %s)' % (bc, q('v_' + name)), self.inf.vartype.get(name, U)

    def array_base(self, base):
        if base[0] == 'id':
            n = base[1]
            if n == 'alarm':
                return 'alarm', 'alarm'
            if n in ('background_x', 'background_y', 'background_hspeed', 'background_vspeed', 'background_index',
                     'background_visible', 'background_foreground', 'background_alpha', 'view_xview', 'view_yview',
                     'view_wview', 'view_hview', 'view_angle', 'view_hborder', 'view_vborder', 'view_visible',
                     'view_xport', 'view_yport', 'view_wport', 'view_hport', 'view_hspeed', 'view_vspeed',
                     'view_object'):
                return 'GM.%s' % n, 'native'
            ref, kind = self.var_ref(n)
            if kind == 'local':
                return ref, 'dict'
            self.g.inst_arrays.add(n)
            if kind == 'field':
                return ref, 'dict'
            return 'GM.vget(%s, %s)' % (self.ctx.self_expr, q('v_' + n)), 'dict'
        if base[0] == 'field':
            if base[1] == ('id', 'global'):
                self.g.global_arrays.add(base[2])
                return self.global_ref(base[2]), 'dict'
            bc = self.obj_expr(base[1])
            if base[2] == 'alarm':
                return 'GM.vb(%s, "alarm")' % bc, 'alarm'
            self.g.inst_arrays.add(base[2])
            return 'GM.vget(%s, %s)' % (bc, q('v_' + base[2])), 'dict'
        raise ValueError('array base %r' % (base,))

    def index_read(self, e):
        base, idx = e[1], e[2]
        arr, kind = self.array_base(base)
        ic = [self.vexpr(i)[0] for i in idx]
        if kind == 'alarm':
            return '%s[int(%s)]' % (arr, ic[0]), R
        if kind == 'native':
            return '%s[int(%s)]' % (arr, ic[0]), R if 'view' in arr or 'background' in arr else U
        key = self.arr_key(ic)
        k = self.inf.key(base)
        ty = self.inf.vartype.get(k + '[]', U) if k else U
        return 'GM.aget(%s, %s)' % (arr, key), ty

    def arr_key(self, ic):
        if len(ic) == 1:
            return ic[0]
        return 'GM.k2(%s, %s)' % (ic[0], ic[1])

    def safe_s(self, e):
        t = e[0]
        if t == 'str':
            return True
        if t == 'paren':
            return self.safe_s(e[1])
        if t == 'bin' and e[1] == '+':
            return self.safe_s(e[2]) and self.safe_s(e[3])
        if t == 'call' and e[1] in BUILTIN_FUNCS and BUILTIN_FUNCS[e[1]][1] == S:
            return True
        return False

    def binop(self, e):
        op, a, b = e[1], e[2], e[3]
        if op in ('&&', '||', '^^'):
            ca, cb = self.cond(a), self.cond(b)
            if op == '&&':
                return '(%s and %s)' % (ca, cb), B
            if op == '||':
                return '(%s or %s)' % (ca, cb), B
            return '(%s != %s)' % (ca, cb), B
        ac, at = self.vexpr(a)
        bc, bt = self.vexpr(b)
        if op in ('<', '<=', '>', '>='):
            return '(%s %s %s)' % (ac, op, bc), B
        if op == '==':
            if at == S or bt == S:
                return '(%s == %s)' % (ac, bc), B
            if at == R and bt == R:
                return '(absf(%s - %s) < 0.00001)' % (ac, bc), B
            return 'GM.eq(%s, %s)' % (ac, bc), B
        if op == '!=':
            if at == S or bt == S:
                return '(%s != %s)' % (ac, bc), B
            if at == R and bt == R:
                return '(absf(%s - %s) >= 0.00001)' % (ac, bc), B
            return '(not GM.eq(%s, %s))' % (ac, bc), B
        if op == '+':
            if at == R and bt == R:
                return '(%s + %s)' % (ac, bc), R
            if at == S and bt == S and self.safe_s(a) and self.safe_s(b):
                return '(%s + %s)' % (ac, bc), S
            return 'GM.add(%s, %s)' % (ac, bc), self.inf.etype(e) if self.inf.etype(e) != '?' else U
        if op in ('-', '*', '/'):
            return '(%s %s %s)' % (ac, op, bc), R
        if op == 'div':
            return 'GM.idiv(%s, %s)' % (ac, bc), R
        if op == 'mod':
            return 'fmod(%s, %s)' % (ac, bc), R
        if op == '<<':
            return 'GM.shl(%s, %s)' % (ac, bc), R
        if op == '>>':
            return 'GM.shr(%s, %s)' % (ac, bc), R
        if op == '&':
            return 'GM.band(%s, %s)' % (ac, bc), R
        if op == '|':
            return 'GM.bor(%s, %s)' % (ac, bc), R
        if op == '^':
            return 'GM.bxor(%s, %s)' % (ac, bc), R
        raise ValueError(op)

    def call(self, e):
        name, args = e[1], e[2]
        c = self.ctx
        if name in self.g.scripts:
            ac = [self.vexpr(a)[0] for a in args]
            aw = 'await ' if name in self.g.pausing_scripts else ''
            return '(%s%s.script_%s(%s))' % (aw, c.self_expr, name, ', '.join(ac)), self.g.script_ret.get(name, U)
        if name in BUILTIN_FUNCS:
            spec = BUILTIN_FUNCS[name]
            ac = [self.vexpr(a)[0] for a in args]
            if name == 'event_inherited':
                return 'GM.f_event_inherited(%s)' % c.self_expr, R
            if name == 'event_user':
                return '%s.ev_user(%s)' % (c.self_expr, ac[0]), R
            parts = ([c.self_expr] if spec[0] else []) + ac
            aw = 'await ' if name in PAUSING else ''
            return '(%sGM.f_%s(%s))' % (aw, name, ', '.join(parts)), spec[1]
        self.g.unknown_calls[name] = self.g.unknown_calls.get(name, 0) + 1
        ac = [self.vexpr(a)[0] for a in args]
        return 'GM.f_unknown(%s)' % ', '.join([q(name), c.self_expr] + ac), U

    def assign_target(self, lhs):
        t = lhs[0]
        c = self.ctx
        if t == 'id':
            n = lhs[1]
            if n in c.locals:
                return ('lval', 'l_' + n, self.local_type(n))
            if n.startswith('argument') and n[8:].isdigit():
                return ('lval', n, U)
            if n in INSTANCE_VARS:
                s = INSTANCE_VARS[n]
                return ('lval', self.inst_member(s[0]), s[1])
            if n in GLOBAL_VARS:
                return ('lval', GLOBAL_VARS[n][0], GLOBAL_VARS[n][1])
            ref, kind = self.var_ref(n)
            if kind == 'field':
                return ('lval', ref, self.inf.vartype.get(n, U))
            return ('vset', c.self_expr, 'v_' + n, self.inf.vartype.get(n, U))
        if t == 'field':
            if lhs[1] == ('id', 'global'):
                return ('lval', self.global_ref(lhs[2]), self.inf.vartype.get('global.' + lhs[2], U))
            bc = self.obj_expr(lhs[1])
            n = lhs[2]
            if n in INSTANCE_VARS:
                return ('vsetb', bc, INSTANCE_VARS[n][0], INSTANCE_VARS[n][1])
            return ('vset', bc, 'v_' + n, self.inf.vartype.get(n, U))
        if t == 'index':
            arr, kind = self.array_base(lhs[1])
            ic = [self.vexpr(i)[0] for i in lhs[2]]
            if kind in ('alarm', 'native'):
                return ('lval', '%s[int(%s)]' % (arr, ic[0]), R)
            return ('aset', arr, self.arr_key(ic))
        raise ValueError('assign target %r' % (lhs,))

    def stmt(self, n, ind, out):
        pad = '\t' * ind
        k = n[0]
        if k == 'block':
            if not n[1]:
                out.append(pad + 'pass')
            for s in n[1]:
                self.stmt(s, ind, out)
            return
        if k == 'expr':
            e = n[1]
            if e[0] in ('call',):
                c, _ = self.expr(e)
                if c.startswith('(await ') and c.endswith(')'):
                    c = c[1:-1]
                out.append(pad + c)
            elif e[0] == 'paren' and e[1][0] == 'call':
                c, _ = self.expr(e[1])
                out.append(pad + c)
            else:
                out.append(pad + 'pass')
            return
        if k == 'assign':
            op, lhs, rhs = n[1], n[2], n[3]
            tg = self.assign_target(lhs)
            rc, rt = self.vexpr(rhs)
            kind = tg[0]
            if op != '=':
                if kind == 'lval':
                    cur, ct = tg[1], tg[2]
                    cur_read = cur
                elif kind == 'vset':
                    cur_read = 'GM.vget(%s, %s)' % (tg[1], q(tg[2]))
                    ct = tg[3]
                elif kind == 'vsetb':
                    cur_read = 'GM.vb(%s, %s)' % (tg[1], q(tg[2]))
                    ct = tg[3]
                else:
                    cur_read = 'GM.aget(%s, %s)' % (tg[1], tg[2])
                    ct = U
                bop = op[:-1]
                if bop == '+':
                    if ct == R and rt == R:
                        newv = '%s + %s' % (cur_read, rc)
                    else:
                        newv = 'GM.add(%s, %s)' % (cur_read, rc)
                elif bop in ('-', '*', '/'):
                    newv = '%s %s %s' % (cur_read, bop, rc)
                elif bop == '&':
                    newv = 'GM.band(%s, %s)' % (cur_read, rc)
                elif bop == '|':
                    newv = 'GM.bor(%s, %s)' % (cur_read, rc)
                elif bop == '^':
                    newv = 'GM.bxor(%s, %s)' % (cur_read, rc)
                elif bop == '<<':
                    newv = 'GM.shl(%s, %s)' % (cur_read, rc)
                else:
                    newv = 'GM.shr(%s, %s)' % (cur_read, rc)
                rc = newv
            if kind == 'lval':
                out.append('%s%s = %s' % (pad, tg[1], rc))
            elif kind == 'vset':
                out.append('%sGM.vset(%s, %s, %s)' % (pad, tg[1], q(tg[2]), rc))
            elif kind == 'vsetb':
                out.append('%sGM.vsetb(%s, %s, %s)' % (pad, tg[1], q(tg[2]), rc))
            else:
                out.append('%sGM.aset(%s, %s, %s)' % (pad, tg[1], tg[2], rc))
            return
        if k == 'if':
            out.append('%sif %s:' % (pad, self.cond(n[1])))
            self.stmt(n[2], ind + 1, out)
            if n[3] is not None:
                out.append(pad + 'else:')
                self.stmt(n[3], ind + 1, out)
            return
        if k == 'while':
            out.append('%swhile %s:' % (pad, self.cond(n[1])))
            self.stmt(n[2], ind + 1, out)
            return
        if k == 'dountil':
            out.append(pad + 'while true:')
            self.stmt(n[1], ind + 1, out)
            out.append('%s\tif %s:' % (pad, self.cond(n[2])))
            out.append(pad + '\t\tbreak')
            return
        if k == 'repeat':
            v = '_r%d' % self.nid()
            out.append('%sfor %s in range(int(%s)):' % (pad, v, self.vexpr(n[1])[0]))
            self.stmt(n[2], ind + 1, out)
            return
        if k == 'for':
            if n[1] is not None:
                self.stmt(n[1], ind, out)
            out.append('%swhile %s:' % (pad, self.cond(n[2])))
            body = []
            self.stmt(n[4], ind + 1, body)
            step = []
            if n[3] is not None:
                self.stmt(n[3], ind + 1, step)
            if self.has_continue(n[4]):
                body = self.rewrite_for_continue(n, ind, step)
                out.extend(body)
            else:
                out.extend(body)
                out.extend(step)
            return
        if k == 'with':
            self.with_stmt(n, ind, out)
            return
        if k == 'var':
            for name in n[1]:
                self.ctx.locals.add(name)
                out.append('%svar l_%s = 0.0' % (pad, name))
            return
        if k == 'globalvar':
            return
        if k == 'return':
            out.append('%sreturn %s' % (pad, self.vexpr(n[1])[0]))
            return
        if k == 'exit':
            out.append(pad + ('return' if self.ctx.kind != 'script' else 'return 0.0'))
            return
        if k == 'break':
            out.append(pad + 'break')
            return
        if k == 'continue':
            out.append(pad + 'continue')
            return
        if k == 'switch':
            self.switch_stmt(n, ind, out)
            return
        raise ValueError('stmt %r' % (k,))

    def has_continue(self, node):
        found = []

        def v(x):
            if x[0] == 'continue':
                found.append(1)
        walk(node, v)
        return bool(found)

    def rewrite_for_continue(self, n, ind, step):
        pad = '\t' * ind
        v = '_c%d' % self.nid()
        lines = ['%sfor %s in range(1):' % (pad + '\t', v)]
        body = []
        self.stmt(n[4], ind + 2, body)
        lines.extend(body)
        lines[0:0] = []
        res = lines
        res = [l.replace('\tcontinue', '\tbreak') if l.strip() == 'continue' else l for l in res]
        res.extend(step)
        return res

    def switch_stmt(self, n, ind, out):
        pad = '\t' * ind
        v = '_s%d' % self.nid()
        out.append('%svar %s = %s' % (pad, v, self.vexpr(n[1])[0]))
        out.append('%svar %s_m = false' % (pad, v))
        out.append('%sfor _sw%d in range(1):' % (pad, self.nid()))
        for val, body in n[2]:
            if val is None:
                out.append('%s\t%s_m = true' % (pad, v))
            else:
                out.append('%s\tif %s_m or GM.eq(%s, %s):' % (pad, v, v, self.vexpr(val)[0]))
                out.append('%s\t\t%s_m = true' % (pad, v))
            out.append('%s\tif %s_m:' % (pad, v))
            sub = []
            for s in body:
                self.stmt(s, ind + 2, sub)
            if not sub:
                sub = ['%s\t\tpass' % pad]
            out.extend(sub)

    def with_stmt(self, n, ind, out):
        pad = '\t' * ind
        tc = self.vexpr(n[1])[0]
        w = '_w%d' % self.nid()
        outer = self.ctx.self_expr
        out.append('%sfor %s in GM.with_list(%s, %s):' % (pad, w, tc, outer))
        out.append('%s\tif %s._dead:' % (pad, w))
        out.append('%s\t\tcontinue' % pad)
        out.append('%s\t%s.other = %s' % (pad, w, outer))
        saved = self.ctx.self_expr
        self.ctx.self_expr = w
        self.stmt(n[2], ind + 1, out)
        self.ctx.self_expr = saved
