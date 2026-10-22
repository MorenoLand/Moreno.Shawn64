extends "res://games/jetz_rampage_4_revenge/objects/o491.gd"
func ev_create():
	gravity = 0.1
	gravity_direction = 270.0
	alarm[int(0.0)] = (20.0 + (GM.f_random(20.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_551():
	(GM.f_instance_destroy(self))
func ev_col_489():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
