extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	if ((((GM.f_random(5.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 1.0))
	else:
		if ((((GM.f_random(4.0)) < 1.0))):
			(GM.f_instance_create((x + 0.0), (y + 0.0), 4.0))
		else:
			if ((((GM.f_random(3.0)) < 1.0))):
				(GM.f_instance_create((x + 0.0), (y + 0.0), 7.0))
			else:
				if ((((GM.f_random(2.0)) < 1.0))):
					(GM.f_instance_create((x + 0.0), (y + 0.0), 29.0))
				else:
					(GM.f_instance_create((x + 0.0), (y + 0.0), 18.0))
	(GM.f_instance_destroy(self))
