extends RefCounted

const SMOKE = 4
const SMOKEUP = 5
const EXPLOSION = 0
const RING = 1
const ELLIPSE = 2
const FIREWORK = 3
const STAR = 6
const SPARK = 7
const FLARE = 8
const CLOUD = 9

var gm = null
var parts := []
var tex_soft = null
var tex_ring = null
var tex_star = null
var rng := RandomNumberGenerator.new()


func setup(g):
	gm = g
	rng.randomize()
	tex_soft = _make_soft()
	tex_ring = _make_ring()
	tex_star = _make_star()


func _tex_from(img):
	img.premultiply_alpha()
	return ImageTexture.create_from_image(img)


func _make_soft():
	var n = 64
	var img = Image.create(n, n, false, Image.FORMAT_RGBA8)
	for y in range(n):
		for x in range(n):
			var dx = (x + 0.5 - n * 0.5) / (n * 0.5)
			var dy = (y + 0.5 - n * 0.5) / (n * 0.5)
			var d = sqrt(dx * dx + dy * dy)
			var a = clampf(1.0 - d, 0.0, 1.0)
			a = a * a * (3.0 - 2.0 * a)
			img.set_pixel(x, y, Color(1, 1, 1, a))
	return _tex_from(img)


func _make_ring():
	var n = 64
	var img = Image.create(n, n, false, Image.FORMAT_RGBA8)
	for y in range(n):
		for x in range(n):
			var dx = (x + 0.5 - n * 0.5) / (n * 0.5)
			var dy = (y + 0.5 - n * 0.5) / (n * 0.5)
			var d = sqrt(dx * dx + dy * dy)
			var a = clampf(1.0 - absf(d - 0.85) / 0.12, 0.0, 1.0)
			img.set_pixel(x, y, Color(1, 1, 1, a))
	return _tex_from(img)


func _make_star():
	var n = 64
	var img = Image.create(n, n, false, Image.FORMAT_RGBA8)
	for y in range(n):
		for x in range(n):
			var dx = absf((x + 0.5 - n * 0.5) / (n * 0.5))
			var dy = absf((y + 0.5 - n * 0.5) / (n * 0.5))
			var a = clampf(1.0 - (pow(dx, 0.5) + pow(dy, 0.5)), 0.0, 1.0)
			img.set_pixel(x, y, Color(1, 1, 1, minf(a * 2.0, 1.0)))
	return _tex_from(img)


func _add(tex, px, py, vx, vy, life, s0, s1, a0, col, additive, rot = 0.0, spin = 0.0, grav = 0.0):
	parts.append({"tex": tex, "x": px, "y": py, "vx": vx, "vy": vy, "age": 0, "life": life, "s0": s0, "s1": s1,
		"a0": a0, "col": col, "add": additive, "rot": rot, "spin": spin, "grav": grav})


func create(kind, px, py, size, col):
	var k = [0.5, 1.0, 2.0][clampi(size, 0, 2)]
	match kind:
		SMOKE:
			for n in range(2):
				_add(tex_soft, px + rng.randf_range(-6, 6) * k, py + rng.randf_range(-6, 6) * k, rng.randf_range(-0.5, 0.5), rng.randf_range(-1.4, -0.4), int(rng.randf_range(34, 55)), 0.45 * k + 0.2, 1.1 * k + 0.5, 0.55, col, false, 0.0, rng.randf_range(-0.03, 0.03))
		SMOKEUP:
			for n in range(2):
				_add(tex_soft, px + rng.randf_range(-6, 6) * k, py, rng.randf_range(-0.3, 0.3), rng.randf_range(-2.4, -1.2), int(rng.randf_range(40, 65)), 0.4 * k + 0.2, 1.0 * k + 0.4, 0.6, col, false)
		EXPLOSION:
			for n in range(int(6 * k) + 4):
				var d = rng.randf() * TAU
				var sp = rng.randf_range(0.5, 3.0) * k
				_add(tex_soft, px, py, cos(d) * sp, sin(d) * sp, int(rng.randf_range(14, 26)), 0.5 * k + 0.2, 1.6 * k + 0.6, 0.9, col, true)
		RING:
			_add(tex_ring, px, py, 0, 0, 20, 0.2 * k, 1.8 * k + 0.4, 0.9, col, true)
		ELLIPSE:
			_add(tex_ring, px, py, 0, 0, 20, 0.2 * k, 1.8 * k + 0.4, 0.9, col, true)
		FIREWORK:
			for n in range(int(14 * k) + 6):
				var d = rng.randf() * TAU
				var sp = rng.randf_range(1.0, 5.0) * k
				_add(tex_soft, px, py, cos(d) * sp, sin(d) * sp, int(rng.randf_range(20, 40)), 0.18 * k + 0.08, 0.05, 1.0, col, true, 0.0, 0.0, 0.08)
		STAR:
			_add(tex_star, px, py, 0, 0, 22, 0.15 * k, 1.4 * k + 0.3, 1.0, col, true, 0.0, 0.1)
		SPARK:
			for n in range(int(4 * k) + 3):
				var d = rng.randf() * TAU
				var sp = rng.randf_range(1.0, 4.0) * k
				_add(tex_soft, px, py, cos(d) * sp, sin(d) * sp, int(rng.randf_range(8, 16)), 0.15 * k + 0.08, 0.04, 1.0, col, true)
		FLARE:
			_add(tex_soft, px, py, 0, 0, 12, 0.5 * k + 0.2, 2.2 * k + 0.6, 1.0, col, true)
		CLOUD:
			for n in range(3):
				_add(tex_soft, px + rng.randf_range(-8, 8) * k, py + rng.randf_range(-8, 8) * k, rng.randf_range(-0.3, 0.3), rng.randf_range(-0.6, 0.0), int(rng.randf_range(40, 70)), 0.5 * k + 0.3, 1.2 * k + 0.6, 0.5, col, false)
		_:
			gm.warn_once("effect_%d" % kind, "effect kind %d is not implemented" % kind)


func step():
	var keep := []
	for p in parts:
		p["age"] += 1
		if p["age"] >= p["life"]:
			continue
		p["x"] += p["vx"]
		p["y"] += p["vy"]
		p["vy"] += p["grav"]
		p["rot"] += p["spin"]
		keep.append(p)
	parts = keep


func draw():
	if parts.is_empty():
		return
	var cmds = gm._cmds()
	for p in parts:
		var t = float(p["age"]) / float(p["life"])
		var s = lerpf(p["s0"], p["s1"], t)
		var a = p["a0"] * (1.0 - t)
		if p["tex"] == tex_soft and not p["add"]:
			a = p["a0"] * sin(minf(t * 3.0, 1.0) * PI * 0.5) * (1.0 - t)
		var c = gm._bgr_to_color(int(p["col"]), a, 1 if p["add"] else 0)
		cmds.append([0, p["tex"], 32.0, 32.0, p["x"], p["y"], s, s, p["rot"], c])


func clear():
	parts.clear()
