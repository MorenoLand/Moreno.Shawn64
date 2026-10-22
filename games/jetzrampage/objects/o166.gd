extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	if (((hspeed > 0.0))):
		(GM.f_action_move(self, "000001000", ((GM.vb(0.0, "hspeed") + (GM.f_random(9.0))) + 1.0), 0.0))
		vspeed = GM.vb(0.0, "vspeed")
	else:
		(GM.f_action_move(self, "000100000", (((-GM.vb(0.0, "hspeed")) + (GM.f_random(9.0))) + 1.0), 0.0))
		vspeed = GM.vb(0.0, "vspeed")
func ev_other_7():
	(GM.f_instance_destroy(self))
