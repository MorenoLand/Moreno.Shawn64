extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	(GM.f_move_outside_all(self, (GM.vb(0.0, "direction") + 90.0), 10.0))
	(GM.f_motion_set(self, ((GM.vb(0.0, "direction") + 80.0) - (GM.f_random(20.0))), (GM.f_random(10.0))))
	alarm[int(0.0)] = (1.0 + (GM.f_random(15.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
