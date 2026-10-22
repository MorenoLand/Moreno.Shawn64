extends "res://games/jetz_rampage_4_revenge/objects/o493.gd"
func ev_create():
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		direction = direction + ((-30.0) + (GM.f_random(60.0)))
	else:
		direction = direction + (150.0 + (GM.f_random(60.0)))
	speed = speed + (1.0 + (GM.f_random(16.0)))
	gravity = 0.4
	gravity_direction = 270.0
	alarm[int(0.0)] = (1.0 + (GM.f_random(15.0)))
