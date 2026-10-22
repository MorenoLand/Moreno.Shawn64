extends "res://games/mini_golf_pro/scripts.gd"
var v_fullscreen = 0.0
var v_imon = 0.0
func ev_create():
	v_imon = 1.0
func ev_mouse_4():
	(GM.f_sound_play(37.0))
	if ((absf(v_imon - 0.0) < 0.00001)):
		GM.vset(273.0, "v_imon", 0.0)
		v_imon = 1.0
func ev_draw():
	if ((absf(v_imon - 1.0) < 0.00001)):
		(GM.f_draw_sprite(v_fullscreen, 1.0, x, y))
	else:
		(GM.f_draw_sprite(v_fullscreen, 0.0, x, y))
