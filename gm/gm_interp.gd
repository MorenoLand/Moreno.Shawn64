extends RefCounted

const KEYWORDS = ["if", "else", "with", "repeat", "while", "for", "do", "until", "var", "return", "break", "continue", "exit", "switch", "case", "default", "then", "begin", "end", "globalvar"]
const WORD_OPS = {"and": "&&", "or": "||", "xor": "^^", "not": "!", "div": "div", "mod": "mod"}
const SYMS3 = ["<<=", ">>="]
const SYMS2 = [":=", "==", "!=", "<>", "<=", ">=", "&&", "||", "^^", "<<", ">>", "+=", "-=", "*=", "/=", "&=", "|=", "^=", "++", "--"]
const SYMS1 = "+-*/=<>!~&|^()[]{},;:."
const ASSIGN_OPS = ["=", ":=", "+=", "-=", "*=", "/=", "&=", "|=", "^=", "<<=", ">>="]
const LEVELS = [["*", "/", "div", "mod"], ["+", "-"], ["<<", ">>"], ["&", "|", "^"], ["<", "<=", "==", "=", "!=", "<>", ">=", ">"], ["&&", "||", "^^"]]

var gm = null
var consts := {}
var globals_map := {}
var inst_vars := {}
var self_funcs := {}
var known_funcs := {}
var script_ids := {}
var cache := {}

var toks := []
var tp := 0

const R_NORMAL = 0
const R_BREAK = 1
const R_CONTINUE = 2
const R_EXIT = 3


func setup(g):
	gm = g
	consts = gm.data.get("gml_constants", {})
	globals_map = gm.data.get("gml_globals", {})
	for n in gm.data.get("gml_instance_vars", []):
		inst_vars[n] = true
	var sc = gm.data.get("scripts", [])
	for i in range(sc.size()):
		if sc[i] != null:
			script_ids[i] = sc[i]
	for m in gm.get_method_list():
		var nm = str(m["name"])
		if nm.begins_with("f_"):
			known_funcs[nm.substr(2)] = true
			if m["args"].size() > 0 and str(m["args"][0]["name"]) == "s":
				self_funcs[nm.substr(2)] = true


func lex(src):
	var out := []
	var i = 0
	var n = src.length()
	while i < n:
		var c = src[i]
		if c == " " or c == "\t" or c == "\n" or c == "\r":
			i += 1
			continue
		if c == "/" and i + 1 < n and src[i + 1] == "/":
			while i < n and src[i] != "\n":
				i += 1
			continue
		if c == "/" and i + 1 < n and src[i + 1] == "*":
			i += 2
			while i + 1 < n and not (src[i] == "*" and src[i + 1] == "/"):
				i += 1
			i += 2
			continue
		if c == "$":
			var j = i + 1
			while j < n and "0123456789abcdefABCDEF".contains(src[j]):
				j += 1
			out.append(["num", float(("0x" + src.substr(i + 1, j - i - 1)).hex_to_int())])
			i = j
			continue
		if (c >= "0" and c <= "9") or (c == "." and i + 1 < n and src[i + 1] >= "0" and src[i + 1] <= "9"):
			var j2 = i
			while j2 < n and ((src[j2] >= "0" and src[j2] <= "9") or src[j2] == "."):
				j2 += 1
			out.append(["num", float(src.substr(i, j2 - i))])
			i = j2
			continue
		if (c >= "a" and c <= "z") or (c >= "A" and c <= "Z") or c == "_":
			var j3 = i
			while j3 < n and ((src[j3] >= "a" and src[j3] <= "z") or (src[j3] >= "A" and src[j3] <= "Z") or (src[j3] >= "0" and src[j3] <= "9") or src[j3] == "_"):
				j3 += 1
			var w = src.substr(i, j3 - i)
			if WORD_OPS.has(w):
				out.append(["sym", WORD_OPS[w]])
			elif KEYWORDS.has(w):
				out.append(["kw", w])
			else:
				out.append(["id", w])
			i = j3
			continue
		if c == "\"" or c == "'":
			var j4 = src.find(c, i + 1)
			if j4 < 0:
				j4 = n
			out.append(["str", src.substr(i + 1, j4 - i - 1)])
			i = j4 + 1
			continue
		var tri = src.substr(i, 3)
		if SYMS3.has(tri):
			out.append(["sym", tri])
			i += 3
			continue
		var duo = src.substr(i, 2)
		if SYMS2.has(duo):
			out.append(["sym", duo])
			i += 2
			continue
		if SYMS1.contains(c):
			out.append(["sym", c])
			i += 1
			continue
		i += 1
	out.append(["eof", null])
	return out


