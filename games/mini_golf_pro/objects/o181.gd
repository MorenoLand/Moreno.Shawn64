extends "res://games/mini_golf_pro/scripts.gd"
var v_turn = 0.0
func ev_create():
	v_turn = 0.0
	alarm[int(0.0)] = (1.0 + (GM.f_random(1.0)))
func ev_alarm_0():
	if not ((((GM.f_sound_isplaying(24.0)))) >= 0.5):
		(GM.f_sound_loop(24.0))
func ev_step():
	v_turn = v_turn - 5.0
func ev_draw():
	(GM.f_draw_sprite_ext(131.0, 0.0, x, y, 1.0, 1.0, v_turn, 16777215.0, 1.0))
