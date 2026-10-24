extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(152.0, (-1.0), (GM.view_xview[int(0.0)] + 227.0), (GM.view_yview[int(0.0)] + 132.0)))
