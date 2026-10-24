extends "res://games/mw2/scripts.gd"
func ev_create():
	if ((((GM.f_random(6.0)) < 1.0))):
		(GM.f_instance_create(0.0, 0.0, 97.0))
	else:
		if ((((GM.f_random(5.0)) < 1.0))):
			(GM.f_instance_create(0.0, 0.0, 98.0))
		else:
			if ((((GM.f_random(4.0)) < 1.0))):
				(GM.f_instance_create(0.0, 0.0, 99.0))
			else:
				if ((((GM.f_random(3.0)) < 1.0))):
					(GM.f_instance_create(0.0, 0.0, 101.0))
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						(GM.f_instance_create(0.0, 0.0, 103.0))
					else:
						(GM.f_instance_create(0.0, 0.0, 104.0))
	(GM.f_instance_destroy(self))
