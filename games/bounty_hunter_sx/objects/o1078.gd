extends "res://games/bounty_hunter_sx/objects/o1076.gd"
func ev_create():
	(GM.f_motion_add(self, (GM.vget(482.0, "v_my_direction") + 10.0), 20.0))
	(GM.f_motion_add(self, GM.vb(482.0, "direction"), GM.vb(482.0, "speed")))
	alarm[int(0.0)] = 35.0
