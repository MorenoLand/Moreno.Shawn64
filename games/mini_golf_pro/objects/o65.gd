extends "res://games/mini_golf_pro/scripts.gd"
func ev_alarm_0():
	(GM.f_sound_stop(7.0))
func ev_col_0():
	if not ((((GM.f_sound_isplaying(7.0)))) >= 0.5):
		(GM.f_sound_loop(7.0))
	alarm[int(0.0)] = 2.0
func ev_draw():
	(GM.f_draw_sprite_ext(56.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.7))
