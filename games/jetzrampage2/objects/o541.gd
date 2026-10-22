extends "res://games/jetzrampage2/scripts.gd"
var v_blah = 0.0
func ev_step():
	(GM.f_screen_gamma(v_blah, v_blah, v_blah))
	if (((v_blah < (-0.2)))):
		v_blah = v_blah + 0.01
	else:
		(GM.f_screen_gamma((-0.2), (-0.2), (-0.2)))
		(GM.f_instance_destroy(self))
func ev_other_4():
	(GM.f_screen_gamma((-1.0), (-1.0), (-1.0)))
	v_blah = (-1.0)
