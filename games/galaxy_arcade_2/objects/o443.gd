extends "res://games/galaxy_arcade_2/scripts.gd"
var v_idunno = 0.0
var v_kkk = 0.0
var v_makecloud = 0.0
func ev_create():
	v_makecloud = 1.0
	v_idunno = 1.0
	v_kkk = 1.0
	if (((absf((GM.f_instance_number(1251.0)) - 0.0) < 0.00001))):
		alarm[int(0.0)] = 1000.0
	else:
		alarm[int(0.0)] = 1500.0
func ev_alarm_0():
	(GM.f_instance_create(0.0, 580.0, 446.0))
func ev_step():
	if (((absf(v_makecloud - 1.0) < 0.00001))):
		if ((((GM.f_random(5.0)) < 1.0))):
			(GM.f_instance_create((GM.f_random(800.0)), 600.0, 444.0))
		if (((absf(v_kkk - 1.0) < 0.00001))):
			if ((((GM.f_random(20.0)) < 1.0))):
				(GM.f_instance_create((GM.f_random(800.0)), 600.0, 445.0))
	if (((absf((GM.f_instance_number(446.0)) - 1.0) < 0.00001))):
		for _w89 in GM.with_list((444.0), self):
			if _w89._dead:
				continue
			_w89.other = self
			(GM.f_instance_destroy(_w89))
		GM.background_vspeed[int(0.0)] = 0.0
		v_makecloud = 0.0
		for _w90 in GM.with_list((445.0), self):
			if _w90._dead:
				continue
			_w90.other = self
			(GM.f_action_move(_w90, "010000000", 6.0, 0.0))
		for _w91 in GM.with_list((444.0), self):
			if _w91._dead:
				continue
			_w91.other = self
			(GM.f_action_move(_w91, "000010000", 0.0, 0.0))
		for _w92 in GM.with_list((1251.0), self):
			if _w92._dead:
				continue
			_w92.other = self
			(GM.f_action_move(_w92, "010000000", 30.0, 0.0))
		for _w93 in GM.with_list((442.0), self):
			if _w93._dead:
				continue
			_w93.other = self
			(GM.f_action_move(_w93, "010000000", 30.0, 0.0))
		if (((absf(v_idunno - 1.0) < 0.00001))):
			for _w94 in GM.with_list((1252.0), self):
				if _w94._dead:
					continue
				_w94.other = self
				(GM.f_action_move(_w94, "010000000", 15.0, 0.0))
			for _w95 in GM.with_list((449.0), self):
				if _w95._dead:
					continue
				_w95.other = self
				(GM.f_action_move(_w95, "010000000", 15.0, 0.0))
			v_idunno = 0.0
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 10.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(20.0, 20.0, ("Score: " + (GM.f_string(GM.G["airscore"])))))
	(GM.f_draw_text(20.0, 40.0, "Time:"))
	(GM.f_draw_text(70.0, 40.0, (GM.f_string(alarm[int(0.0)]))))
