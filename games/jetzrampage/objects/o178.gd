extends "res://games/jetzrampage/scripts.gd"
var v_pow = 0.0
var v_shotready = 0.0
func ev_create():
	v_pow = 0.0
	v_shotready = 1.0
func ev_alarm_0():
	v_shotready = 1.0
func ev_step():
	if (((absf((GM.f_instance_number(0.0)) - 1.0) < 0.00001))):
		if (((GM.vb(71.0, "hspeed") > 0.0))):
			x = (GM.vb(71.0, "x") + 40.0)
			y = (GM.vb(71.0, "y") + 26.0)
			sprite_index = 3.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		if (((GM.vb(71.0, "hspeed") < 0.0))):
			x = (GM.vb(71.0, "x") + 8.0)
			y = (GM.vb(71.0, "y") + 26.0)
			sprite_index = 8.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
	if (((absf(v_shotready - 1.0) < 0.00001))):
		if ((((GM.f_random(4.0)) < 1.0))):
			if (((GM.vb(71.0, "hspeed") > 0.0))):
				(GM.f_sound_play(8.0))
				(GM.f_instance_create((x + 27.0), (y + 10.0), 179.0))
				alarm[int(0.0)] = 5.0
				v_shotready = 0.0
			else:
				(GM.f_sound_play(8.0))
				(GM.f_instance_create((x + 1.0), (y + 10.0), 180.0))
				alarm[int(0.0)] = 5.0
				v_shotready = 0.0
