extends "res://games/street_bike_fury/scripts.gd"
func ev_step():
	if (((GM.f_instance_number(0.0)) > 0.0)):
		if (((GM.vb(0.0, "x") > x) and (absf(GM.vget(0.0, "v_die") - 0.0) < 0.00001))):
			self.ev_user(0.0)
	else:
		if (((GM.f_instance_number(21.0)) > 0.0)):
			if ((GM.vb(21.0, "x") > x)):
				self.ev_user(0.0)
func ev_other_10():
	(GM.f_sound_stop(54.0))
	(GM.f_instance_destroy(self))
