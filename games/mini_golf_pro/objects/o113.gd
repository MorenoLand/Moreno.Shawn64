extends "res://games/mini_golf_pro/scripts.gd"
var v_implayer = 0.0
var v_wee = 0.0
var v_wee2 = 0.0
var v_yyy = 0.0
func ev_create():
	v_yyy = y
func ev_alarm_0():
	v_wee2 = (GM.f_instance_create(x, y, 115.0))
	GM.vset(v_wee2, "v_wee", v_wee)
	GM.vset(v_wee2, "v_implayer", v_implayer)
	(GM.f_instance_destroy(self))
func ev_step():
	if ((y < GM.add(v_yyy, 15.0))):
		y = y + 2.0
	else:
		if ((absf(alarm[int(0.0)] - (-1.0)) < 0.00001)):
			(GM.f_sound_play(12.0))
			alarm[int(0.0)] = 1.0
func ev_draw():
	(GM.f_draw_set_color(41984.0))
	if ((absf(v_implayer - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player1ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 2.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player2ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 3.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player3ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 4.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player4ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 5.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player5ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(61.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
