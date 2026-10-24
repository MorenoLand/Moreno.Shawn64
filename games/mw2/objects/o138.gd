extends "res://games/mw2/scripts.gd"
var v_mouse_continuous = 0.0
func ev_create():
	(GM.f_sound_play(34.0))
	v_mouse_continuous = 1.0
	alarm[int(0.0)] = 200.0
func ev_alarm_0():
	v_mouse_continuous = 0.0
	(GM.f_instance_change(self, 66.0, 0.0))
func ev_step():
	depth = (-10.0)
	x = GM.mouse_x
	y = GM.mouse_y
