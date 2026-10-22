extends "res://games/thrust/scripts.gd"
func ev_col_0():
	if (((absf(GM.vget(self.other, "v_havekey") - 1.0) < 0.00001))):
		(GM.f_sound_play(3.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 26.0))
		(GM.f_instance_destroy(self))
