extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		direction = direction + ((-35.0) + (GM.f_random(70.0)))
	else:
		direction = direction + ((180.0 - 35.0) + (GM.f_random(70.0)))
	speed = (GM.f_random(10.0))
	hspeed = hspeed + GM.vb(7.0, "hspeed")
	vspeed = vspeed + GM.vb(7.0, "vspeed")
	alarm[int(0.0)] = (1.0 + (GM.f_random(25.0)))
	gravity_direction = 270.0
	gravity = 0.2
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
