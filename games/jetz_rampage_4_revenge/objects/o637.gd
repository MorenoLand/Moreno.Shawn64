extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	image_single = (GM.f_random(3.0))
	direction = (GM.f_random(360.0))
	speed = (GM.f_random(10.0))
	gravity_direction = 270.0
	gravity = 0.4
	alarm[int(0.0)] = (60.0 + (GM.f_random(10.0)))
	if ((absf(GM.room - 16.0) < 0.00001)):
		image_single = 906.0
	if not ((((self.script_view_check(self)))) >= 0.5):
		(GM.f_instance_destroy(self))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_604():
	hspeed = 0.0
	vspeed = 0.0
	if (((absf(alarm[int(0.0)] - (-1.0)) < 0.00001))):
		alarm[int(0.0)] = (10.0 + (GM.f_random(10.0)))
func ev_col_489():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
