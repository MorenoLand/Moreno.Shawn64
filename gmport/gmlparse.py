import re

KEYWORDS = {'if', 'else', 'with', 'repeat', 'while', 'for', 'do', 'until', 'var', 'return', 'break',
            'continue', 'exit', 'switch', 'case', 'default', 'then', 'begin', 'end', 'globalvar'}
WORD_OPS = {'and': '&&', 'or': '||', 'xor': '^^', 'not': '!', 'div': 'div', 'mod': 'mod'}
SYMS = ['<<=', '>>=', ':=', '==', '!=', '<>', '<=', '>=', '&&', '||', '^^', '<<', '>>', '+=', '-=', '*=', '/=',
        '&=', '|=', '^=', '++', '--', '+', '-', '*', '/', '=', '<', '>', '!', '~', '&', '|', '^', '(', ')',
        '[', ']', '{', '}', ',', ';', ':', '.']
TOKEN = re.compile(r'''
    (?P<ws>\s+)
  | (?P<lc>//[^\n]*)
  | (?P<bc>/\*.*?\*/)
  | (?P<hex>\$[0-9A-Fa-f]+)
  | (?P<num>\d+\.\d*|\.\d+|\d+)
  | (?P<id>[A-Za-z_][A-Za-z_0-9]*)
  | (?P<s1>"[^"]*")
  | (?P<s2>'[^']*')
  | (?P<sym>''' + '|'.join(re.escape(s) for s in SYMS) + r''')
''', re.X | re.S)


class GmlError(Exception):
    pass


def lex(src):
    toks = []
    pos = 0
    n = len(src)
    while pos < n:
        m = TOKEN.match(src, pos)
        if not m:
            if src[pos] in '\x00\x1a':
                pos += 1
                continue
            raise GmlError('bad char %r near %r' % (src[pos], src[pos:pos + 30]))
        pos = m.end()
        k = m.lastgroup
        t = m.group(k)
        if k in ('ws', 'lc', 'bc'):
            continue
        if k == 'hex':
            toks.append(('num', float(int(t[1:], 16))))
        elif k == 'num':
            toks.append(('num', float(t)))
        elif k == 'id':
            if t in WORD_OPS:
                toks.append(('sym', WORD_OPS[t]))
            elif t in KEYWORDS:
                toks.append(('kw', t))
            else:
                toks.append(('id', t))
        elif k in ('s1', 's2'):
            toks.append(('str', t[1:-1]))
        else:
            toks.append(('sym', '<>' if t == '<>' else t))
    toks.append(('eof', None))
    return toks


ASSIGN_OPS = {'=', ':=', '+=', '-=', '*=', '/=', '&=', '|=', '^=', '<<=', '>>='}
BIN_LEVELS = [
    ['*', '/', 'div', 'mod'],
    ['+', '-'],
    ['<<', '>>'],
    ['&', '|', '^'],
    ['<', '<=', '==', '=', '!=', '<>', '>=', '>'],
    ['&&', '||', '^^'],
]


