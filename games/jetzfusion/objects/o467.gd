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
	(GM.f_sound_stop_all())
	if (((absf((GM.f_instance_number(257.0)) - 1.0) < 0.00001))):
		(GM.f_room_goto(3.0))
	if (((absf((GM.f_instance_number(346.0)) - 1.0) < 0.00001))):
		(GM.f_room_goto(6.0))
	if (((absf((GM.f_instance_number(469.0)) - 1.0) < 0.00001))):
		(GM.f_room_goto(5.0))
	(GM.f_room_goto(1.0))
