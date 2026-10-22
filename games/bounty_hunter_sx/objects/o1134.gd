extends "res://games/bounty_hunter_sx/objects/o1133.gd"
func ev_create():
	if (((absf((GM.f_instance_number(1131.0)) - 1.0) < 0.00001))):
		(GM.f_motion_add(self, (GM.vget(1131.0, "v_my_direction") - 10.0), 20.0))
		(GM.f_motion_add(self, GM.vb(1131.0, "direction"), GM.vb(1131.0, "speed")))
	alarm[int(0.0)] = 35.0
