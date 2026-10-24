extends "res://games/galaxy_arcade_2/scripts.gd"
var v_spark = 0.0
func ev_create():
	v_spark = 0.0
	alarm[int(0.0)] = 20.0
func ev_alarm_0():
	(GM.f_sound_loop(140.0))
	v_spark = 1.0
func ev_step():
	if (((absf(v_spark - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 499.0))
	if ((((GM.f_mouse_check_button(1.0))))) >= 0.5:
		(GM.f_sound_stop(140.0))
		(GM.f_sound_loop(295.0))
		(GM.f_room_goto_next())