func is_sym(s, k = 0):
	var t = toks[min(tp + k, toks.size() - 1)]
	return t[0] == "sym" and t[1] == s


func is_kw(s):
	var t = toks[tp]
	return t[0] == "kw" and t[1] == s


func nxt():
	var t = toks[tp]
	tp += 1
	return t


func skip_semi():
	while is_sym(";"):
		tp += 1


func parse_program(src):
	if cache.has(src):
		return cache[src]
	toks = lex(src)
	tp = 0
	var out := []
	while toks[tp][0] != "eof":
		var st = statement()
		if st != null:
			out.append(st)
	var ast = ["block", out]
	if cache.size() > 500:
		cache.clear()
	cache[src] = ast
	return ast


func statement():
	var t = toks[tp]
	if t[0] == "sym" and t[1] == ";":
		tp += 1
		return null
	if (t[0] == "sym" and t[1] == "{") or (t[0] == "kw" and t[1] == "begin"):
		tp += 1
		var closer_sym = t[0] == "sym"
		var out := []
		while true:
			var c = toks[tp]
			if c[0] == "eof":
				break
			if closer_sym and c[0] == "sym" and c[1] == "}":
				break
			if (not closer_sym) and c[0] == "kw" and c[1] == "end":
				break
			var st = statement()
			if st != null:
				out.append(st)
		tp += 1
		return ["block", out]
	if t[0] == "kw":
		return keyword_statement(t[1])
	var s = simple_statement()
	skip_semi()
	return s


func body():
	var s = statement()
	return s if s != null else ["block", []]


func keyword_statement(kw):
	tp += 1
	if kw == "if":
		var c = expr(5)
		if is_kw("then"):
			tp += 1
		var a = body()
		skip_semi()
		var b = null
		if is_kw("else"):
			tp += 1
			b = body()
		return ["if", c, a, b]
	if kw == "while":
		var c2 = expr(5)
		if is_kw("do"):
			tp += 1
		return ["while", c2, body()]
	if kw == "do":
		var b2 = body()
		skip_semi()
		if is_kw("until"):
			tp += 1
		var c3 = expr(5)
		skip_semi()
		return ["dountil", b2, c3]
	if kw == "repeat":
		var n = expr(5)
		return ["repeat", n, body()]
	if kw == "with":
		var o = expr(5)
		return ["with", o, body()]
	if kw == "for":
		tp += 1
		var init = null
		if not is_sym(";"):
			init = simple_statement()
		skip_semi()
		var cond = ["num", 1.0]
		if not is_sym(";"):
			cond = expr(5)
		skip_semi()
		var step = null
		if not is_sym(")"):
			step = simple_statement()
		tp += 1
		return ["for", init, cond, step, body()]
	if kw == "var" or kw == "globalvar":
		var names := []
		while toks[tp][0] == "id":
			names.append(nxt()[1])
			if is_sym(","):
				tp += 1
			else:
				break
		skip_semi()
		return [kw, names]
	if kw == "return":
		var e = expr(5)
		skip_semi()
		return ["return", e]
	if kw == "break" or kw == "continue" or kw == "exit":
		skip_semi()
		return [kw]
	if kw == "switch":
		var e2 = expr(5)
		tp += 1
		var cases := []
		while not is_sym("}"):
			if toks[tp][0] == "eof":
				break
			if is_kw("case"):
				tp += 1
				var v = expr(5)
				tp += 1
				cases.append([v, []])
			elif is_kw("default"):
				tp += 1
				tp += 1
				cases.append([null, []])
			else:
				var st = statement()
				if st != null and not cases.is_empty():
					cases[cases.size() - 1][1].append(st)
		tp += 1
		return ["switch", e2, cases]
	return null


func simple_statement():
	var t = toks[tp]
	if t[0] == "kw":
		return keyword_statement(t[1])
	if (t[0] == "sym" and t[1] == "(") or t[0] == "num" or t[0] == "str":
		return ["expr", expr(5)]
	var e = postfix()
	var n = toks[tp]
	if n[0] == "sym" and ASSIGN_OPS.has(n[1]):
		tp += 1
		var op = "=" if n[1] == ":=" else n[1]
		return ["assign", op, e, expr(5)]
	if n[0] == "sym" and (n[1] == "++" or n[1] == "--"):
		tp += 1
		return ["assign", "+=" if n[1] == "++" else "-=", e, ["num", 1.0]]
	return ["expr", e]


