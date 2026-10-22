extends "res://games/jetz_rampage_4_revenge/objects/o493.gd"
func ev_create():
	if ((absf(GM.vget(979.0, "v_guyright") - 1.0) < 0.00001)):
		direction = direction + ((-10.0) + (GM.f_random(20.0)))
	else:
		direction = direction + (170.0 + (GM.f_random(20.0)))
	speed = speed + (9.0 + (GM.f_random(1.0)))
	alarm[int(0.0)] = (1.0 + (GM.f_random(15.0)))