class Parser:
    def __init__(self, src):
        self.t = lex(src)
        self.i = 0

    def peek(self, k=0):
        return self.t[min(self.i + k, len(self.t) - 1)]

    def next(self):
        v = self.t[self.i]
        self.i += 1
        return v

    def is_sym(self, s, k=0):
        t = self.peek(k)
        return t[0] == 'sym' and t[1] == s

    def is_kw(self, s, k=0):
        t = self.peek(k)
        return t[0] == 'kw' and t[1] == s

    def expect_sym(self, s):
        t = self.next()
        if t != ('sym', s):
            raise GmlError('expected %r got %r near token %d' % (s, t, self.i))

    def program(self):
        out = []
        while self.peek()[0] != 'eof':
            s = self.statement()
            if s is not None:
                out.append(s)
        return ('block', out)

    def skip_semi(self):
        while self.is_sym(';'):
            self.next()

    def statement(self):
        t = self.peek()
        if t == ('sym', ';'):
            self.next()
            return None
        if t == ('sym', '{') or t == ('kw', 'begin'):
            self.next()
            closer = ('sym', '}') if t == ('sym', '{') else ('kw', 'end')
            out = []
            while self.peek() != closer:
                if self.peek()[0] == 'eof':
                    raise GmlError('unterminated block')
                s = self.statement()
                if s is not None:
                    out.append(s)
            self.next()
            return ('block', out)
        if t[0] == 'kw':
            return self.keyword_statement(t[1])
        s = self.simple_statement()
        self.skip_semi()
        return s

    def body(self):
        s = self.statement()
        return s if s is not None else ('block', [])

    def keyword_statement(self, kw):
        self.next()
        if kw == 'if':
            c = self.expr()
            if self.is_kw('then'):
                self.next()
            a = self.body()
            self.skip_semi()
            b = None
            if self.is_kw('else'):
                self.next()
                b = self.body()
            return ('if', c, a, b)
        if kw == 'while':
            c = self.expr()
            if self.is_kw('do'):
                self.next()
            return ('while', c, self.body())
        if kw == 'do':
            b = self.body()
            self.skip_semi()
            if not self.is_kw('until'):
                raise GmlError('expected until')
            self.next()
            c = self.expr()
            self.skip_semi()
            return ('dountil', b, c)
        if kw == 'repeat':
            n = self.expr()
            return ('repeat', n, self.body())
        if kw == 'with':
            o = self.expr()
            return ('with', o, self.body())
        if kw == 'for':
            self.expect_sym('(')
            init = self.simple_statement() if not self.is_sym(';') else None
            self.skip_semi()
            cond = self.expr() if not self.is_sym(';') else ('num', 1.0)
            self.skip_semi()
            step = self.simple_statement() if not self.is_sym(')') else None
            self.expect_sym(')')
            return ('for', init, cond, step, self.body())
        if kw == 'var' or kw == 'globalvar':
            names = []
            while self.peek()[0] == 'id':
                names.append(self.next()[1])
                if self.is_sym(','):
                    self.next()
                else:
                    break
            self.skip_semi()
            return (kw, names)
        if kw == 'return':
            e = self.expr()
            self.skip_semi()
            return ('return', e)
        if kw in ('break', 'continue', 'exit'):
            self.skip_semi()
            return (kw,)
        if kw == 'switch':
            e = self.expr()
            self.expect_sym('{')
            cases = []
            while not self.is_sym('}'):
                if self.is_kw('case'):
                    self.next()
                    v = self.expr()
                    self.expect_sym(':')
                    cases.append([v, []])
                elif self.is_kw('default'):
                    self.next()
                    self.expect_sym(':')
                    cases.append([None, []])
                else:
                    s = self.statement()
                    if s is not None:
                        cases[-1][1].append(s)
            self.next()
            return ('switch', e, cases)
        raise GmlError('unexpected keyword %s' % kw)

    def simple_statement(self):
        t = self.peek()
        if t[0] == 'kw':
            return self.keyword_statement(t[1])
        if t == ('sym', '(') or t[0] in ('num', 'str'):
            return ('expr', self.expr())
        e = self.postfix()
        n = self.peek()
        if n[0] == 'sym' and n[1] in ASSIGN_OPS:
            self.next()
            op = '=' if n[1] == ':=' else n[1]
            r = self.expr()
            return ('assign', op, e, r)
        if n == ('sym', '++') or n == ('sym', '--'):
            self.next()
            return ('assign', '+=' if n[1] == '++' else '-=', e, ('num', 1.0))
        return ('expr', e)

    def expr(self, level=len(BIN_LEVELS) - 1):
        if level < 0:
            return self.unary()
        a = self.expr(level - 1)
        ops = BIN_LEVELS[level]
        while True:
            t = self.peek()
            if t[0] == 'sym' and t[1] in ops:
                self.next()
                b = self.expr(level - 1)
                a = ('bin', '==' if t[1] == '=' else ('!=' if t[1] == '<>' else t[1]), a, b)
            else:
                return a

    def unary(self):
        t = self.peek()
        if t[0] == 'sym' and t[1] in ('!', '-', '+', '~'):
            self.next()
            return ('un', t[1], self.unary())
        return self.postfix()

    def postfix(self):
        t = self.next()
        if t[0] == 'num':
            e = ('num', t[1])
        elif t[0] == 'str':
            e = ('str', t[1])
        elif t == ('sym', '('):
            e = self.expr()
            self.expect_sym(')')
            e = ('paren', e)
        elif t[0] == 'id':
            if self.is_sym('('):
                self.next()
                args = []
                while not self.is_sym(')'):
                    args.append(self.expr())
                    if self.is_sym(','):
                        self.next()
                self.next()
                e = ('call', t[1], args)
            else:
                e = ('id', t[1])
        else:
            raise GmlError('unexpected token %r (index %d)' % (t, self.i))
        while True:
            if self.is_sym('.'):
                self.next()
                n = self.next()
                if n[0] != 'id':
                    raise GmlError('expected field name')
                e = ('field', e, n[1])
            elif self.is_sym('['):
                self.next()
                idx = [self.expr()]
                while self.is_sym(','):
                    self.next()
                    idx.append(self.expr())
                self.expect_sym(']')
                e = ('index', e, idx)
            else:
                return e


def parse(src):
    return Parser(src).program()