func expr(level):
	if level < 0:
		return unary()
	var a = expr(level - 1)
	var ops = LEVELS[level]
	while true:
		var t = toks[tp]
		if t[0] == "sym" and ops.has(t[1]):
			tp += 1
			var b = expr(level - 1)
			var op = t[1]
			if op == "=":
				op = "=="
			elif op == "<>":
				op = "!="
			a = ["bin", op, a, b]
		else:
			return a
	return a


func unary():
	var t = toks[tp]
	if t[0] == "sym" and (t[1] == "!" or t[1] == "-" or t[1] == "+" or t[1] == "~"):
		tp += 1
		return ["un", t[1], unary()]
	return postfix()


func postfix():
	var t = nxt()
	var e = null
	if t[0] == "num":
		e = ["num", t[1]]
	elif t[0] == "str":
		e = ["str", t[1]]
	elif t[0] == "sym" and t[1] == "(":
		e = ["paren", expr(5)]
		tp += 1
	elif t[0] == "id":
		if is_sym("("):
			tp += 1
			var args := []
			while not is_sym(")"):
				if toks[tp][0] == "eof":
					break
				args.append(expr(5))
				if is_sym(","):
					tp += 1
			tp += 1
			e = ["call", t[1], args]
		else:
			e = ["id", t[1]]
	else:
		return ["num", 0.0]
	while true:
		if is_sym("."):
			tp += 1
			var nm = nxt()
			e = ["field", e, str(nm[1])]
		elif is_sym("["):
			tp += 1
			var idx := [expr(5)]
			while is_sym(","):
				tp += 1
				idx.append(expr(5))
			tp += 1
			e = ["index", e, idx]
		else:
			return e
	return e


func run(code, s, args = [], other = null):
	var ast = parse_program(code)
	var ctx = {"self": s, "other": other if other != null else (s.other if s != null else null), "locals": {}, "args": args, "ret": 0.0}
	exec(ast, ctx)
	return ctx["ret"]


func exec_list(lst, ctx):
	for st in lst:
		var r = exec(st, ctx)
		if r != R_NORMAL:
			return r
	return R_NORMAL


func exec(n, ctx):
	match n[0]:
		"block":
			return exec_list(n[1], ctx)
		"expr":
			ev(n[1], ctx)
			return R_NORMAL
		"assign":
			do_assign(n, ctx)
			return R_NORMAL
		"if":
			if truth(ev(n[1], ctx)):
				return exec(n[2], ctx)
			elif n[3] != null:
				return exec(n[3], ctx)
			return R_NORMAL
		"while":
			var guard = 0
			while truth(ev(n[1], ctx)) and guard < 10000000:
				guard += 1
				var r = exec(n[2], ctx)
				if r == R_BREAK:
					break
				if r == R_EXIT:
					return r
			return R_NORMAL
		"dountil":
			while true:
				var r2 = exec(n[1], ctx)
				if r2 == R_BREAK:
					break
				if r2 == R_EXIT:
					return r2
				if truth(ev(n[2], ctx)):
					break
			return R_NORMAL
		"repeat":
			var cnt = int(ev(n[1], ctx))
			for k in range(cnt):
				var r3 = exec(n[2], ctx)
				if r3 == R_BREAK:
					break
				if r3 == R_EXIT:
					return r3
			return R_NORMAL
		"for":
			if n[1] != null:
				exec(n[1], ctx)
			var g2 = 0
			while truth(ev(n[2], ctx)) and g2 < 10000000:
				g2 += 1
				var r4 = exec(n[4], ctx)
				if r4 == R_BREAK:
					break
				if r4 == R_EXIT:
					return r4
				if n[3] != null:
					exec(n[3], ctx)
			return R_NORMAL
		"with":
			var target = ev(n[1], ctx)
			var outer = ctx["self"]
			for w in gm.with_list(target, outer):
				if w._dead:
					continue
				w.other = outer
				ctx["self"] = w
				var r5 = exec(n[2], ctx)
				ctx["self"] = outer
				if r5 == R_EXIT:
					return r5
				if r5 == R_BREAK:
					break
			ctx["self"] = outer
			return R_NORMAL
		"var":
			for nm in n[1]:
				ctx["locals"][nm] = 0.0
			return R_NORMAL
		"globalvar":
			return R_NORMAL
		"return":
			ctx["ret"] = ev(n[1], ctx)
			return R_EXIT
		"exit":
			return R_EXIT
		"break":
			return R_BREAK
		"continue":
			return R_CONTINUE
		"switch":
			var v = ev(n[1], ctx)
			var matched = false
			for c in n[2]:
				if not matched:
					if c[0] == null or gm.eq(v, ev(c[0], ctx)):
						matched = true
				if matched:
					var r6 = exec_list(c[1], ctx)
					if r6 == R_BREAK:
						return R_NORMAL
					if r6 != R_NORMAL:
						return r6
			return R_NORMAL
	return R_NORMAL


