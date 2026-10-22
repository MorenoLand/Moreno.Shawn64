extends "res://games/thrust/scripts.gd"
var v_blah = 0.0
var v_godown = 0.0
var v_goup = 0.0
var v_whater = 0.0
func ev_create():
	(GM.f_sound_play(23.0))
	v_whater = 1.0
	v_goup = 1.0
	v_godown = 0.0
func ev_alarm_0():
	v_godown = 1.0
func ev_step():
	(GM.f_screen_gamma(v_blah, v_blah, v_blah))
	if ((absf(v_goup - 1.0) < 0.00001)):
		if ((v_blah < 0.0)):
			v_blah = v_blah + 0.01
		else:
			if ((absf(v_whater - 1.0) < 0.00001)):
				alarm[int(0.0)] = 1.0
				v_whater = 0.0
			v_goup = 0.0
	if ((absf(v_godown - 1.0) < 0.00001)):
		if ((v_blah > (-1.0))):
			v_blah = v_blah - 0.01
		else:
			self.ev_user(0.0)
func ev_other_10():
	(GM.f_room_goto_next())
func ev_other_4():
	(GM.f_screen_gamma((-1.0), (-1.0), (-1.0)))
	v_blah = (-1.0)
