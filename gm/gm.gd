extends "res://gm/gm_lib.gd"

const SliceScript = preload("res://gm/gm_slice.gd")
const EffectsScript = preload("res://gm/gm_effects.gd")
const AudioScript = preload("res://gm/gm_audio.gd")
const DialogScript = preload("res://gm/gm_dialog.gd")

var G := {}
var data := {}
var game_dir := ""
var sprites := []
var backgrounds := []
var fonts := []
var sound_info := []
var objects := []
var rooms := []
var room_order := []
var obj_scripts := []
var evset := []
var colev := []
var colmap := []
var chain_i := []
var qstamp := 0
var desc := []
var res_names := {}
var script_holder = null
var dialog = null
var auto_answers := {}
var dialog_open := false
var touch_aim = null
var touch_ui = null

var instances := []
var by_id := {}
var inst_by_obj := {}
var graveyard := []
var next_id := 100001
var persistent_keep := []
var any_inactive := false
var tile_buckets := {}
var ogrid := {}
var grid_dirty := true
var sgrid := {}
var grid_extra := []
var desc_set := []
var target_of := []
var target_obj := {}
var match_memo := {}

var room := 0.0
var room_speed := 30.0
var room_width := 800.0
var room_height := 600.0
var room_caption := ""
var room_persistent := 0.0
var background_color := 0.0
var score := 0.0
var lives := 0.0
var health := 100.0
var show_score := 0.0
var show_lives := 0.0
var show_health := 0.0
var cursor_sprite := -1.0
var game_id := 0.0
var transition_kind := 0.0
var mouse_x := 0.0
var mouse_y := 0.0
var keyboard_key := 0.0
var keyboard_lastkey := 0.0
var keyboard_lastchar := ""
var fps := 30.0
var view_current := 0.0
var view_xview := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_yview := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_wview := [800.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_hview := [600.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_angle := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_hborder := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_vborder := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_hspeed := [-1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0]
var view_vspeed := [-1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0]
var view_xport := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_yport := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_wport := [800.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_hport := [600.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_visible := [1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var view_object := [-1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0]
var background_x := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var background_y := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var background_hspeed := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var background_vspeed := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var background_index := [-1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0]
var background_visible := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var background_foreground := [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
var background_alpha := [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]
var bg_tile_h := [1, 1, 1, 1, 1, 1, 1, 1]
var bg_tile_v := [1, 1, 1, 1, 1, 1, 1, 1]
var bg_stretch := [0, 0, 0, 0, 0, 0, 0, 0]
var enable_views := false

var next_room := -1
var restart_requested := false
var quit_requested := false
var acc := 0.0
var step_count := 0
var current_room_dict = null

var keys_down := {}
var keys_pressed := {}
var keys_released := {}
var pend_pressed := {}
var pend_released := {}
var mouse_down := {}
var mouse_pressed := {}
var mouse_released := {}
var pend_mpressed := {}
var pend_mreleased := {}
var vk_from_godot := {}
var godot_from_vk := {}

var draw_color := 0
var draw_alpha := 1.0
var draw_font := -1
var draw_halign := 0
var draw_valign := 0
var draw_blend := 0
var interpolation := false

var canvas = null
var slices := []
var slice_used := 0
var cur_slice = null
var cur_cmds = null
var first_draw_error := true
var warned := {}
var audio = null
var effects = null
var registry := ConfigFile.new()
var perf := {}
var running := false
var self_for_room_code = null
var depth_dirty := true
var frame_time := 0.0
var view_cache := {}
var game_over := false
var debug_fast := false
var debug_hold := []
var debug_hold_from := 0
var debug_report_every := 0
var debug_steps := 0
var debug_shots := {}
var pending_shot := ""
var debug_mouse = null
var debug_spawns := []
var prec_calls := 0
var proc_start := 0
var verbose_hitch := false
var all_frames := PackedFloat32Array()
var all_steps := PackedFloat32Array()
var room_marks := []
var proc_end := 0
var last_gap_ms := 0.0
var last_proc_ms := 0.0
var last_steps_run := 0
var create_us := 0
var create_n := 0
var make_us := 0
var withs_us := 0
var withs_n := 0
var col_hits := 0
var col_tot_grid := 0
var col_tot_scan := 0
var col_tot_test := 0
var col_tot_n := 0
var col_tests := 0
var col_grid_us := 0
var col_cells := 0
var col_objs := 0
var prec_us := 0
var prec_pairs := {}
var prof := {}
var prof_on := false
var max_frame_ms := 0.0
var frame_hist := PackedFloat32Array()
var step_hist := PackedFloat32Array()
var render_hist := PackedFloat32Array()
var worst_frame_ms := 0.0
var worst_frame_step := 0
var slow_events := []
var tps_count := 0
var tps_clock := 0.0
var tps_now := 0.0
var last_phase_ms := {}
var slow_frames := 0
var frame_total := 0
var debug_clicks := {}

signal game_ended


func _ready():
	rng.randomize()
	_build_key_maps()
	set_process(false)
	set_process_input(true)


func warn_once(key, msg):
	if not warned.has(key):
		warned[key] = true
		push_warning(msg)
		print("[GM] ", msg)


func _build_key_maps():
	var pairs = {
		8: KEY_BACKSPACE, 9: KEY_TAB, 13: KEY_ENTER, 16: KEY_SHIFT, 17: KEY_CTRL, 18: KEY_ALT, 19: KEY_PAUSE,
		27: KEY_ESCAPE, 32: KEY_SPACE, 33: KEY_PAGEUP, 34: KEY_PAGEDOWN, 35: KEY_END, 36: KEY_HOME,
		37: KEY_LEFT, 38: KEY_UP, 39: KEY_RIGHT, 40: KEY_DOWN, 44: KEY_PRINT, 45: KEY_INSERT, 46: KEY_DELETE,
		96: KEY_KP_0, 97: KEY_KP_1, 98: KEY_KP_2, 99: KEY_KP_3, 100: KEY_KP_4, 101: KEY_KP_5, 102: KEY_KP_6,
		103: KEY_KP_7, 104: KEY_KP_8, 105: KEY_KP_9, 106: KEY_KP_MULTIPLY, 107: KEY_KP_ADD,
		109: KEY_KP_SUBTRACT, 110: KEY_KP_PERIOD, 111: KEY_KP_DIVIDE,
		112: KEY_F1, 113: KEY_F2, 114: KEY_F3, 115: KEY_F4, 116: KEY_F5, 117: KEY_F6, 118: KEY_F7,
		119: KEY_F8, 120: KEY_F9, 121: KEY_F10, 122: KEY_F11, 123: KEY_F12
	}
	for vk in pairs:
		vk_from_godot[pairs[vk]] = vk
		godot_from_vk[vk] = pairs[vk]
	for c in range(48, 91):
		vk_from_godot[c] = c
		godot_from_vk[c] = c


func press_vk(vk, down):
	if down:
		if not keys_down.has(vk):
			keys_down[vk] = true
			pend_pressed[vk] = true
			keyboard_key = float(vk)
			keyboard_lastkey = float(vk)
	elif keys_down.has(vk):
		keys_down.erase(vk)
		pend_released[vk] = true


func press_mouse(b, down):
	if down:
		if not mouse_down.has(b):
			mouse_down[b] = true
			pend_mpressed[b] = true
	elif mouse_down.has(b):
		mouse_down.erase(b)
		pend_mreleased[b] = true


func _input(event):
	if dialog_open:
		return
	if event is InputEventKey:
		var vk = vk_from_godot.get(event.keycode, -1)
		if vk < 0:
			return
		if event.pressed and not event.echo:
			keys_down[vk] = true
			pend_pressed[vk] = true
			keyboard_key = float(vk)
			keyboard_lastkey = float(vk)
		elif not event.pressed:
			keys_down.erase(vk)
			pend_released[vk] = true
	elif event is InputEventMouseButton:
		var b = 0
		if event.button_index == MOUSE_BUTTON_LEFT:
			b = 1
		elif event.button_index == MOUSE_BUTTON_RIGHT:
			b = 2
		elif event.button_index == MOUSE_BUTTON_MIDDLE:
			b = 3
		if b > 0:
			if event.pressed:
				mouse_down[b] = true
				pend_mpressed[b] = true
			else:
				mouse_down.erase(b)
				pend_mreleased[b] = true


func load_game(dir):
	game_dir = dir
	data = JSON.parse_string(FileAccess.get_file_as_string(dir + "/data.json"))
	obj_scripts = load(dir + "/object_scripts.gd").SCRIPTS
	script_holder = load(dir + "/scripts.gd").new()
	objects = data["objects"]
	rooms = data["rooms"]
	room_order = data["room_order"]
	for g in data["globals"]:
		G[g] = 0.0
	for g in data["global_arrays"]:
		G[g] = {}
	for c in data["constants"]:
		G[c[0]] = float(c[1]) if c[1].is_valid_float() else c[1]
	for i in range(data["sprites"].size()):
		sprites.append(_load_sprite(data["sprites"][i]))
	for i in range(data["backgrounds"].size()):
		backgrounds.append(_load_background(data["backgrounds"][i]))
	for i in range(data["fonts"].size()):
		fonts.append(_load_font(data["fonts"][i]))
	sound_info = data["sounds"]
	evset.resize(objects.size())
	colev.resize(objects.size())
	colmap.resize(objects.size())
	chain_i.resize(objects.size())
	desc.resize(objects.size())
	for i in range(objects.size()):
		desc[i] = []
	for i in range(objects.size()):
		var o = objects[i]
		if o == null:
			evset[i] = {}
			colev[i] = []
			colmap[i] = {}
			chain_i[i] = []
			continue
		var es := {}
		var cl := []
		for e in o["events"]:
			if e[2] == 4:
				cl.append([int(e[3]), e[1]])
			es[e[1]] = true
		for e in o["events"]:
			if e[2] == 6:
				es["_mouse"] = true
		evset[i] = es
		colev[i] = cl
		var cm := {}
		for pr in cl:
			if not cm.has(pr[0]):
				cm[pr[0]] = []
			cm[pr[0]].append(pr[1])
		colmap[i] = cm
		var ch := []
		for c in o["chain"]:
			ch.append(int(c))
		chain_i[i] = ch
		for c in o["chain"]:
			desc[int(c)].append(i)
	for k in range(objects.size()):
		inst_by_obj[k] = []
	desc_set.resize(objects.size())
	for k in range(objects.size()):
		var ds := {}
		for dd in desc[k]:
			ds[dd] = true
		desc_set[k] = ds
	for i in range(objects.size()):
		for t in colmap[i]:
			target_obj[int(t)] = true
	target_of.resize(objects.size())
	for i in range(objects.size()):
		target_of[i] = false
		for c in chain_i[i]:
			if target_obj.has(c):
				target_of[i] = true
				break
	next_id = int(data["last_instance_id"]) + 1
	var cfg_path = "user://" + dir.get_file() + "_registry.cfg"
	registry.load(cfg_path)
	audio = AudioScript.new()
	audio.setup(self, dir)
	add_child(audio)
	dialog = DialogScript.new()
	add_child(dialog)
	if data.has("auto_answers"):
		auto_answers = data["auto_answers"]
	effects = EffectsScript.new()
	effects.setup(self)


func asset_path(rel):
	var base = rel.get_basename()
	var ext = rel.get_extension()
	return game_dir + "/assets/" + base + ".gm" + ext


func _load_texture(path):
	if not FileAccess.file_exists(path):
		return null
	var img = Image.new()
	if img.load_png_from_buffer(FileAccess.get_file_as_bytes(path)) != OK:
		return null
	img.convert(Image.FORMAT_RGBA8)
	img.premultiply_alpha()
	return [ImageTexture.create_from_image(img), img]


func _load_sprite(s):
	if s == null:
		return null
	var sp := {"name": s["name"], "w": s["width"], "h": s["height"], "ox": s["origin"][0], "oy": s["origin"][1],
		"bl": s["bbox"]["left"], "br": s["bbox"]["right"], "bt": s["bbox"]["top"], "bb": s["bbox"]["bottom"],
		"precise": s["precise"], "tex": [], "img": [], "masks": []}
	for f in s["frames"]:
		var t = _load_texture(asset_path(f["file"]))
		if t == null:
			sp["tex"].append(null)
			sp["img"].append(null)
		else:
			sp["tex"].append(t[0])
			sp["img"].append(t[1])
		sp["masks"].append(null)
	return sp


func _load_background(b):
	if b == null:
		return null
	if not b.has("file"):
		return {"name": b["name"], "w": b["width"], "h": b["height"], "tex": null}
	var t = _load_texture(asset_path(b["file"]))
	return {"name": b["name"], "w": b["width"], "h": b["height"], "tex": t[0] if t != null else null}


func _load_font(f):
	if f == null:
		return null
	var t = _load_texture(asset_path(f["file"]))
	var gl = f["glyphs"]
	var lh = 0
	for g in gl:
		if g[3] > lh:
			lh = g[3]
	return {"name": f["name"], "tex": t[0] if t != null else null, "glyphs": gl, "first": f["range_start"],
		"last": f["range_end"], "lh": lh}


func start():
	running = true
	room_speed = 30.0
	var first = int(room_order[0])
	_enter_room(first, true)
	set_process(true)


func _process(delta):
	if not running:
		return
	if dialog_open:
		return
	if proc_start > 0:
		pass
	var now_us = Time.get_ticks_usec()
	if proc_end > 0:
		last_gap_ms = (now_us - proc_end) / 1000.0
	proc_start = now_us
	var fm0 = delta * 1000.0
	if prof_on:
		all_frames.append(fm0)
	frame_hist.append(fm0)
	if frame_hist.size() > 240:
		frame_hist.remove_at(0)
	if prof_on and verbose_hitch and fm0 > 40.0:
		var lastp = ""
		for k in last_phase_ms:
			if last_phase_ms[k] > 2.0:
				lastp += " %s=%.1f" % [k, last_phase_ms[k]]
		var top := []
		for k in prec_pairs:
			top.append([prec_pairs[k][1], prec_pairs[k][0], k])
		top.sort()
		top.reverse()
		print("[hitch-precise] total %d calls %.1f ms; top %s" % [prec_calls, prec_us / 1000.0, str(top.slice(0, 4))])
		print("[hitch-create] creates %d total %.1f ms (make %.1f ms)  with_list %d calls %.1f ms" % [create_n, create_us / 1000.0, make_us / 1000.0, withs_n, withs_us / 1000.0])
		print("[hitch-col] grid %.1f ms cells %d  colliders %d hits %d tests %d" % [col_grid_us / 1000.0, col_cells, col_objs, col_hits, col_tests])
		print("[hitch-slow] ", str(slow_events.slice(-4)))
		print("[hitch-proc] previous _process took %.1f ms and ran %d steps; engine gap before this frame %.1f ms" % [last_proc_ms, last_steps_run, last_gap_ms])
		print("[hitch] frame %.0f ms at step %d  last step %.1f ms  last render %.1f ms  phases>2ms:%s" % [fm0, step_count, step_hist[step_hist.size() - 1] if step_hist.size() > 0 else 0.0, render_hist[render_hist.size() - 1] if render_hist.size() > 0 else 0.0, lastp])
	if fm0 > worst_frame_ms:
		worst_frame_ms = fm0
		worst_frame_step = step_count
	tps_clock += delta
	if tps_clock >= 1.0:
		tps_now = tps_count / tps_clock
		tps_count = 0
		tps_clock = 0.0
	if prof_on:
		var fm = delta * 1000.0
		frame_total += 1
		max_frame_ms = maxf(max_frame_ms, fm)
		if fm > 50.0:
			slow_frames += 1
	if quit_requested:
		running = false
		game_ended.emit()
		return
	if debug_fast:
		delta = 1.0 / max(room_speed, 1.0)
	acc += delta
	var step_time = 1.0 / max(room_speed, 1.0)
	var n = 0
	var did = false
	while acc >= step_time and n < 2:
		acc -= step_time
		n += 1
		var st0 = Time.get_ticks_usec()
		step()
		var sms = (Time.get_ticks_usec() - st0) / 1000.0
		if prof_on and verbose_hitch and sms > 8.0:
			var lp = ""
			for k in last_phase_ms:
				if last_phase_ms[k] > 1.0:
					lp += " %s=%.1f" % [k, last_phase_ms[k]]
			print("[bigstep] #%d %.1f ms room=%d next_room=%d%s" % [step_count, sms, int(room), next_room, lp])
		if prof_on:
			all_steps.append(sms)
		step_hist.append(sms)
		if step_hist.size() > 240:
			step_hist.remove_at(0)
		tps_count += 1
		did = true
		if restart_requested:
			break
	if acc > step_time * 2.0:
		acc = step_time
	if did:
		var rt0 = Time.get_ticks_usec()
		_render()
		render_hist.append((Time.get_ticks_usec() - rt0) / 1000.0)
		if render_hist.size() > 240:
			render_hist.remove_at(0)
	proc_end = Time.get_ticks_usec()
	last_proc_ms = (proc_end - proc_start) / 1000.0
	last_steps_run = n


func _canvas_ready():
	return canvas != null


func make_instance(obj, px, py):
	var o = int(obj)
	var script = obj_scripts[o]
	var inst = script.new()
	var info = objects[o]
	inst.object_index = float(o)
	inst.id = float(next_id)
	next_id += 1
	inst.x = px
	inst.y = py
	inst.xstart = px
	inst.ystart = py
	inst.xprevious = px
	inst.yprevious = py
	inst.sprite_index = float(info["sprite"])
	inst.solid = 1.0 if info["solid"] else 0.0
	inst.visible = 1.0 if info["visible"] else 0.0
	inst.depth = float(info["depth"])
	inst.persistent = 1.0 if info["persistent"] else 0.0
	inst.mask_index = float(info["mask"])
	instances.append(inst)
	by_id[inst.id] = inst
	inst_by_obj[o].append(inst)
	grid_extra.append(inst)
	return inst


func f_instance_create(px, py, obj):
	var t0 = Time.get_ticks_usec() if prof_on else 0
	var inst = make_instance(obj, px, py)
	if prof_on:
		make_us += Time.get_ticks_usec() - t0
		create_n += 1
	if evset[int(inst.object_index)].has("ev_create"):
		inst.ev_create()
	if prof_on:
		create_us += Time.get_ticks_usec() - t0
	return inst


func f_instance_destroy(i):
	if i._dead:
		return 0.0
	var es = evset[int(i.object_index)]
	if es.has("ev_destroy"):
		i.ev_destroy()
	_kill(i)
	return 0.0


func _kill(i):
	if i._dead:
		return
	i._dead = true
	by_id.erase(i.id)
	graveyard.append(i)


func _flush_dead():
	if graveyard.is_empty():
		return
	var gy = graveyard
	graveyard = []
	var touched := {}
	for i in gy:
		touched[int(i.object_index)] = true
	instances = instances.filter(func(v): return not v._dead)
	for o in touched:
		inst_by_obj[o] = inst_by_obj[o].filter(func(v): return not v._dead)


func res(v):
	if v is Object:
		return v
	if v == null:
		return null
	var f = float(v)
	if f >= 100000.0:
		return by_id.get(f, null)
	if f >= 0.0:
		var lst = inst_by_obj.get(int(f), null)
		if lst != null:
			for i in lst:
				if not i._dead and i._active:
					return i
			for o in desc[int(f)]:
				for i in inst_by_obj[o]:
					if not i._dead and i._active:
						return i
	return null


func vget(i, n):
	var o = res(i)
	if o == null:
		return 0.0
	var r = o.get(n)
	if r == null:
		r = o._v.get(n, 0.0)
	return r


func vset(i, n, v):
	var o = res(i)
	if o == null:
		return
	if o.get(n) != null:
		o.set(n, v)
	else:
		o._v[n] = v


func vb(i, n):
	var o = res(i)
	if o == null:
		return 0.0
	return o.get(n)


func vsetb(i, n, v):
	var o = res(i)
	if o != null:
		o.set(n, v)


func aget(arr, key):
	if arr is Dictionary:
		return arr.get(key, 0.0)
	return 0.0


func aset(arr, key, v):
	if arr is Dictionary:
		arr[key] = v


func k2(i, j):
	return i * 32000.0 + j


func truth(v):
	if v is bool:
		return v
	if v is float or v is int:
		return v >= 0.5
	return false


func eq(a, b):
	var ta = typeof(a)
	var tb = typeof(b)
	if ta == TYPE_STRING or tb == TYPE_STRING:
		return a == b
	if a is Object:
		a = a.id
	if b is Object:
		b = b.id
	return absf(float(a) - float(b)) < 0.00001


func add(a, b):
	if a is String or b is String:
		return str(a) + str(b) if (a is String and b is String) else (a if a is String else b)
	return a + b


func idiv(a, b):
	return float(int(a / b))


func shl(a, b):
	return float(int(a) << int(b))


func shr(a, b):
	return float(int(a) >> int(b))


func band(a, b):
	return float(int(a) & int(b))


func bor(a, b):
	return float(int(a) | int(b))


func bxor(a, b):
	return float(int(a) ^ int(b))


func bnot(a):
	return float(~int(a))


func current_time():
	return float(Time.get_ticks_msec())


func instance_count():
	return float(instances.size())


func room_first():
	return float(room_order[0])


func room_last():
	return float(room_order[room_order.size() - 1])


func with_list(t, s):
	if prof_on:
		withs_n += 1
		var t0 = Time.get_ticks_usec()
		var r = with_list2(t, s)
		withs_us += Time.get_ticks_usec() - t0
		return r
	return with_list2(t, s)


func with_list2(t, s):
	if t is Object:
		return [t]
	if t == null:
		return []
	var f = float(t)
	if f == -1.0:
		return [s]
	if f == -2.0:
		return [s.other] if s.other != null else []
	if f == -3.0:
		var out := []
		for i in instances:
			if not i._dead and i._active:
				out.append(i)
		return out
	if f == -4.0:
		return []
	if f >= 100000.0:
		var i = by_id.get(f, null)
		return [i] if i != null else []
	var out2 := []
	if f >= 0.0 and int(f) < desc.size():
		for o in desc[int(f)]:
			for i in inst_by_obj[o]:
				if not i._dead and i._active:
					out2.append(i)
	return out2


func target_list(obj):
	return with_list(obj, null)


func f_instance_number(obj):
	var n = 0
	var f = _f(obj)
	if f == -3.0:
		if not any_inactive:
			return float(instances.size() - graveyard.size())
		for i in instances:
			if not i._dead and i._active:
				n += 1
		return float(n)
	if f < 0.0:
		return 0.0
	if f >= 100000.0:
		return 1.0 if by_id.has(f) else 0.0
	for o in desc[int(f)]:
		for i in inst_by_obj[o]:
			if not i._dead and i._active:
				n += 1
	return float(n)


func f_instance_exists(obj):
	if obj is Object:
		return 0.0 if obj._dead else 1.0
	var f = _f(obj)
	if f >= 100000.0:
		return 1.0 if by_id.has(f) else 0.0
	return 1.0 if f_instance_number(f) > 0.0 else 0.0


func f_instance_nearest(px, py, obj):
	var best = null
	var bd = 1e30
	if _f(obj) == -3.0:
		for i in instances:
			if i._dead or not i._active:
				continue
			var dx = i.x - px
			var dy = i.y - py
			var d0 = dx * dx + dy * dy
			if d0 < bd:
				bd = d0
				best = i
		return best if best != null else -4.0
	for i in with_list(obj, null):
		var d = (i.x - px) * (i.x - px) + (i.y - py) * (i.y - py)
		if d < bd:
			bd = d
			best = i
	return best if best != null else -4.0


func f_instance_deactivate_all(s, notme):
	any_inactive = true
	for i in instances:
		if i != s or not truth(notme):
			i._active = false
	if truth(notme):
		s._active = true
	return 0.0


func f_instance_activate_object(obj):
	var f = _f(obj)
	if f == -3.0:
		for i in instances:
			i._active = true
		return 0.0
	if f >= 0.0 and f < 100000.0:
		for o in desc[int(f)]:
			for i in inst_by_obj[o]:
				i._active = true
	return 0.0


func f_instance_deactivate_object(obj):
	any_inactive = true
	var f = _f(obj)
	if f >= 0.0 and f < 100000.0:
		for o in desc[int(f)]:
			for i in inst_by_obj[o]:
				i._active = false
	return 0.0


func f_instance_activate_region(l, t, w, h, inside):
	for i in instances:
		var inside_r = i.x >= l and i.x <= l + w and i.y >= t and i.y <= t + h
		if inside_r == truth(inside):
			i._active = true
	return 0.0


func f_instance_deactivate_region(s, l, t, w, h, inside, notme):
	any_inactive = true
	for i in instances:
		if i == s and truth(notme):
			continue
		var inside_r = i.x >= l and i.x <= l + w and i.y >= t and i.y <= t + h
		if inside_r == truth(inside):
			i._active = false
	return 0.0


func f_instance_activate_all():
	for i in instances:
		i._active = true
	return 0.0


func f_event_inherited(s):
	return 0.0


func f_unknown(name, s, a = null, b = null, c = null, d = null):
	warn_once("unk_" + name, "unimplemented builtin: " + name)
	return 0.0


func f_random(n):
	return rng.randf() * n


func f_floor(v):
	return floorf(v)


func f_round(v):
	return roundf(v)


func f_cos(v):
	return cos(v)


func f_sin(v):
	return sin(v)


func f_ord(s):
	if s.length() == 0:
		return 0.0
	return float(s.unicode_at(0))


func f_string(v):
	if v is String:
		return v
	if v is Object:
		return str(int(v.id))
	var f = float(v)
	if f == floorf(f) and absf(f) < 1e15:
		return str(int(f))
	var t = "%.2f" % f
	if "." in t:
		t = t.rstrip("0").rstrip(".")
	return t


func f_string_length(s):
	return float(str(s).length())


func f_string_char_at(s, idx):
	var i = int(idx)
	if i < 1 or i > s.length():
		return ""
	return s.substr(i - 1, 1)


func f_string_copy(s, idx, cnt):
	var i = int(idx)
	if i < 1:
		i = 1
	return s.substr(i - 1, int(cnt))


func f_point_direction(x1, y1, x2, y2):
	var d = rad_to_deg(atan2(-(y2 - y1), x2 - x1))
	return fposmod(d, 360.0)


func f_lengthdir_x(l, d):
	return cos(deg_to_rad(d)) * l


func f_lengthdir_y(l, d):
	return -sin(deg_to_rad(d)) * l


func f_motion_add(s, d, sp):
	var r = deg_to_rad(d)
	s._hs += cos(r) * sp
	s._vs -= sin(r) * sp
	s._from_hv()
	return 0.0


func f_texture_set_interpolation(v):
	interpolation = truth(v)
	return 0.0


func f_execute_shell(p, a):
	return 0.0


func f_display_mouse_set(px, py):
	return 0.0


func f_show_message(m):
	dialog_open = true
	await dialog.ask(f_string(m), ["OK"], false, "")
	dialog_open = false
	return 0.0


func f_show_question(m):
	var key = f_string(m)
	if auto_answers.has(key):
		return float(auto_answers[key])
	dialog_open = true
	var r = await dialog.ask(key, ["Yes", "No"], false, "")
	dialog_open = false
	return 1.0 if r == 0 else 0.0


func f_get_string(prompt, default):
	dialog_open = true
	var r = await dialog.ask(f_string(prompt), ["OK"], true, f_string(default))
	dialog_open = false
	return str(r)


func f_get_integer(prompt, default):
	var r = await f_get_string(prompt, default)
	return float(r) if r.is_valid_float() else float(default)


func f_game_end():
	quit_requested = true
	return 0.0


func f_game_restart():
	restart_requested = true
	return 0.0


func f_room_goto(r):
	next_room = int(r)
	return 0.0


func f_room_goto_next():
	var idx = room_order.find(float(room))
	if idx >= 0 and idx + 1 < room_order.size():
		next_room = int(room_order[idx + 1])
	return 0.0


func f_screen_save(fname):
	return 0.0


func f_registry_write_real(name, v):
	registry.set_value("reg", name, v)
	registry.save("user://" + game_dir.get_file() + "_registry.cfg")
	return 0.0


func f_registry_read_real(name):
	return float(registry.get_value("reg", name, 0.0))


func f_registry_exists(name):
	return 1.0 if registry.has_section_key("reg", name) else 0.0


func f_keyboard_check(vk):
	var k = int(vk)
	if k == 1:
		return 1.0 if not keys_down.is_empty() else 0.0
	return 1.0 if keys_down.has(k) else 0.0


func f_keyboard_check_pressed(vk):
	var k = int(vk)
	if k == 1:
		return 1.0 if not keys_pressed.is_empty() else 0.0
	return 1.0 if keys_pressed.has(k) else 0.0


func f_keyboard_check_released(vk):
	return 1.0 if keys_released.has(int(vk)) else 0.0


func f_mouse_check_button(b):
	var k = int(b)
	if k == -1:
		return 1.0 if not mouse_down.is_empty() else 0.0
	return 1.0 if mouse_down.has(k) else 0.0


func f_mouse_check_button_pressed(b):
	var k = int(b)
	if k == -1:
		return 1.0 if not mouse_pressed.is_empty() else 0.0
	return 1.0 if mouse_pressed.has(k) else 0.0


func f_mouse_check_button_released(b):
	return 1.0 if mouse_released.has(int(b)) else 0.0


func sprite_dim(spr, what):
	var si = int(spr)
	if si < 0 or si >= sprites.size() or sprites[si] == null:
		return 0.0
	var s = sprites[si]
	match what:
		0:
			return float(s["w"])
		1:
			return float(s["h"])
		2:
			return float(s["ox"])
		3:
			return float(s["oy"])
	return float(s["tex"].size())


func inst_bbox(i, px, py):
	var si = int(i.mask_index)
	if si < 0:
		si = int(i.sprite_index)
	if si < 0 or si >= sprites.size() or sprites[si] == null:
		return [px, py, px, py]
	var s = sprites[si]
	var xs = i.image_xscale
	var ys = i.image_yscale
	var l = px + (s["bl"] - s["ox"]) * xs
	var r = px + (s["br"] + 1 - s["ox"]) * xs
	var t = py + (s["bt"] - s["oy"]) * ys
	var b = py + (s["bb"] + 1 - s["oy"]) * ys
	if l > r:
		var tmp = l
		l = r
		r = tmp
	if t > b:
		var tmp2 = t
		t = b
		b = tmp2
	return [l, t, r, b]


func _sprite_of(i):
	var si = int(i.mask_index)
	if si < 0:
		si = int(i.sprite_index)
	if si < 0 or si >= sprites.size():
		return null
	return sprites[si]


func _frame_of(sp, i):
	var nf = sp["tex"].size()
	var fr = int(floorf(i.image_index)) % nf
	if fr < 0:
		fr += nf
	return fr


func _px_hit(sp, img, i, px, py, gx, gy):
	var lx = int(floorf((gx + 0.5 - px) / i.image_xscale + sp["ox"]))
	var ly = int(floorf((gy + 0.5 - py) / i.image_yscale + sp["oy"]))
	if lx < 0 or ly < 0 or lx >= sp["w"] or ly >= sp["h"]:
		return false
	if not sp["precise"]:
		return true
	return img.get_pixel(lx, ly).a > 0.0


func _precise_overlap(a, sa, ax, ay, ba, b, sb, bx, by, bb):
	if prof_on:
		var t0 = Time.get_ticks_usec()
		var r0 = _precise_overlap2(a, sa, ax, ay, ba, b, sb, bx, by, bb)
		var dt = Time.get_ticks_usec() - t0
		prec_calls += 1
		prec_us += dt
		var key = "%s|%s" % [sa["name"], sb["name"]]
		var e = prec_pairs.get(key, [0, 0])
		e[0] += 1
		e[1] += dt
		prec_pairs[key] = e
		return r0
	return _precise_overlap2(a, sa, ax, ay, ba, b, sb, bx, by, bb)


func _precise_overlap2(a, sa, ax, ay, ba, b, sb, bx, by, bb):
	var l = int(floorf(maxf(ba[0], bb[0])))
	var t = int(floorf(maxf(ba[1], bb[1])))
	var r = int(ceilf(minf(ba[2], bb[2])))
	var bt = int(ceilf(minf(ba[3], bb[3])))
	var w = r - l
	var h = bt - t
	if w <= 0 or h <= 0:
		return false
	var fa = _frame_of(sa, a)
	var fb = _frame_of(sb, b)
	var ia = sa["img"][fa]
	var ib = sb["img"][fb]
	if ia == null or ib == null:
		return true
	if a.image_xscale != 1.0 or a.image_yscale != 1.0 or b.image_xscale != 1.0 or b.image_yscale != 1.0:
		for gx in range(l, r):
			for gy in range(t, bt):
				if _px_hit(sa, ia, a, ax, ay, gx, gy) and _px_hit(sb, ib, b, bx, by, gx, gy):
					return true
		return false
	var oax = int(floorf(ax + 0.5)) - sa["ox"]
	var oay = int(floorf(ay + 0.5)) - sa["oy"]
	var obx = int(floorf(bx + 0.5)) - sb["ox"]
	var oby = int(floorf(by + 0.5)) - sb["oy"]
	if sa["precise"] and sb["precise"]:
		var ta = Image.create(w, h, false, Image.FORMAT_RGBA8)
		ta.blit_rect(ia, Rect2i(l - oax, t - oay, w, h), Vector2i.ZERO)
		var tb = Image.create(w, h, false, Image.FORMAT_RGBA8)
		tb.blit_rect(ib, Rect2i(l - obx, t - oby, w, h), Vector2i.ZERO)
		var out = Image.create(w, h, false, Image.FORMAT_RGBA8)
		out.blit_rect_mask(ta, tb, Rect2i(0, 0, w, h), Vector2i.ZERO)
		return out.get_used_rect().has_area()
	if sa["precise"]:
		var t1 = Image.create(w, h, false, Image.FORMAT_RGBA8)
		t1.blit_rect(ia, Rect2i(l - oax, t - oay, w, h), Vector2i.ZERO)
		return t1.get_used_rect().has_area()
	var t2 = Image.create(w, h, false, Image.FORMAT_RGBA8)
	t2.blit_rect(ib, Rect2i(l - obx, t - oby, w, h), Vector2i.ZERO)
	return t2.get_used_rect().has_area()


func collide_at(a, ax, ay, b):
	var ns = sprites.size()
	var ia = int(a.mask_index)
	if ia < 0:
		ia = int(a.sprite_index)
	if ia < 0 or ia >= ns:
		return false
	var ib = int(b.mask_index)
	if ib < 0:
		ib = int(b.sprite_index)
	if ib < 0 or ib >= ns:
		return false
	var sa = sprites[ia]
	var sb = sprites[ib]
	if sa == null or sb == null:
		return false
	var xs = a.image_xscale
	var ys = a.image_yscale
	var al = ax + (sa["bl"] - sa["ox"]) * xs
	var ar = ax + (sa["br"] + 1 - sa["ox"]) * xs
	var at = ay + (sa["bt"] - sa["oy"]) * ys
	var ab = ay + (sa["bb"] + 1 - sa["oy"]) * ys
	if al > ar:
		var t1 = al
		al = ar
		ar = t1
	if at > ab:
		var t2 = at
		at = ab
		ab = t2
	var bx = b.x
	var by = b.y
	xs = b.image_xscale
	ys = b.image_yscale
	var bl = bx + (sb["bl"] - sb["ox"]) * xs
	var br = bx + (sb["br"] + 1 - sb["ox"]) * xs
	var bt = by + (sb["bt"] - sb["oy"]) * ys
	var bb = by + (sb["bb"] + 1 - sb["oy"]) * ys
	if bl > br:
		var t3 = bl
		bl = br
		br = t3
	if bt > bb:
		var t4 = bt
		bt = bb
		bb = t4
	if al >= br or ar <= bl or at >= bb or ab <= bt:
		return false
	if not sa["precise"] and not sb["precise"]:
		return true
	return _precise_overlap(a, sa, ax, ay, [al, at, ar, ab], b, sb, bx, by, [bl, bt, br, bb])


func point_in(i, px, py):
	var sp = _sprite_of(i)
	if sp == null:
		return false
	var bx = inst_bbox(i, i.x, i.y)
	if px < bx[0] or px >= bx[2] or py < bx[1] or py >= bx[3]:
		return false
	if not sp["precise"]:
		return true
	var img = sp["img"][_frame_of(sp, i)]
	if img == null:
		return true
	return _px_hit(sp, img, i, i.x, i.y, int(floorf(px)), int(floorf(py)))


func f_place_meeting(s, px, py, obj):
	if _sprite_of(s) == null:
		return 0.0
	for o in near_target(_f(obj), inst_bbox(s, px, py)):
		if o == s or o._dead or not o._active:
			continue
		if collide_at(s, px, py, o):
			return 1.0
	return 0.0


func f_position_meeting(px, py, obj):
	for o in near_target(_f(obj), [px, py, px + 1.0, py + 1.0]):
		if o._dead or not o._active:
			continue
		if point_in(o, px, py):
			return 1.0
	return 0.0


func f_distance_to_point(s, px, py):
	var b = inst_bbox(s, s.x, s.y)
	var dx = maxf(maxf(b[0] - px, 0.0), px - b[2] + 1.0)
	var dy = maxf(maxf(b[1] - py, 0.0), py - b[3] + 1.0)
	return sqrt(dx * dx + dy * dy)


func f_distance_to_object(s, obj):
	var b = inst_bbox(s, s.x, s.y)
	var best = 1000000.0
	for o in with_list(obj, s):
		if o == s:
			continue
		var c = inst_bbox(o, o.x, o.y)
		var dx = maxf(maxf(c[0] - b[2] + 1.0, 0.0), b[0] - c[2] + 1.0)
		var dy = maxf(maxf(c[1] - b[3] + 1.0, 0.0), b[1] - c[3] + 1.0)
		var d = sqrt(dx * dx + dy * dy)
		if d < best:
			best = d
	return best


func _enter_room(r, first):
	var tr0 = Time.get_ticks_usec()
	var rd = rooms[r]
	current_room_dict = rd
	if not first:
		for i in instances:
			if not i._dead and evset[int(i.object_index)].has("ev_other_5"):
				i.ev_other_5()
		var keep := []
		for i in instances:
			if i.persistent >= 0.5 and not i._dead:
				keep.append(i)
			else:
				by_id.erase(i.id)
		instances = keep
		for k in inst_by_obj:
			inst_by_obj[k] = []
		for i in instances:
			inst_by_obj[int(i.object_index)].append(i)
		graveyard = []
	room = float(r)
	room_width = float(rd["width"])
	room_height = float(rd["height"])
	room_speed = float(rd["speed"])
	room_caption = rd["caption"]
	room_persistent = 1.0 if rd["persistent"] else 0.0
	background_color = float(rd["clear_color"])
	for k in range(8):
		background_visible[k] = 0.0
		background_index[k] = -1.0
		background_x[k] = 0.0
		background_y[k] = 0.0
		background_hspeed[k] = 0.0
		background_vspeed[k] = 0.0
		background_foreground[k] = 0.0
		view_visible[k] = 0.0
		view_object[k] = -1.0
	var bgs = rd["backgrounds"]
	for k in range(min(8, bgs.size())):
		var b = bgs[k]
		background_visible[k] = 1.0 if b["visible"] else 0.0
		background_foreground[k] = 1.0 if b["foreground"] else 0.0
		background_index[k] = float(b["background"])
		background_x[k] = float(b["x"])
		background_y[k] = float(b["y"])
		background_hspeed[k] = float(b["h_speed"])
		background_vspeed[k] = float(b["v_speed"])
		bg_tile_h[k] = 1 if b["tile_h"] else 0
		bg_tile_v[k] = 1 if b["tile_v"] else 0
		bg_stretch[k] = 1 if b["stretch"] else 0
	enable_views = rd["enable_views"]
	if enable_views:
		var vs = rd["views"]
		for k in range(min(8, vs.size())):
			var v = vs[k]
			view_visible[k] = 1.0 if v["visible"] else 0.0
			view_xview[k] = float(v["view_x"])
			view_yview[k] = float(v["view_y"])
			view_wview[k] = float(v["view_w"])
			view_hview[k] = float(v["view_h"])
			view_xport[k] = float(v["port_x"])
			view_yport[k] = float(v["port_y"])
			view_wport[k] = float(v["port_w"])
			view_hport[k] = float(v["port_h"])
			view_hborder[k] = float(v["h_border"])
			view_vborder[k] = float(v["v_border"])
			view_hspeed[k] = float(v["h_speed"])
			view_vspeed[k] = float(v["v_speed"])
			view_object[k] = float(v["target"])
			view_angle[k] = 0.0
	else:
		view_visible[0] = 1.0
		view_xview[0] = 0.0
		view_yview[0] = 0.0
		view_wview[0] = room_width
		view_hview[0] = room_height
		view_xport[0] = 0.0
		view_yport[0] = 0.0
		view_wport[0] = room_width
		view_hport[0] = room_height
		view_angle[0] = 0.0
	var tr1 = Time.get_ticks_usec()
	tile_buckets = {}
	for t in rd["tiles"]:
		var dk = float(t["depth"])
		if not tile_buckets.has(dk):
			tile_buckets[dk] = []
		tile_buckets[dk].append(t)
	var made := []
	var rid = int(rd["id"])
	var k = 0
	for ins in rd["instances"]:
		var inst = make_instance(ins["object"], float(ins["x"]), float(ins["y"]))
		by_id.erase(inst.id)
		inst.id = float(ins["id"])
		by_id[inst.id] = inst
		if inst.id >= next_id:
			next_id = int(inst.id) + 1
		made.append([inst, k])
		k += 1
	var tr2 = Time.get_ticks_usec()
	for pair in made:
		var inst = pair[0]
		if inst._dead:
			continue
		if evset[int(inst.object_index)].has("ev_create"):
			inst.ev_create()
		var key = "%d_%d" % [rid, pair[1]]
		if data["inst_code"].has(key) and not inst._dead:
			inst.call("ic_%d_%d" % [rid, pair[1]])
	var tr3 = Time.get_ticks_usec()
	if data["room_code"].has(float(rid)):
		script_holder.call("rc_%d" % rid)
	if first:
		for i in instances.duplicate():
			if not i._dead and evset[int(i.object_index)].has("ev_other_2"):
				i.ev_other_2()
	for i in instances.duplicate():
		if not i._dead and evset[int(i.object_index)].has("ev_other_4"):
			i.ev_other_4()
	_flush_dead()
	grid_dirty = true
	if prof_on:
		var tr4 = Time.get_ticks_usec()
		print("[room %s] teardown %.1f ms, make %d inst %.1f ms, create events %.1f ms, start events %.1f ms" % [rd["name"], (tr1 - tr0) / 1000.0, made.size(), (tr2 - tr1) / 1000.0, (tr3 - tr2) / 1000.0, (tr4 - tr3) / 1000.0])


func _snapshot():
	return instances.duplicate()


func _note_slow(dt, i, method):
	slow_events.append([dt, "%s.%s" % [objects[int(i.object_index)]["name"], method], step_count])
	if slow_events.size() > 8:
		slow_events.remove_at(0)


func _run(method):
	for i in instances.duplicate():
		if i._dead or not i._active:
			continue
		if evset[int(i.object_index)].has(method):
			if prof_on:
				var t = Time.get_ticks_usec()
				i.call(method)
				var dt = (Time.get_ticks_usec() - t) / 1000.0
				if dt > 2.0:
					_note_slow(dt, i, method)
			else:
				i.call(method)
	_flush_dead()


func _alarms():
	for i in instances.duplicate():
		if i._dead or not i._active:
			continue
		var al = i.alarm
		if al.max() < 0.0:
			continue
		for k in range(12):
			var v = al[k]
			if v >= 0.0:
				if v > 0.0:
					v -= 1.0
					al[k] = v
				if v <= 0.0:
					al[k] = -1.0
					if evset[int(i.object_index)].has("ev_alarm_%d" % k):
						var ta = Time.get_ticks_usec()
						i.call("ev_alarm_%d" % k)
						if prof_on:
							var dta = (Time.get_ticks_usec() - ta) / 1000.0
							if dta > 2.0:
								_note_slow(dta, i, "ev_alarm_%d" % k)
					if i._dead:
						break
	_flush_dead()


func _timelines():
	var tl_moments = data["timeline_moments"]
	for i in instances.duplicate():
		if i._dead or not i._active or i.timeline_index < 0.0 or i.timeline_running < 0.5:
			continue
		var key = str(int(i.timeline_index))
		if not tl_moments.has(key):
			continue
		var prev = i.timeline_position
		i.timeline_position += i.timeline_speed
		for m in tl_moments[key]:
			if m >= prev and m < i.timeline_position or (prev == 0.0 and m == 0 and i.timeline_position > 0.0 and prev == i.timeline_position - i.timeline_speed and false):
				script_holder_call(i, "tl_%s_%d" % [key, m])
				if i._dead:
					break
	_flush_dead()


func script_holder_call(i, method):
	i.call(method)


func _keyboard():
	var snap = instances.duplicate()
	for kv in keys_down:
		var m = "ev_key_%d" % kv
		for i in snap:
			if not i._dead and i._active and evset[int(i.object_index)].has(m):
				i.call(m)
	if keys_down.is_empty():
		var m0 = "ev_key_0"
		for i in snap:
			if not i._dead and i._active and evset[int(i.object_index)].has(m0):
				i.call(m0)
	for kv in keys_pressed:
		var m2 = "ev_keypress_%d" % kv
		for i in snap:
			if not i._dead and i._active and evset[int(i.object_index)].has(m2):
				i.call(m2)
	for kv in keys_released:
		var m3 = "ev_keyrelease_%d" % kv
		for i in snap:
			if not i._dead and i._active and evset[int(i.object_index)].has(m3):
				i.call(m3)
	_flush_dead()


func _mouse():
	var snap = instances.duplicate()
	for i in snap:
		if i._dead or not i._active:
			continue
		var es = evset[int(i.object_index)]
		if not es.has("_mouse"):
			continue
		var over = false
		var checked = false
		for n in [0, 1, 2, 4, 5, 6, 7, 8, 9]:
			var m = "ev_mouse_%d" % n
			if not es.has(m):
				continue
			var btn = n % 3 + 1
			var fire = false
			if n <= 2:
				fire = mouse_down.has(btn)
			elif n <= 6 and n >= 4:
				fire = mouse_pressed.has(btn)
			else:
				fire = mouse_released.has(btn)
			if not fire:
				continue
			if not checked:
				over = point_in(i, mouse_x, mouse_y)
				checked = true
			if over:
				i.call(m)
		if es.has("ev_mouse_3") and not mouse_down.has(1) and not mouse_down.has(2) and not mouse_down.has(3):
			if not checked:
				over = point_in(i, mouse_x, mouse_y)
				checked = true
			if over:
				i.call("ev_mouse_3")
		for n in [50, 51, 52, 53, 54, 55, 56, 57, 58]:
			var m = "ev_mouse_%d" % n
			if not es.has(m):
				continue
			var btn = (n - 50) % 3 + 1
			var fire = false
			if n <= 52:
				fire = mouse_down.has(btn)
			elif n <= 55:
				fire = mouse_pressed.has(btn)
			else:
				fire = mouse_released.has(btn)
			if fire:
				i.call(m)
		if es.has("ev_mouse_10") or es.has("ev_mouse_11"):
			var now = point_in(i, mouse_x, mouse_y)
			var was = i._v.get("_mouse_over", false)
			if now and not was and es.has("ev_mouse_10"):
				i.call("ev_mouse_10")
			if was and not now and es.has("ev_mouse_11"):
				i.call("ev_mouse_11")
			i._v["_mouse_over"] = now
	_flush_dead()


func _motion():
	for i in instances:
		if i._dead or not i._active:
			continue
		i.xprevious = i.x
		i.yprevious = i.y
		var fr = i.friction
		if fr != 0.0:
			var sp = i._sp
			if sp > 0.0:
				sp -= fr
				if sp < 0.0:
					sp = 0.0
			else:
				sp += fr
				if sp > 0.0:
					sp = 0.0
			i._sp = sp
			i._from_sd()
		var g = i.gravity
		if g != 0.0:
			var r = deg_to_rad(i.gravity_direction)
			i._hs += cos(r) * g
			i._vs -= sin(r) * g
			i._from_hv()
		if i._hs != 0.0 or i._vs != 0.0:
			i.x += i._hs
			i.y += i._vs


func _animate():
	for i in instances.duplicate():
		if i._dead or not i._active:
			continue
		var si = int(i.sprite_index)
		if si < 0 or si >= sprites.size() or sprites[si] == null:
			continue
		var n = sprites[si]["tex"].size()
		if n > 1 or i.image_speed != 0.0:
			var ii = i.image_index + i.image_speed
			if ii >= n or ii < 0.0:
				ii = fposmod(ii, float(n))
				i.image_index = ii
				if evset[int(i.object_index)].has("ev_other_7"):
					i.ev_other_7()
			else:
				i.image_index = ii
	_flush_dead()


func _cells_of(bb):
	return [int(floorf(bb[0] / 128.0)), int(floorf((bb[2] - 0.001) / 128.0)), int(floorf(bb[1] / 128.0)), int(floorf((bb[3] - 0.001) / 128.0))]


func grid_build():
	grid_dirty = false
	ogrid = {}
	sgrid = {}
	grid_extra = []
	var spr = sprites
	var ns = spr.size()
	for i in instances:
		if i._dead:
			continue
		var si = int(i.mask_index)
		if si < 0:
			si = int(i.sprite_index)
		if si < 0 or si >= ns:
			continue
		var sp = spr[si]
		if sp == null:
			continue
		var xs = i.image_xscale
		var ys = i.image_yscale
		var l = i.x + (sp["bl"] - sp["ox"]) * xs
		var r = i.x + (sp["br"] + 1 - sp["ox"]) * xs
		var t = i.y + (sp["bt"] - sp["oy"]) * ys
		var b = i.y + (sp["bb"] + 1 - sp["oy"]) * ys
		if l > r:
			var tmp = l
			l = r
			r = tmp
		if t > b:
			var tmp2 = t
			t = b
			b = tmp2
		var cx0 = int(floorf(l * 0.0078125))
		var cx1 = int(floorf((r - 0.001) * 0.0078125))
		var cy0 = int(floorf(t * 0.0078125))
		var cy1 = int(floorf((b - 0.001) * 0.0078125))
		var oi = int(i.object_index)
		var og = ogrid.get(oi, null)
		if og == null:
			og = {}
			ogrid[oi] = og
		var solid = i.solid >= 0.5
		for cx in range(cx0, cx1 + 1):
			for cy in range(cy0, cy1 + 1):
				var key = cx * 100003 + cy
				var cell = og.get(key, null)
				if cell == null:
					og[key] = [i]
				else:
					cell.append(i)
				if solid:
					var sc = sgrid.get(key, null)
					if sc == null:
						sgrid[key] = [i]
					else:
						sc.append(i)


func _gq(g, bb, out):
	if g == null:
		return
	var c = _cells_of(bb)
	qstamp += 1
	for cx in range(c[0], c[1] + 1):
		for cy in range(c[2], c[3] + 1):
			var cell = g.get(cx * 100003 + cy, null)
			if cell == null:
				continue
			for o in cell:
				if o._qstamp != qstamp:
					o._qstamp = qstamp
					out.append(o)


func near_objs(objs, bb):
	if grid_dirty:
		grid_build()
	var out := []
	for d in objs:
		_gq(ogrid.get(d, null), bb, out)
	for o in grid_extra:
		if not o._dead and objs.has(int(o.object_index)):
			out.append(o)
	return out


func near_solid(bb):
	if grid_dirty:
		grid_build()
	var out := []
	_gq(sgrid, bb, out)
	for o in grid_extra:
		if not o._dead and o.solid >= 0.5:
			out.append(o)
	return out


func near_all(bb):
	if grid_dirty:
		grid_build()
	var out := []
	for d in ogrid:
		_gq(ogrid[d], bb, out)
	for o in grid_extra:
		if not o._dead:
			out.append(o)
	return out


func _f(v):
	if v is Object:
		return v.id
	return float(v)


func near_target(f, bb):
	if f == -3.0:
		return near_all(bb)
	if f >= 100000.0:
		var o = by_id.get(f, null)
		return [o] if o != null else []
	if f < 0.0:
		return []
	return near_objs(desc[int(f)], bb)


func _collisions():
	var snap = instances.duplicate()
	col_tot_n += 1
	col_cells = ogrid.size()
	col_hits = 0
	col_tests = 0
	col_objs = 0
	for i in snap:
		if i._dead or not i._active:
			continue
		var oi = int(i.object_index)
		var cm = colmap[oi]
		if cm.is_empty():
			continue
		if _sprite_of(i) == null:
			continue
		var bb = inst_bbox(i, i.x, i.y)
		col_objs += 1
		for T in cm:
			if i._dead:
				break
			var methods = cm[T]
			for t in near_objs(desc[int(T)], bb):
				if i._dead:
					break
				if t == i or t._dead or not t._active:
					continue
				var mk = oi * 4096 + int(t.object_index)
				var ma = match_memo.get(mk, -2)
				if ma == -2:
					ma = -1
					for a0 in chain_i[int(t.object_index)]:
						if cm.has(a0):
							ma = a0
							break
					match_memo[mk] = ma
				if ma != int(T):
					continue
				col_hits += 1
				col_tests += 1
				if not collide_at(i, i.x, i.y, t):
					continue
				for m in methods:
					if i._dead or t._dead:
						break
					i.other = t
					var solid_hit = t.solid >= 0.5
					if solid_hit:
						i.x = i.xprevious
						i.y = i.yprevious
					var tc = Time.get_ticks_usec()
					i.call(m)
					if prof_on:
						var dtc = (Time.get_ticks_usec() - tc) / 1000.0
						if dtc > 2.0:
							_note_slow(dtc, i, m)
					if solid_hit and not i._dead and not t._dead:
						var ex = i.x
						var ey = i.y
						i.x += i._hs
						i.y += i._vs
						if collide_at(i, i.x, i.y, t):
							i.x = ex
							i.y = ey
	_flush_dead()


func _views():
	for k in range(8):
		if view_visible[k] < 0.5 or view_object[k] < 0.0:
			continue
		var t = res(view_object[k])
		if t == null:
			continue
		var b = inst_bbox(t, t.x, t.y)
		var vx = view_xview[k]
		var vy = view_yview[k]
		var vw = view_wview[k]
		var vh = view_hview[k]
		var hb = minf(view_hborder[k], vw / 2.0)
		var vb2 = minf(view_vborder[k], vh / 2.0)
		var nx = vx
		var ny = vy
		if b[0] < vx + hb:
			nx = b[0] - hb
		if b[2] > vx + vw - hb:
			nx = b[2] - vw + hb
		if b[1] < vy + vb2:
			ny = b[1] - vb2
		if b[3] > vy + vh - vb2:
			ny = b[3] - vh + vb2
		var hs = view_hspeed[k]
		var vs = view_vspeed[k]
		if hs >= 0.0:
			nx = clampf(nx, vx - hs, vx + hs)
		if vs >= 0.0:
			ny = clampf(ny, vy - vs, vy + vs)
		view_xview[k] = clampf(nx, 0.0, maxf(room_width - vw, 0.0))
		view_yview[k] = clampf(ny, 0.0, maxf(room_height - vh, 0.0))


func _backgrounds():
	for k in range(8):
		background_x[k] += background_hspeed[k]
		background_y[k] += background_vspeed[k]


func _update_input():
	keys_pressed = pend_pressed
	keys_released = pend_released
	pend_pressed = {}
	pend_released = {}
	mouse_pressed = pend_mpressed
	mouse_released = pend_mreleased
	pend_mpressed = {}
	pend_mreleased = {}
	if canvas != null:
		var vp = get_viewport().get_mouse_position()
		if debug_mouse != null:
			vp = debug_mouse
		if touch_aim != null:
			vp = touch_aim
		var m = _view_transform(0).affine_inverse() * vp
		mouse_x = m.x
		mouse_y = m.y


func _count_cmds():
	var n = 0
	for k in range(slice_used):
		n += slices[k].cmds.size()
	return n


func prof_report():
	var out = ""
	var steps = max(step_count, 1)
	for k in prof:
		if k == "cmds":
			continue
		if k == "render":
			out += " render=%.2fms" % (prof[k] / 1000.0 / max(prof.get("drawn", 1), 1))
		elif k != "drawn":
			out += " %s=%.2f" % [k, prof[k] / 1000.0 / steps]
	out += " cmds/frame=%d slices=%d inst=%d" % [prof.get("cmds", 0) / max(prof.get("drawn", 1), 1), slice_used, instances.size()]
	out += " fps=%d maxframe=%.0fms slow(>50ms)=%d/%d" % [Engine.get_frames_per_second(), max_frame_ms, slow_frames, frame_total]
	max_frame_ms = 0.0
	slow_frames = 0
	frame_total = 0
	print("[prof ms/step]", out)
	prof = {}
	step_count_prof_reset()


func step_count_prof_reset():
	pass


func _view_transform(k):
	var w = view_wview[k]
	var h = view_hview[k]
	if w <= 0.0 or h <= 0.0:
		return Transform2D()
	var sx = view_wport[k] / w
	var sy = view_hport[k] / h
	var cx = view_xview[k] + w * 0.5
	var cy = view_yview[k] + h * 0.5
	var t = Transform2D()
	t = t.translated(Vector2(-cx, -cy))
	if view_angle[k] != 0.0:
		t = Transform2D(deg_to_rad(view_angle[k]), Vector2.ZERO) * t
	t = Transform2D().scaled(Vector2(sx, sy)) * t
	t = t.translated(Vector2(view_xport[k] + view_wport[k] * 0.5, view_yport[k] + view_hport[k] * 0.5))
	return t


func summary():
	var f = Array(all_frames)
	var st = Array(all_steps)
	f.sort()
	st.sort()
	if f.is_empty() or st.is_empty():
		return
	var over33 = 0
	var over50 = 0
	for v in f:
		if v > 33.4:
			over33 += 1
		if v > 50.0:
			over50 += 1
	var o2 = 0
	for v in st:
		if v > 25.0:
			o2 += 1
	print("[collisions avg/step] grid %.2f ms  scan %.2f ms" % [col_tot_grid / 1000.0 / max(col_tot_n, 1), col_tot_scan / 1000.0 / max(col_tot_n, 1)])
	print("[summary] frames %d  avg %.1f  p50 %.1f  p99 %.1f  max %.1f  >33ms %d  >50ms %d | steps %d avg %.2f p99 %.2f max %.1f  >25ms %d" % [f.size(), _avgv(f), f[int(f.size() * 0.5)], f[int(f.size() * 0.99)], f[f.size() - 1], over33, over50, st.size(), _avgv(st), st[int(st.size() * 0.99)], st[st.size() - 1], o2])


func _avgv(a):
	var t = 0.0
	for v in a:
		t += v
	return t / a.size()


func debug_report():
	if prof_on:
		prof_report()
	var hist := {}
	for i in instances:
		var nm = objects[int(i.object_index)]["name"]
		hist[nm] = hist.get(nm, 0) + 1
	var top := []
	for k in hist:
		top.append([hist[k], k])
	top.sort()
	top.reverse()
	var bike = res(float(_name_to_obj("obj_bike1")))
	var b = ""
	if bike != null:
		b = " bike x=%.1f y=%.1f hs=%.2f vs=%.2f rot=%.1f" % [bike.x, bike.y, bike._hs, bike._vs, bike.get("v_rotate") if bike.get("v_rotate") != null else 0.0]
	print("[step %d] room=%d (%s) inst=%d view=(%.0f,%.0f)%s top=%s G.level=%s" % [step_count, int(room), rooms[int(room)]["name"], instances.size(), view_xview[0], view_yview[0], b, str(top.slice(0, 5)), str(G.get("level", 0))])


func _name_to_obj(n):
	for i in range(objects.size()):
		if objects[i] != null and objects[i]["name"] == n:
			return i
	return -1


func _lap(name, t0):
	if not prof_on:
		return 0
	var t1 = Time.get_ticks_usec()
	prof[name] = prof.get(name, 0) + (t1 - t0)
	last_phase_ms[name] = (t1 - t0) / 1000.0
	return t1


func step():
	step_count += 1
	prec_calls = 0
	prec_us = 0
	prec_pairs = {}
	create_us = 0
	create_n = 0
	make_us = 0
	withs_us = 0
	withs_n = 0
	if debug_report_every > 0 and step_count % debug_report_every == 0:
		debug_report()
	if debug_steps > 0 and step_count >= debug_steps:
		summary()
		get_tree().quit()
	for sp in debug_spawns:
		if sp[0] == step_count:
			var bike = res(float(_name_to_obj("obj_bike1")))
			if bike == null:
				bike = res(float(_name_to_obj("cletch")))
			var oi = _name_to_obj(sp[1])
			if bike != null and oi >= 0:
				var tsp = Time.get_ticks_usec()
				for k in range(sp[2]):
					var ni = f_instance_create(bike.x + 40.0 + rng.randf() * 60.0, bike.y - 20.0 + rng.randf() * 30.0, float(oi))
					ni.direction = rng.randf() * 180.0
					ni.speed = 1.0 + rng.randf() * 9.0
				print("[spawn] %s x%d took %.1f ms" % [sp[1], sp[2], (Time.get_ticks_usec() - tsp) / 1000.0])
	if debug_clicks.has(step_count):
		debug_mouse = debug_clicks[step_count]
		mouse_down[1] = true
		pend_mpressed[1] = true
	if debug_clicks.has(step_count - 2):
		mouse_down.erase(1)
		pend_mreleased[1] = true
	if not debug_hold.is_empty() and step_count == debug_hold_from:
		for k in debug_hold:
			keys_down[k] = true
			pend_pressed[k] = true
	var t0 = Time.get_ticks_usec()
	_update_input()
	grid_dirty = true
	t0 = _lap("input", t0)
	_run("ev_stepbegin")
	t0 = _lap("stepbegin", t0)
	_timelines()
	t0 = _lap("timelines", t0)
	_alarms()
	t0 = _lap("alarms", t0)
	_keyboard()
	t0 = _lap("keyboard", t0)
	_mouse()
	t0 = _lap("mouse", t0)
	_run("ev_step")
	t0 = _lap("step", t0)
	_motion()
	grid_dirty = true
	t0 = _lap("motion", t0)
	_animate()
	t0 = _lap("animate", t0)
	_collisions()
	t0 = _lap("collisions", t0)
	_run("ev_stepend")
	t0 = _lap("stepend", t0)
	effects.step()
	_views()
	_backgrounds()
	t0 = _lap("misc", t0)
	_flush_dead()
	if restart_requested:
		restart_requested = false
		_restart()
		return
	if next_room >= 0:
		var r = next_room
		next_room = -1
		_enter_room(r, false)


func _restart():
	for i in instances:
		i._dead = true
	instances = []
	by_id.clear()
	graveyard = []
	for k in inst_by_obj:
		inst_by_obj[k] = []
	for g in data["globals"]:
		G[g] = 0.0
	for g in data["global_arrays"]:
		G[g] = {}
	score = 0.0
	lives = 0.0
	health = 100.0
	next_id = int(data["last_instance_id"]) + 1
	audio.stop_all()
	effects.clear()
	_enter_room(int(room_order[0]), true)


func _sort_depth(bucket_keys):
	bucket_keys.sort()
	bucket_keys.reverse()


func _begin_slice():
	if slice_used >= slices.size():
		var s = SliceScript.new()
		canvas.add_child(s)
		slices.append(s)
	cur_slice = slices[slice_used]
	slice_used += 1
	cur_slice.cmds.clear()
	cur_slice.visible = true
	cur_slice.texture_filter = CanvasItem.TEXTURE_FILTER_LINEAR if interpolation else CanvasItem.TEXTURE_FILTER_NEAREST
	cur_cmds = cur_slice.cmds
	cur_slice.set_meta("interp", interpolation)


func _cmds():
	if cur_slice == null or cur_slice.get_meta("interp") != interpolation:
		_begin_slice()
		cur_slice.transform = view_cache["t"]
	return cur_cmds


func _render():
	if canvas == null:
		return
	var rt0 = Time.get_ticks_usec()
	slice_used = 0
	cur_slice = null
	var k = 0
	view_cache["t"] = _view_transform(k)
	var vx = view_xview[k]
	var vy = view_yview[k]
	var vw = view_wview[k]
	var vh = view_hview[k]
	_cmds().append([2, Rect2(vx - 4000.0, vy - 4000.0, vw + 8000.0, vh + 8000.0), _bgr_to_color(int(background_color), 1.0, 0), true])
	_draw_backgrounds(false)
	var buckets := {}
	var cull_l = vx - 300.0
	var cull_r = vx + vw + 300.0
	var cull_t = vy - 300.0
	var cull_b = vy + vh + 300.0
	for i in instances:
		if i._dead or not i._active or (i.visible < 0.5):
			continue
		var d = i.depth
		var b = buckets.get(d, null)
		if b == null:
			b = []
			buckets[d] = b
		b.append(i)
	for dk in tile_buckets:
		if not buckets.has(dk):
			buckets[dk] = []
	var keys = buckets.keys()
	keys.sort()
	keys.reverse()
	var cur_draw_inst = null
	for d in keys:
		if tile_buckets.has(d):
			_draw_tiles(tile_buckets[d], cull_l, cull_t, cull_r, cull_b)
		for i in buckets[d]:
			if i._dead:
				continue
			if evset[int(i.object_index)].has("ev_draw"):
				i.ev_draw()
			else:
				var si = int(i.sprite_index)
				if si >= 0 and si < sprites.size() and sprites[si] != null:
					var s = sprites[si]
					var rad = maxf(s["w"] * absf(i.image_xscale), s["h"] * absf(i.image_yscale)) * 1.5 + 8.0
					if i.x + rad < cull_l or i.x - rad > cull_r or i.y + rad < cull_t or i.y - rad > cull_b:
						continue
					draw_sprite_inst(i)
	effects.draw()
	_draw_backgrounds(true)
	for n in range(slice_used, slices.size()):
		slices[n].visible = false
	for n in range(slice_used):
		slices[n].queue_redraw()
	if prof_on:
		prof["render"] = prof.get("render", 0) + (Time.get_ticks_usec() - rt0)
		prof["cmds"] = prof.get("cmds", 0) + _count_cmds()
		prof["drawn"] = prof.get("drawn", 0) + 1
	if debug_shots.has(step_count):
		var path = debug_shots[step_count]
		await RenderingServer.frame_post_draw
		get_viewport().get_texture().get_image().save_png(path)
		print("[shot] ", path)


func _draw_tiles(list, cl, ct, cr, cb):
	var col = _bgr_to_color(16777215, 1.0, 0)
	for t in list:
		var tx = float(t["x"])
		var ty = float(t["y"])
		var tw = float(t["w"])
		var th = float(t["h"])
		if tx + tw < cl or tx > cr or ty + th < ct or ty > cb:
			continue
		var bi = int(t["background"])
		if bi < 0 or bi >= backgrounds.size() or backgrounds[bi] == null or backgrounds[bi]["tex"] == null:
			continue
		_cmds().append([1, backgrounds[bi]["tex"], Rect2(float(t["tile_x"]), float(t["tile_y"]), tw, th), Rect2(tx, ty, tw, th), col])


func draw_sprite_inst(i):
	f_draw_sprite_ext(i.sprite_index, i.image_index, i.x, i.y, i.image_xscale, i.image_yscale, i.image_angle, i.image_blend, i.image_alpha)


func _draw_backgrounds(fg):
	var vx = view_xview[0]
	var vy = view_yview[0]
	var vw = view_wview[0]
	var vh = view_hview[0]
	for k in range(8):
		if background_visible[k] < 0.5 or background_index[k] < 0.0:
			continue
		if (background_foreground[k] >= 0.5) != fg:
			continue
		var bi = int(background_index[k])
		if bi >= backgrounds.size() or backgrounds[bi] == null or backgrounds[bi]["tex"] == null:
			continue
		var b = backgrounds[bi]
		var bw = float(b["w"])
		var bh = float(b["h"])
		var bx = background_x[k]
		var by = background_y[k]
		var x0 = bx
		var y0 = by
		if bg_tile_h[k] == 1:
			x0 = bx + floorf((vx - bx) / bw) * bw
		if bg_tile_v[k] == 1:
			y0 = by + floorf((vy - by) / bh) * bh
		var col = _bgr_to_color(16777215, background_alpha[k], 0)
		var yy = y0
		while true:
			var xx = x0
			while true:
				_cmds().append([1, b["tex"], Rect2(0, 0, bw, bh), Rect2(xx, yy, bw, bh), col])
				xx += bw
				if bg_tile_h[k] != 1 or xx >= vx + vw:
					break
			yy += bh
			if bg_tile_v[k] != 1 or yy >= vy + vh:
				break


func _bgr_to_color(c, a, blend):
	var r = (c & 255) / 255.0
	var g = ((c >> 8) & 255) / 255.0
	var b = ((c >> 16) & 255) / 255.0
	if blend == 1:
		return Color(r * a, g * a, b * a, 0.0)
	return Color(r * a, g * a, b * a, a)


func f_draw_set_color(c):
	draw_color = int(c)
	return 0.0


func f_draw_set_alpha(a):
	draw_alpha = a
	return 0.0


func f_draw_set_blend_mode(m):
	draw_blend = int(m)
	return 0.0


func f_draw_set_font(f):
	draw_font = int(f)
	return 0.0


func f_draw_set_halign(h):
	draw_halign = int(h)
	return 0.0


func f_draw_sprite(spr, sub, px, py):
	return f_draw_sprite_ext(spr, sub, px, py, 1.0, 1.0, 0.0, 16777215.0, 1.0)


func f_draw_sprite_ext(spr, sub, px, py, xs, ys, rot, blend, alpha):
	var si = int(spr)
	if si < 0 or si >= sprites.size() or sprites[si] == null:
		return 0.0
	var s = sprites[si]
	var n = s["tex"].size()
	var fr = int(floorf(sub)) % n
	if fr < 0:
		fr += n
	var tex = s["tex"][fr]
	if tex == null:
		return 0.0
	_cmds().append([0, tex, float(s["ox"]), float(s["oy"]), px, py, xs, ys, -deg_to_rad(rot), _bgr_to_color(int(blend), alpha, draw_blend)])
	return 0.0


func f_draw_rectangle(x1, y1, x2, y2, outline):
	var col = _bgr_to_color(draw_color, draw_alpha, draw_blend)
	var l = minf(x1, x2)
	var t = minf(y1, y2)
	var r = maxf(x1, x2)
	var b = maxf(y1, y2)
	if truth(outline):
		_cmds().append([2, Rect2(l + 0.5, t + 0.5, r - l, b - t), col, false])
	else:
		_cmds().append([2, Rect2(l, t, r - l + 1.0, b - t + 1.0), col, true])
	return 0.0


func f_draw_line(x1, y1, x2, y2):
	_cmds().append([3, Vector2(x1 + 0.5, y1 + 0.5), Vector2(x2 + 0.5, y2 + 0.5), _bgr_to_color(draw_color, draw_alpha, draw_blend), 1.0])
	return 0.0


func f_draw_healthbar(x1, y1, x2, y2, amount, backcol, mincol, maxcol, dir, showback, showborder):
	var a = clampf(amount, 0.0, 100.0)
	var l = minf(x1, x2)
	var t = minf(y1, y2)
	var r = maxf(x1, x2)
	var b = maxf(y1, y2)
	var w = r - l + 1.0
	var h = b - t + 1.0
	if truth(showback):
		_cmds().append([2, Rect2(l, t, w, h), _bgr_to_color(int(backcol), draw_alpha, draw_blend), true])
	var c1 = _bgr_to_color(int(mincol), 1.0, 0)
	var c2 = _bgr_to_color(int(maxcol), 1.0, 0)
	var cc = c1.lerp(c2, a / 100.0)
	cc = Color(cc.r * draw_alpha, cc.g * draw_alpha, cc.b * draw_alpha, 0.0 if draw_blend == 1 else draw_alpha)
	var d = int(dir)
	var rect = Rect2(l, t, w, h)
	if d == 0:
		rect = Rect2(l, t, w * a / 100.0, h)
	elif d == 1:
		rect = Rect2(r + 1.0 - w * a / 100.0, t, w * a / 100.0, h)
	elif d == 2:
		rect = Rect2(l, t, w, h * a / 100.0)
	else:
		rect = Rect2(l, b + 1.0 - h * a / 100.0, w, h * a / 100.0)
	_cmds().append([2, rect, cc, true])
	if truth(showborder):
		_cmds().append([2, Rect2(l + 0.5, t + 0.5, r - l, b - t), _bgr_to_color(0, draw_alpha, draw_blend), false])
	return 0.0


func _text_lines(s):
	return str(s).replace("\\#", "\u0001").replace("#", "\n").replace("\u0001", "#").split("\n")


func _glyph_width(f, line):
	var w = 0.0
	for c in line:
		var code = c.unicode_at(0)
		if code >= 0 and code < 256:
			w += f["glyphs"][code][4]
	return w


func f_draw_text(px, py, s):
	return f_draw_text_transformed(px, py, s, 1.0, 1.0, 0.0)


func f_draw_text_transformed(px, py, s, xs, ys, ang):
	var fi = draw_font
	if fi < 0 or fi >= fonts.size() or fonts[fi] == null:
		fi = 0
		while fi < fonts.size() and fonts[fi] == null:
			fi += 1
	if fi >= fonts.size():
		return 0.0
	var f = fonts[fi]
	if f["tex"] == null:
		return 0.0
	var col = _bgr_to_color(draw_color, draw_alpha, draw_blend)
	var lines = _text_lines(f_string(s))
	var cmds = _cmds()
	var oy = 0.0
	for line in lines:
		var w = _glyph_width(f, line)
		var ox = 0.0
		if draw_halign == 1:
			ox = -w / 2.0
		elif draw_halign == 2:
			ox = -w
		var pen = ox
		for c in line:
			var code = c.unicode_at(0)
			if code < 0 or code >= 256:
				continue
			var g = f["glyphs"][code]
			if g[2] > 0 and g[3] > 0:
				cmds.append([4, f["tex"], Rect2(g[0], g[1], g[2], g[3]), Vector2(pen + g[5], oy), px, py, xs, ys, -deg_to_rad(ang), col])
			pen += g[4]
		oy += f["lh"]
	return 0.0


func f_effect_create_above(kind, px, py, size, col):
	effects.create(int(kind), px, py, int(size), int(col))
	return 0.0


func f_sound_play(i):
	var ts = Time.get_ticks_usec()
	audio.play(int(i), false)
	var dts = (Time.get_ticks_usec() - ts) / 1000.0
	if prof_on and dts > 3.0:
		print("[slow sound] %s %.1f ms" % [sound_info[int(i)]["name"], dts])
	return 0.0


func f_sound_loop(i):
	var ts = Time.get_ticks_usec()
	audio.play(int(i), true)
	var dts = (Time.get_ticks_usec() - ts) / 1000.0
	if prof_on and dts > 3.0:
		print("[slow sound] %s %.1f ms" % [sound_info[int(i)]["name"], dts])
	return 0.0


func f_sound_stop(i):
	audio.stop(int(i))
	return 0.0


func f_sound_stop_all():
	audio.stop_all()
	return 0.0


func f_sound_isplaying(i):
	return 1.0 if audio.is_playing(int(i)) else 0.0


func f_sound_volume(i, v):
	audio.set_volume(int(i), v)
	return 0.0


func f_sound_pan(i, p):
	audio.set_pan(int(i), p)
	return 0.0


func f_sound_global_volume(v):
	audio.set_global_volume(v)
	return 0.0


func f_motion_set(s, d, sp):
	s._dir = fposmod(d, 360.0)
	s._sp = sp
	s._from_sd()
	return 0.0


func _solid_free(s, px, py):
	var sp = _sprite_of(s)
	if sp == null:
		return true
	for o in near_solid(inst_bbox(s, px, py)):
		if o == s or o._dead or not o._active:
			continue
		if collide_at(s, px, py, o):
			return false
	return true


func f_place_free(s, px, py):
	return 1.0 if _solid_free(s, px, py) else 0.0


func f_place_empty(s, px, py):
	var sp = _sprite_of(s)
	if sp == null:
		return 1.0
	for o in near_all(inst_bbox(s, px, py)):
		if o == s or o._dead or not o._active:
			continue
		if collide_at(s, px, py, o):
			return 0.0
	return 1.0


func f_instance_position(px, py, obj):
	for o in near_target(_f(obj), [px, py, px + 1.0, py + 1.0]):
		if o._dead or not o._active:
			continue
		if point_in(o, px, py):
			return o
	return -4.0


func f_instance_place(s, px, py, obj):
	if _sprite_of(s) == null:
		return -4.0
	for o in near_target(_f(obj), inst_bbox(s, px, py)):
		if o == s or o._dead or not o._active:
			continue
		if collide_at(s, px, py, o):
			return o
	return -4.0


func f_move_contact(s, d):
	return f_move_contact_solid(s, d, -1.0)


func f_move_contact_solid(s, d, maxd):
	var r = deg_to_rad(d)
	var dx = cos(r)
	var dy = -sin(r)
	var lim = 1000.0 if maxd <= 0.0 else maxd
	var dist = 0.0
	if not _solid_free(s, s.x, s.y):
		return 0.0
	while dist < lim and _solid_free(s, s.x + dx, s.y + dy):
		s.x += dx
		s.y += dy
		dist += 1.0
	return 0.0


func f_move_contact_all(s, d, maxd):
	var r = deg_to_rad(d)
	var dx = cos(r)
	var dy = -sin(r)
	var lim = 1000.0 if maxd <= 0.0 else maxd
	var dist = 0.0
	while dist < lim and f_place_empty(s, s.x + dx, s.y + dy) > 0.5:
		s.x += dx
		s.y += dy
		dist += 1.0
	return 0.0


func f_move_towards_point(s, px, py, sp):
	var d = f_point_direction(s.x, s.y, px, py)
	return f_motion_set(s, d, sp)


func f_move_random(s, sh, sv):
	s.x = rng.randf() * room_width
	s.y = rng.randf() * room_height
	return 0.0


func f_move_wrap(s, hor, vert, margin):
	if hor > 0.5:
		if s.x < -margin:
			s.x += room_width + 2.0 * margin
		elif s.x > room_width + margin:
			s.x -= room_width + 2.0 * margin
	if vert > 0.5:
		if s.y < -margin:
			s.y += room_height + 2.0 * margin
		elif s.y > room_height + margin:
			s.y -= room_height + 2.0 * margin
	return 0.0


func f_move_bounce_solid(s, adv):
	var blockedx = not _solid_free(s, s.x + s._hs, s.y)
	var blockedy = not _solid_free(s, s.x, s.y + s._vs)
	if blockedx:
		s._hs = -s._hs
	if blockedy:
		s._vs = -s._vs
	if not blockedx and not blockedy and not _solid_free(s, s.x + s._hs, s.y + s._vs):
		s._hs = -s._hs
		s._vs = -s._vs
	s._from_hv()
	return 0.0


func f_move_bounce_all(s, adv):
	return f_move_bounce_solid(s, adv)


func f_action_move(s, dirs, sp, relative):
	var table = [135.0, 90.0, 45.0, 180.0, -1.0, 0.0, 225.0, 270.0, 315.0]
	var opts := []
	for k in range(min(9, dirs.length())):
		if dirs[k] == "1":
			opts.append(table[k])
	if opts.is_empty():
		return 0.0
	var d = opts[rng.randi() % opts.size()]
	if d < 0.0:
		f_motion_set(s, s._dir, 0.0)
		return 0.0
	if relative > 0.5:
		return f_motion_add(s, d, sp)
	return f_motion_set(s, d, sp)


func f_action_create_object_motion(obj, px, py, sp, d):
	var ni = f_instance_create(px, py, obj)
	f_motion_set(ni, d, sp)
	return 0.0


func f_action_create_object_random(o1, o2, o3, o4, px, py):
	var l = [o1, o2, o3, o4].filter(func(v): return v >= 0.0)
	if l.is_empty():
		return 0.0
	f_instance_create(px, py, l[rng.randi() % l.size()])
	return 0.0


func f_action_kill_position(px, py):
	for o in instances.duplicate():
		if not o._dead and point_in(o, px, py):
			f_instance_destroy(o)
	return 0.0


func f_event_perform(s, typ, num):
	var t = int(typ)
	var n = int(num)
	var m = ""
	match t:
		0:
			m = "ev_create"
		1:
			m = "ev_destroy"
		2:
			m = "ev_alarm_%d" % n
		3:
			m = ["ev_step", "ev_stepbegin", "ev_stepend"][clampi(n, 0, 2)]
		4:
			m = "ev_col_%d" % n
		5:
			m = "ev_key_%d" % n
		6:
			m = "ev_mouse_%d" % n
		7:
			m = "ev_other_%d" % n
		8:
			m = "ev_draw"
		9:
			m = "ev_keypress_%d" % n
		10:
			m = "ev_keyrelease_%d" % n
	if m != "" and evset[int(s.object_index)].has(m):
		s.call(m)
	return 0.0


func f_instance_change(s, obj, perf):
	var ni = make_instance(obj, s.x, s.y)
	by_id.erase(ni.id)
	ni.id = s.id
	by_id[ni.id] = ni
	ni.xprevious = s.xprevious
	ni.yprevious = s.yprevious
	ni.hspeed = s.hspeed
	ni.vspeed = s.vspeed
	ni.depth = s.depth
	_kill(s)
	if evset[int(ni.object_index)].has("ev_create") and perf > 0.5:
		ni.ev_create()
	return 0.0


func f_room_goto_previous():
	var idx = room_order.find(float(room))
	if idx > 0:
		next_room = int(room_order[idx - 1])
	return 0.0


func f_room_restart():
	next_room = int(room)
	return 0.0


func f_draw_set_valign(v):
	draw_valign = int(v)
	return 0.0


func f_draw_line_color(x1, y1, x2, y2, c1, c2):
	var a = _bgr_to_color(int(c1), draw_alpha, draw_blend)
	var b = _bgr_to_color(int(c2), draw_alpha, draw_blend)
	_cmds().append([5, Vector2(x1 + 0.5, y1 + 0.5), Vector2(x2 + 0.5, y2 + 0.5), a, b])
	return 0.0


func f_draw_circle(px, py, r, outline):
	var col = _bgr_to_color(draw_color, draw_alpha, draw_blend)
	_cmds().append([6, Vector2(px, py), r, col, not truth(outline)])
	return 0.0


func f_draw_point(px, py):
	_cmds().append([2, Rect2(px, py, 1, 1), _bgr_to_color(draw_color, draw_alpha, draw_blend), true])
	return 0.0


func f_draw_background(bg, px, py):
	var bi = int(bg)
	if bi < 0 or bi >= backgrounds.size() or backgrounds[bi] == null or backgrounds[bi]["tex"] == null:
		return 0.0
	var b = backgrounds[bi]
	_cmds().append([1, b["tex"], Rect2(0, 0, b["w"], b["h"]), Rect2(px, py, b["w"], b["h"]), _bgr_to_color(16777215, draw_alpha, draw_blend)])
	return 0.0