func truth(v):
	if v is bool:
		return v
	if v is float or v is int:
		return v >= 0.5
	return false


func b2f(b):
	return 1.0 if b else 0.0


func ev(n, ctx):
	match n[0]:
		"num":
			return n[1]
		"str":
			return n[1]
		"paren":
			return ev(n[1], ctx)
		"id":
			return read_id(n[1], ctx)
		"un":
			var v = ev(n[2], ctx)
			match n[1]:
				"!":
					return b2f(not truth(v))
				"-":
					return -float(v)
				"~":
					return float(~int(v))
			return v
		"bin":
			return binop(n[1], n[2], n[3], ctx)
		"field":
			return read_field(n, ctx)
		"index":
			return read_index(n, ctx)
		"call":
			return call_fn(n[1], n[2], ctx)
	return 0.0


func binop(op, a, b, ctx):
	if op == "&&":
		return b2f(truth(ev(a, ctx)) and truth(ev(b, ctx)))
	if op == "||":
		return b2f(truth(ev(a, ctx)) or truth(ev(b, ctx)))
	var x = ev(a, ctx)
	var y = ev(b, ctx)
	match op:
		"^^":
			return b2f(truth(x) != truth(y))
		"+":
			return gm.add(x, y)
		"-":
			return float(x) - float(y)
		"*":
			return float(x) * float(y)
		"/":
			return float(x) / float(y) if float(y) != 0.0 else 0.0
		"div":
			return gm.idiv(float(x), float(y)) if float(y) != 0.0 else 0.0
		"mod":
			return fmod(float(x), float(y)) if float(y) != 0.0 else 0.0
		"<<":
			return gm.shl(x, y)
		">>":
			return gm.shr(x, y)
		"&":
			return gm.band(x, y)
		"|":
			return gm.bor(x, y)
		"^":
			return gm.bxor(x, y)
		"<":
			return b2f(x < y)
		"<=":
			return b2f(x <= y)
		">":
			return b2f(x > y)
		">=":
			return b2f(x >= y)
		"==":
			return b2f(gm.eq(x, y))
		"!=":
			return b2f(not gm.eq(x, y))
	return 0.0


func read_id(name, ctx):
	if ctx["locals"].has(name):
		return ctx["locals"][name]
	if name.begins_with("argument") and name.substr(8).is_valid_int():
		var k = int(name.substr(8))
		return ctx["args"][k] if k < ctx["args"].size() else 0.0
	match name:
		"true":
			return 1.0
		"false":
			return 0.0
		"pi":
			return PI
		"noone":
			return -4.0
		"all":
			return -3.0
		"self":
			return ctx["self"]
		"other":
			return ctx["other"]
		"global":
			return 0.0
	var s = ctx["self"]
	if s != null and inst_vars.has(name):
		return s.get(name)
	if globals_map.has(name):
		var g = globals_map[name]
		var v = gm.get(g[0])
		if g.size() > 1 and g[1] != null:
			if str(g[1]) == "call":
				return gm.call(g[0])
			return v[int(g[1])]
		return v
	if s != null:
		var uv = s.get("v_" + name)
		if uv != null:
			return uv
		if s._v.has("v_" + name):
			return s._v["v_" + name]
	if consts.has(name):
		return float(consts[name])
	return 0.0


func read_field(n, ctx):
	if n[1][0] == "id" and n[1][1] == "global":
		return gm.G.get(n[2], 0.0)
	var base = ev(n[1], ctx)
	if inst_vars.has(n[2]):
		return gm.vb(base, n[2])
	return gm.vget(base, "v_" + n[2])


