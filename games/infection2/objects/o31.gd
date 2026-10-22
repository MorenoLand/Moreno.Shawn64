extends "res://games/infection2/scripts.gd"
var v_alpha = 0.0
func ev_create():
	alarm[int(0.0)] = 5.0
	v_alpha = 1.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	v_alpha = v_alpha - 0.2
func ev_draw():
	(GM.f_draw_sprite_ext(29.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, v_alpha))
