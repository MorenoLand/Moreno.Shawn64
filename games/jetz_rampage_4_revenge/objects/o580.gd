extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_step():
	if ((((GM.f_random(15.0)) < 1.0))):
		if ((absf(GM.room - 1.0) < 0.00001)):
			if ((((GM.view_xview[0] + 800.0) < 2080.0) or (GM.view_xview[0] > 2450.0))):
				if (((GM.f_instance_number(581.0)) < 9.0)):
					(GM.f_instance_create(x, (y - 35.0), 581.0))
		if ((absf(GM.room - 16.0) < 0.00001)):
			if ((((GM.view_xview[0] + 800.0) < 1240.0) or (GM.view_xview[0] > 1610.0))):
				if (((GM.f_instance_number(581.0)) < 9.0)):
					(GM.f_instance_create(x, (y - 35.0), 581.0))
