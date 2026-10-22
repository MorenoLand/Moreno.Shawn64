extends CanvasLayer

var panel: Control
var shown := false
var touches := {}
var aim_id := -1
var buttons := []
var forced := false


func _ready():
	layer = 80
	visible = false
	panel = Control.new()
	panel.set_anchors_preset(Control.PRESET_FULL_RECT)
	panel.mouse_filter = Control.MOUSE_FILTER_IGNORE
	panel.draw.connect(_paint)
	add_child(panel)
	GM.touch_ui = self


func configure(defs):
	buttons = defs
	panel.queue_redraw()


func show_ui():
	if not shown:
		shown = true
		visible = true
		panel.queue_redraw()


func _hit(pos):
	for b in buttons:
		if b["rect"].has_point(pos):
			return b
	return null


func _set_button(b, down):
	if b["down"] == down:
		return
	b["down"] = down
	if b.has("vk"):
		for k in b["vk"]:
			GM.press_vk(k, down)
	if b.has("mouse"):
		GM.press_mouse(b["mouse"], down)
	panel.queue_redraw()


func _input(event):
	if GM.dialog_open:
		return
	if event is InputEventScreenTouch:
		show_ui()
		if event.pressed:
			var b = _hit(event.position)
			if b != null:
				touches[event.index] = b
				_set_button(b, true)
			else:
				if aim_id < 0:
					aim_id = event.index
					GM.touch_aim = event.position
					GM.press_mouse(1, true)
		else:
			if touches.has(event.index):
				_set_button(touches[event.index], false)
				touches.erase(event.index)
			elif event.index == aim_id:
				aim_id = -1
				GM.press_mouse(1, false)
		get_viewport().set_input_as_handled()
	elif event is InputEventScreenDrag:
		if event.index == aim_id:
			GM.touch_aim = event.position
		elif touches.has(event.index):
			var b2 = _hit(event.position)
			if b2 != touches[event.index]:
				_set_button(touches[event.index], false)
				if b2 != null:
					touches[event.index] = b2
					_set_button(b2, true)
				else:
					touches.erase(event.index)
		get_viewport().set_input_as_handled()


func _paint():
	if not shown:
		return
	var font = ThemeDB.fallback_font
	for b in buttons:
		var c = Color(1, 1, 1, 0.28) if not b["down"] else Color(1, 1, 1, 0.55)
		panel.draw_rect(b["rect"], c, true)
		panel.draw_rect(b["rect"], Color(1, 1, 1, 0.7), false, 2.0)
		var sz = font.get_string_size(b["label"], HORIZONTAL_ALIGNMENT_LEFT, -1, 22)
		panel.draw_string(font, b["rect"].position + (b["rect"].size - sz) * 0.5 + Vector2(0, 8), b["label"], HORIZONTAL_ALIGNMENT_LEFT, -1, 22, Color(0, 0, 0, 0.85))
