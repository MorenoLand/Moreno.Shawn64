extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	(GM.f_sound_play(30.0))
	(GM.f_sound_play(22.0))
	GM.vset(0.0, "v_maxspeed", 55.0)
	for _w100 in GM.with_list((0.0), self):
		if _w100._dead:
			continue
		_w100.other = self
		for _r101 in range(int((20.0))):
			(GM.f_effect_create_above(4.0, ((_w100.x - 20.0) + (GM.f_random(40.0))), ((_w100.y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
	for _r102 in range(int((10.0))):
		(GM.f_instance_create(GM.vb(0.0, "x"), GM.vb(0.0, "y"), 239.0))
	(GM.f_instance_create(x, y, 217.0))
	GM.vset(0.0, "v_bikeon", 3.0)
	GM.vset(0.0, "v_shocks", 0.0)
	(GM.f_sound_loop(74.0))
func ev_destroy():
	GM.vset(0.0, "v_maxspeed", 30.0)
	(GM.f_sound_play(70.0))
	(GM.f_instance_create(x, y, 217.0))
	(GM.f_sound_stop(74.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	for _w103 in GM.with_list((0.0), self):
		if _w103._dead:
			continue
		_w103.other = self
		GM.vset(_w103, "v_woot", (GM.f_instance_create(((_w103.x - 20.0) + (GM.f_random(40.0))), ((_w103.y - 20.0) + (GM.f_random(40.0))), 243.0)))
		GM.vsetb(GM.vget(_w103, "v_woot"), "hspeed", GM.vb(GM.vget(_w103, "v_woot"), "hspeed") + (_w103.hspeed / 1.5))
		GM.vsetb(GM.vget(_w103, "v_woot"), "vspeed", GM.vb(GM.vget(_w103, "v_woot"), "vspeed") + (_w103.vspeed / 1.5))
		GM.vsetb(GM.vget(_w103, "v_woot"), "depth", (_w103.depth - 1.0))
	if ((absf((GM.f_instance_number(140.0)) - 0.0) < 0.00001)):
		(GM.f_instance_create(x, y, 140.0))
	x = GM.vb(0.0, "x")
	GM.vset(0.0, "v_maxspeed", 60.0)
	(GM.f_instance_create((GM.view_xview[0] + (GM.f_random(800.0))), (GM.view_yview[0] + (GM.f_random(600.0))), 244.0))
	for _w104 in GM.with_list((0.0), self):
		if _w104._dead:
			continue
		_w104.other = self
		if ((absf(GM.vget(_w104, "v_tilt") - 0.0) < 0.00001)):
			if (((GM.f_place_meeting(_w104, _w104.x, (_w104.y + 50.0), 1.0)))) >= 0.5:
				GM.vset(_w104, "v_temp", 0.0)
				if ((((GM.f_keyboard_check(39.0))) >= 0.5 or ((GM.f_keyboard_check(37.0))) >= 0.5)):
					GM.vset(_w104, "v_temp", 1.0)
				if ((GM.vget(_w104, "v_rotate") < 90.0)):
					if (((GM.vget(_w104, "v_rotate") - 1.0) > 0.0)):
						GM.vset(_w104, "v_rotate", GM.vget(_w104, "v_rotate") - 1.0)
					else:
						if (GM.eq(GM.vget(_w104, "v_temp"), 0.0)):
							GM.vset(_w104, "v_rotate", 0.0)
				if ((GM.vget(_w104, "v_rotate") > 270.0)):
					if (((GM.vget(_w104, "v_rotate") + 1.0) < 360.0)):
						GM.vset(_w104, "v_rotate", GM.vget(_w104, "v_rotate") + 1.0)
					else:
						if (GM.eq(GM.vget(_w104, "v_temp"), 0.0)):
							GM.vset(_w104, "v_rotate", 0.0)
		if ((_w104.y > (GM.vb(30.0, "y") - 2000.0))):
			(GM.f_motion_add(_w104, GM.vget(_w104, "v_rotate"), (_w104.hspeed / 60.0)))
		if ((_w104.speed > 55.0)):
			_w104.speed = 55.0
