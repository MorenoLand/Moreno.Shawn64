extends "res://games/holiday_hunting/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	direction = (GM.f_random(360.0))
	speed = (GM.f_random((GM.mouse_y / 20.0)))
	alarm[int(0.0)] = (10.0 + (GM.f_random(25.0)))
	gravity_direction = 270.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if ((vspeed > 6.0)):
		vspeed = 6.0
func ev_col_28():
	if ((absf(v_image_scale - 0.4) < 0.00001)):
		(GM.f_instance_destroy(self))
func ev_col_13():
	if ((absf(v_image_scale - 0.7) < 0.00001)):
		(GM.f_instance_destroy(self))
func ev_col_11():
	if ((absf(v_image_scale - 1.0) < 0.00001)):
		(GM.f_instance_destroy(self))
