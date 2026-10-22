extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	GM.room_speed = 15.0
	alarm[int(0.0)] = 70.0
func ev_destroy():
	GM.room_speed = 40.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	x = GM.vb(0.0, "x")
	y = GM.vb(0.0, "y")
	(GM.f_instance_create((GM.view_xview[0] + (GM.f_random(800.0))), (GM.view_yview[0] + (GM.f_random(600.0))), 244.0))
func ev_draw():
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle((GM.view_xview[0] - 20.0), (GM.view_yview[0] - 20.0), (GM.view_xview[0] + 820.0), (GM.view_yview[0] + 80.0), 0.0))
	(GM.f_draw_rectangle((GM.view_xview[0] - 20.0), (GM.view_yview[0] + 620.0), (GM.view_xview[0] + 820.0), (GM.view_yview[0] + 520.0), 0.0))
