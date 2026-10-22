extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	if ((((GM.f_random(4.0)) < 1.0))):
		(GM.f_motion_set(self, (80.0 + (GM.f_random(20.0))), (5.0 + (GM.f_random(10.0)))))
	else:
		if ((((GM.f_random(3.0)) < 1.0))):
			(GM.f_motion_set(self, (170.0 + (GM.f_random(20.0))), (5.0 + (GM.f_random(10.0)))))
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				(GM.f_motion_set(self, (260.0 + (GM.f_random(20.0))), (5.0 + (GM.f_random(10.0)))))
			else:
				(GM.f_motion_set(self, (350.0 + (GM.f_random(20.0))), (5.0 + (GM.f_random(10.0)))))
func ev_other_7():
	(GM.f_instance_destroy(self))
