extends "res://games/jetzfusion/objects/o70.gd"
var v_kickass = ""
func ev_create():
	v_mypower = 5.0
	v_kickass = "Orbit City"
	if (((absf(sprite_index - 73.0) < 0.00001))):
		alarm[int(0.0)] = 1.0
func ev_draw():
	(GM.f_draw_sprite(318.0, (-1.0), (x + 0.0), (y + 0.0)))
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 1.0, 0.0))
	(GM.f_draw_set_color(16711680.0))
	(GM.f_draw_text((x + (sprite_width / 2.0)), (y + 10.0), ("" + (GM.f_string(v_kickass)))))
