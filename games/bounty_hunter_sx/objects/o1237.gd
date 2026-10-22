extends "res://games/bounty_hunter_sx/objects/o1133.gd"
func ev_create():
	(GM.f_motion_add(self, (GM.vget(1232.0, "v_wee") - 40.0), 20.0))
	(GM.f_motion_add(self, GM.vb(1232.0, "direction"), GM.vb(1232.0, "speed")))
	(GM.f_move_outside_all(self, GM.vget(1232.0, "v_wee"), 50.0))
	alarm[int(0.0)] = 35.0
