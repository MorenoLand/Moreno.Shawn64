extends Node2D

var cmds := []


func _init():
	var m = CanvasItemMaterial.new()
	m.blend_mode = CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA
	material = m


func _draw():
	var tinted = false
	for c in cmds:
		match c[0]:
			0:
				draw_set_transform(Vector2(c[4], c[5]), c[8], Vector2(c[6], c[7]))
				draw_texture(c[1], Vector2(-c[2], -c[3]), c[9])
				tinted = true
			1:
				if tinted:
					draw_set_transform(Vector2.ZERO, 0.0, Vector2.ONE)
					tinted = false
				draw_texture_rect_region(c[1], c[3], c[2], c[4])
			2:
				if tinted:
					draw_set_transform(Vector2.ZERO, 0.0, Vector2.ONE)
					tinted = false
				if c[3]:
					draw_rect(c[1], c[2], true)
				else:
					draw_rect(c[1], c[2], false, 1.0)
			3:
				if tinted:
					draw_set_transform(Vector2.ZERO, 0.0, Vector2.ONE)
					tinted = false
				draw_line(c[1], c[2], c[3], c[4])
			5:
				if tinted:
					draw_set_transform(Vector2.ZERO, 0.0, Vector2.ONE)
					tinted = false
				draw_polyline_colors(PackedVector2Array([c[1], c[2]]), PackedColorArray([c[3], c[4]]), 1.0)
			6:
				if tinted:
					draw_set_transform(Vector2.ZERO, 0.0, Vector2.ONE)
					tinted = false
				if c[4]:
					draw_circle(c[1], c[2], c[3])
				else:
					draw_arc(c[1], c[2], 0.0, TAU, 48, c[3], 1.0)
			4:
				draw_set_transform(Vector2(c[4], c[5]), c[8], Vector2(c[6], c[7]))
				draw_texture_rect_region(c[1], Rect2(c[3], c[2].size), c[2], c[9])
				tinted = true
	if tinted:
		draw_set_transform(Vector2.ZERO, 0.0, Vector2.ONE)
