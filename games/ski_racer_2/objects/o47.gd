extends "res://games/ski_racer_2/scripts.gd"
func ev_step():
	if (((absf(GM.room - 3.0) < 0.00001))):
		if ((GM.view_yview[int(0.0)] < GM.view_yview[int(1.0)])):
			if ((y < (GM.view_yview[int(0.0)] - sprite_height))):
				(GM.f_instance_destroy(self))
		if ((GM.view_yview[int(1.0)] < GM.view_yview[int(0.0)])):
			if ((y < (GM.view_yview[int(1.0)] - sprite_height))):
				(GM.f_instance_destroy(self))
	else:
		if (((y < (GM.view_yview[0] - sprite_height)))):
			(GM.f_instance_destroy(self))
