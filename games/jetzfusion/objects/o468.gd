extends "res://games/jetzfusion/scripts.gd"
var v_blah = 0.0
func ev_create():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	v_blah = 0.0
func ev_step():
	(GM.f_screen_gamma(v_blah, v_blah, v_blah))
	if ((v_blah > (-1.0))):
		v_blah = v_blah - 0.01
	else:
		self.ev_user(0.0)
func ev_other_10():
	if ((((GM.f_file_exists("JETZ.JF"))))) >= 0.5:
		(GM.f_screen_gamma(0.0, 0.0, 0.0))
	(GM.f_room_goto_next())
