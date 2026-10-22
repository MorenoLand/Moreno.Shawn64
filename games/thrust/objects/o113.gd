extends "res://games/thrust/objects/o110.gd"
func ev_create():
	(GM.f_motion_set(self, (GM.f_random(360.0)), (3.0 + (GM.f_random(3.0)))))
func ev_other_0():
	(self.script_outsidewrap(0.0, 0.0, 0.0, 0.0, 0.0))