func container_of(base_node, ctx, create):
	if base_node[0] == "id":
		var nm = base_node[1]
		if ctx["locals"].has(nm):
			var lv = ctx["locals"][nm]
			if not (lv is Dictionary) and create:
				lv = {}
				ctx["locals"][nm] = lv
			return lv
		if nm == "alarm":
			return ctx["self"].alarm
		if globals_map.has(nm):
			return gm.get(globals_map[nm][0])
		var s = ctx["self"]
		var cur = gm.vget(s, "v_" + nm)
		if not (cur is Dictionary) and create:
			cur = {}
			gm.vset(s, "v_" + nm, cur)
		return cur
	if base_node[0] == "field":
		if base_node[1][0] == "id" and base_node[1][1] == "global":
			var gv = gm.G.get(base_node[2], 0.0)
			if not (gv is Dictionary) and create:
				gv = {}
				gm.G[base_node[2]] = gv
			return gv
		var inst = ev(base_node[1], ctx)
		if base_node[2] == "alarm":
			return gm.vb(inst, "alarm")
		var cv = gm.vget(inst, "v_" + base_node[2])
		if not (cv is Dictionary) and create:
			cv = {}
			gm.vset(inst, "v_" + base_node[2], cv)
		return cv
	return 0.0


func read_index(n, ctx):
	var c = container_of(n[1], ctx, false)
	var idx = n[2]
	if c is Array:
		var k = int(ev(idx[0], ctx))
		return c[k] if k >= 0 and k < c.size() else 0.0
	if c is Dictionary:
		var key = ev(idx[0], ctx)
		if idx.size() > 1:
			key = gm.k2(float(key), float(ev(idx[1], ctx)))
		return c.get(key, 0.0)
	return 0.0


func do_assign(n, ctx):
	var op = n[1]
	var lhs = n[2]
	var val = ev(n[3], ctx)
	if op != "=":
		var cur = ev(lhs, ctx)
		match op:
			"+=":
				val = gm.add(cur, val)
			"-=":
				val = float(cur) - float(val)
			"*=":
				val = float(cur) * float(val)
			"/=":
				val = float(cur) / float(val) if float(val) != 0.0 else 0.0
			"&=":
				val = gm.band(cur, val)
			"|=":
				val = gm.bor(cur, val)
			"^=":
				val = gm.bxor(cur, val)
			"<<=":
				val = gm.shl(cur, val)
			">>=":
				val = gm.shr(cur, val)
	if lhs[0] == "id":
		var name = lhs[1]
		if ctx["locals"].has(name):
			ctx["locals"][name] = val
			return
		if name.begins_with("argument") and name.substr(8).is_valid_int():
			var k = int(name.substr(8))
			while ctx["args"].size() <= k:
				ctx["args"].append(0.0)
			ctx["args"][k] = val
			return
		var s = ctx["self"]
		if inst_vars.has(name):
			s.set(name, val)
			return
		if globals_map.has(name):
			var g = globals_map[name]
			if g.size() > 1 and g[1] != null and str(g[1]) != "call":
				gm.get(g[0])[int(g[1])] = val
			else:
				gm.set(g[0], val)
			return
		gm.vset(s, "v_" + name, val)
	elif lhs[0] == "field":
		if lhs[1][0] == "id" and lhs[1][1] == "global":
			gm.G[lhs[2]] = val
			return
		var inst = ev(lhs[1], ctx)
		if inst_vars.has(lhs[2]):
			gm.vsetb(inst, lhs[2], val)
		else:
			gm.vset(inst, "v_" + lhs[2], val)
	elif lhs[0] == "index":
		var c = container_of(lhs[1], ctx, true)
		var idx = lhs[2]
		if c is Array:
			var k2 = int(ev(idx[0], ctx))
			if k2 >= 0 and k2 < c.size():
				c[k2] = val
		elif c is Dictionary:
			var key = ev(idx[0], ctx)
			if idx.size() > 1:
				key = gm.k2(float(key), float(ev(idx[1], ctx)))
			c[key] = val


func call_fn(name, arg_nodes, ctx):
	var args := []
	for a in arg_nodes:
		args.append(ev(a, ctx))
	var s = ctx["self"]
	if name == "execute_string":
		var code = str(args[0]) if args.size() > 0 else ""
		return run(code, s, args.slice(1), ctx["other"])
	if name == "script_execute":
		var sid = int(args[0]) if args.size() > 0 else -1
		if script_ids.has(sid):
			return s.callv("script_" + script_ids[sid], args.slice(1))
		return 0.0
	if name == "event_user":
		return s.ev_user(args[0] if args.size() > 0 else 0.0)
	if name == "event_inherited":
		return 0.0
	if script_ids.values().has(name):
		return s.callv("script_" + name, args)
	if known_funcs.has(name):
		if self_funcs.has(name):
			args.push_front(s)
		return gm.callv("f_" + name, args)
	gm.warn_once("interp_" + name, "interpreter: unknown function " + name)
	return 0.0
