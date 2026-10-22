extends "res://games/mini_golf_pro/scripts.gd"
var v_arrowup = 0.0
var v_mouseonme = 0.0
func ev_create():
	v_mouseonme = 1.0
func ev_mouse_11():
	v_mouseonme = 0.0
func ev_mouse_10():
	v_mouseonme = 1.0
func ev_draw():
	if ((absf(v_mouseonme - 0.0) < 0.00001)):
		(GM.f_draw_sprite(v_arrowup, 1.0, x, y))
	else:
		(GM.f_draw_sprite_ext(v_arrowup, 1.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.5))
