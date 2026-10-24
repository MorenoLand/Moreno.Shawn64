extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	x = 120.0
	image_single = 1.0
	alarm[int(0.0)] = (60.0 + (GM.f_random(30.0)))
	GM.vsetb(7.0, "x", 670.0)
	GM.vsetb(7.0, "speed", 0.0)
func ev_alarm_0():
	(GM.f_instance_create(780.0, 640.0, 1130.0))
	alarm[int(0.0)] = (90.0 + (GM.f_random(60.0)))
func ev_step():
	GM.view_object[int(0.0)] = 1105.0
	GM.view_xview[0] = 80.0
	GM.view_yview[0] = (GM.room_height - 600.0)
	GM.vset(7.0, "v_movenow", 0.0)
	GM.vsetb(7.0, "vspeed", 0.0)
	GM.vsetb(7.0, "y", 1060.0)
func ev_keypress_39():
	(GM.f_sound_play(152.0))
	GM.vsetb(7.0, "x", GM.vb(7.0, "x") + 170.0)
func ev_keypress_37():
	(GM.f_sound_play(152.0))
	GM.vsetb(7.0, "x", GM.vb(7.0, "x") - 170.0)
