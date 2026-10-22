extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	(GM.f_motion_set(self, (60.0 + (GM.f_random(60.0))), (3.0 + (GM.f_random(7.0)))))
	v_image_single = (GM.f_random(3.0))
	(GM.f_motion_add(self, GM.vb(7.0, "direction"), GM.vb(7.0, "speed")))
	alarm[int(0.0)] = (1.0 + (GM.f_random(10.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
