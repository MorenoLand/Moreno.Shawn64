extends "res://games/mini_golf_pro/objects/o170.gd"
func ev_draw():
	if ((absf(v_mouseonme - 0.0) < 0.00001)):
		(GM.f_draw_sprite(125.0, 0.0, x, y))
	else:
		(GM.f_draw_sprite_ext(125.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.5))
