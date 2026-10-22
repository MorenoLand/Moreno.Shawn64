extends "res://games/bounty_hunter_sx/scripts.gd"
var v_aa = 0.0
func ev_create():
	(GM.f_screen_gamma((-1.0), (-1.0), (-1.0)))
	v_aa = (-1.0)
func ev_step():
	if ((v_aa < 0.0)):
		v_aa = v_aa + 0.03
		(GM.f_screen_gamma(v_aa, v_aa, v_aa))
	else:
		if ((absf(GM.room - 82.0) < 0.00001)):
			(GM.f_sound_play(322.0))
		(GM.f_screen_gamma(0.0, 0.0, 0.0))
		(GM.f_instance_destroy(self))
