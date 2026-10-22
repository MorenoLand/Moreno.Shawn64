extends CanvasLayer

signal answered(value)

var box: PanelContainer
var label: Label
var buttons: HBoxContainer
var edit: LineEdit
var open := false
var kind := ""


func _ready():
	layer = 90
	visible = false
	var dim = ColorRect.new()
	dim.color = Color(0, 0, 0, 0.6)
	dim.set_anchors_preset(Control.PRESET_FULL_RECT)
	dim.mouse_filter = Control.MOUSE_FILTER_STOP
	add_child(dim)
	var center = CenterContainer.new()
	center.set_anchors_preset(Control.PRESET_FULL_RECT)
	add_child(center)
	box = PanelContainer.new()
	box.custom_minimum_size = Vector2(420, 0)
	center.add_child(box)
	var pad = MarginContainer.new()
	for side in ["left", "right", "top", "bottom"]:
		pad.add_theme_constant_override("margin_" + side, 18)
	box.add_child(pad)
	var col = VBoxContainer.new()
	col.add_theme_constant_override("separation", 14)
	pad.add_child(col)
	label = Label.new()
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.add_theme_font_size_override("font_size", 20)
	col.add_child(label)
	edit = LineEdit.new()
	edit.max_length = 24
	edit.add_theme_font_size_override("font_size", 20)
	edit.text_submitted.connect(func(t): _finish(t))
	col.add_child(edit)
	buttons = HBoxContainer.new()
	buttons.alignment = BoxContainer.ALIGNMENT_CENTER
	buttons.add_theme_constant_override("separation", 20)
	col.add_child(buttons)


func _button(text, value):
	var b = Button.new()
	b.text = text
	b.custom_minimum_size = Vector2(120, 48)
	b.add_theme_font_size_override("font_size", 20)
	b.pressed.connect(func(): _finish(value))
	buttons.add_child(b)
	return b


func _clear():
	for c in buttons.get_children():
		c.queue_free()


func ask(text, labels, text_input, default_text):
	kind = "text" if text_input else "choice"
	label.text = text
	_clear()
	edit.visible = text_input
	edit.text = default_text
	for k in range(labels.size()):
		var b = _button(labels[k], k if not text_input else null)
		if text_input:
			b.pressed.disconnect(b.pressed.get_connections()[0]["callable"])
			b.pressed.connect(func(): _finish(edit.text))
	open = true
	visible = true
	if text_input:
		edit.grab_focus()
	var result = await answered
	open = false
	visible = false
	return result


func _finish(v):
	if open:
		answered.emit(v)


func _unhandled_input(event):
	if not open:
		return
	if event is InputEventKey and event.pressed and not event.echo:
		if kind == "choice":
			if event.keycode == KEY_Y or event.keycode == KEY_ENTER or event.keycode == KEY_KP_ENTER:
				_finish(0)
			elif event.keycode == KEY_N or event.keycode == KEY_ESCAPE:
				_finish(1)
		elif event.keycode == KEY_ESCAPE:
			_finish("")
	get_viewport().set_input_as_handled()
