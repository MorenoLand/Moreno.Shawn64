extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_blah = 0.0
func ev_create():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	v_blah = 0.0
func ev_step():
	(GM.f_screen_gamma(v_blah, v_blah, v_blah))
	if ((v_blah > (-1.0))):
		v_blah = v_blah - 0.01
	else:
		(GM.f_screen_gamma((-1.0), (-1.0), (-1.0)))
		self.ev_user(0.0)
func ev_other_10():
	(GM.f_sound_stop_all())
	(GM.f_room_goto(9.0))
