extends Node2D

var stretched := true
var overlay = null
var touch = null
var launcher = null


func _ready():
	GM.canvas = self
	get_window().content_scale_aspect = Window.CONTENT_SCALE_ASPECT_IGNORE
	var games = JSON.parse_string(FileAccess.get_file_as_string("res://games/index.json"))
	var slug = ""
	for a in OS.get_cmdline_user_args():
		if a.begins_with("--game="):
			slug = a.substr(7)
	if slug == "" and OS.has_feature("web"):
		slug = str(JavaScriptBridge.eval("new URLSearchParams(window.location.search).get('game') || ''"))
	if slug == "" and games.size() == 1:
		slug = games[0]["slug"]
	if slug == "":
		_show_launcher(games)
	else:
		_start_game(slug)


func _logo_texture():
	var img = Image.new()
	if img.load_png_from_buffer(FileAccess.get_file_as_bytes("res://gm/splash.png")) == OK:
		return ImageTexture.create_from_image(img)
	return null


func _label(text, size, color, parent):
	var l = Label.new()
	l.text = text
	l.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	l.add_theme_font_size_override("font_size", size)
	l.add_theme_color_override("font_color", color)
	parent.add_child(l)
	return l


func _show_launcher(games):
	get_window().content_scale_size = Vector2i(800, 600)
	launcher = CanvasLayer.new()
	launcher.layer = 50
	add_child(launcher)
	var bg = ColorRect.new()
	bg.color = Color.BLACK
	bg.set_anchors_preset(Control.PRESET_FULL_RECT)
	launcher.add_child(bg)
	var center = CenterContainer.new()
	center.set_anchors_preset(Control.PRESET_FULL_RECT)
	launcher.add_child(center)
	var intro = VBoxContainer.new()
	intro.add_theme_constant_override("separation", 10)
	intro.modulate.a = 0.0
	center.add_child(intro)
	var logo = TextureRect.new()
	logo.texture = _logo_texture()
	logo.custom_minimum_size = Vector2(560, 420)
	logo.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	logo.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	intro.add_child(logo)
	_label("Games created by Shawn Noel", 28, Color(0.55, 0.75, 1.0), intro)
	_label("S64 Games  -  Shawn64's Creations", 18, Color(0.4, 0.55, 0.8), intro)
	var menu = VBoxContainer.new()
	menu.add_theme_constant_override("separation", 12)
	menu.modulate.a = 0.0
	menu.visible = false
	center.add_child(menu)
	var small = TextureRect.new()
	small.texture = _logo_texture()
	small.custom_minimum_size = Vector2(300, 190)
	small.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	small.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	menu.add_child(small)
	_label("Games by Shawn Noel", 22, Color(0.55, 0.75, 1.0), menu)
	for g in games:
		var b = Button.new()
		b.text = "%s
%s" % [g["title"], g.get("credit", "S64 Games")]
		b.custom_minimum_size = Vector2(440, 62)
		b.add_theme_font_size_override("font_size", 20)
		var slug = g["slug"]
		b.pressed.connect(func(): _launch(slug))
		menu.add_child(b)
	_label("In memory of Shawn Noel", 16, Color(0.4, 0.55, 0.8), menu)
	var state = {"done": false}
	var show_menu = func():
		if state["done"]:
			return
		state["done"] = true
		var t2 = create_tween()
		t2.tween_property(intro, "modulate:a", 0.0, 0.4)
		t2.tween_callback(func():
			intro.visible = false
			menu.visible = true)
		t2.tween_property(menu, "modulate:a", 1.0, 0.5)
	var t = create_tween()
	t.tween_property(intro, "modulate:a", 1.0, 0.9)
	t.tween_interval(2.0)
	t.tween_callback(show_menu)
	launcher.set_meta("skip", show_menu)


func _launch(slug):
	launcher.queue_free()
	launcher = null
	_start_game(slug)


func _start_game(slug):
	GM.load_game("res://games/" + slug)
	var size = GM.data.get("size", [800, 600])
	get_window().content_scale_size = Vector2i(int(size[0]), int(size[1]))
	get_window().title = GM.data.get("title", slug)
	overlay = preload("res://gm/gm_debug.gd").new()
	add_child(overlay)
	touch = preload("res://gm/gm_touch.gd").new()
	add_child(touch)
	touch.configure(GM.data.get("touch", []).map(func(b): return {"label": b["label"], "rect": Rect2(b["x"], b["y"], b["w"], b["h"]), "vk": b.get("vk", []), "mouse": b.get("mouse", 0), "down": false}))
	for a in OS.get_cmdline_user_args():
		if a == "--fast":
			GM.debug_fast = true
		elif a.begins_with("--hold="):
			for k in a.substr(7).split(","):
				GM.debug_hold.append(int(k))
		elif a == "--novsync":
			DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		elif a == "--verbose":
			GM.verbose_hitch = true
		elif a == "--prof":
			GM.prof_on = true
		elif a.begins_with("--report="):
			GM.debug_report_every = int(a.substr(9))
		elif a.begins_with("--steps="):
			GM.debug_steps = int(a.substr(8))
		elif a.begins_with("--spawn="):
			var sp = a.substr(8).split("@")
			GM.debug_spawns.append([int(sp[0]), sp[1], int(sp[2])])
		elif a.begins_with("--click="):
			var cp = a.substr(8).split("@")
			var xy = cp[1].split(",")
			GM.debug_clicks[int(cp[0])] = Vector2(float(xy[0]), float(xy[1]))
		elif a.begins_with("--shot="):
			var parts = a.substr(7).split("@")
			GM.debug_shots[int(parts[0])] = parts[1]
		elif a.begins_with("--holdfrom="):
			GM.debug_hold_from = int(a.substr(11))
	if OS.get_cmdline_user_args().has("--overlay"):
		overlay.toggle()
	if OS.get_cmdline_user_args().has("--touch") or DisplayServer.is_touchscreen_available():
		touch.show_ui()
	GM.game_ended.connect(_on_game_end)
	GM.start()


func _input(event):
	if launcher != null and launcher.has_meta("skip"):
		if (event is InputEventKey and event.pressed) or (event is InputEventMouseButton and event.pressed) or (event is InputEventScreenTouch and event.pressed):
			launcher.get_meta("skip").call()
	if event is InputEventKey and event.pressed and not event.echo and overlay != null and event.keycode == KEY_F1:
		overlay.toggle()
		get_viewport().set_input_as_handled()
		return
	if event is InputEventKey and event.pressed and not event.echo and event.keycode == KEY_F2:
		stretched = not stretched
		get_window().content_scale_aspect = Window.CONTENT_SCALE_ASPECT_IGNORE if stretched else Window.CONTENT_SCALE_ASPECT_KEEP
		get_viewport().set_input_as_handled()


func _on_game_end():
	if OS.has_feature("web"):
		JavaScriptBridge.eval("window.location.search = ''")
	else:
		get_tree().quit()
