extends "res://games/galaxy_arcade_2/scripts.gd"
var v_idunno = 0.0
var v_kkk = 0.0
var v_makecloud = 0.0
var v_poo = 0.0
func ev_create():
	v_poo = 0.0
	v_makecloud = 1.0
	v_idunno = 1.0
	v_kkk = 1.0
	alarm[int(0.0)] = 1500.0
	alarm[int(2.0)] = 1450.0
func ev_alarm_2():
	v_poo = 1.0
func ev_alarm_1():
	(GM.f_sound_play(129.0))
	for _w209 in GM.with_list((443.0), self):
		if _w209._dead:
			continue
		_w209.other = self
		GM.vset(_w209, "v_kkk", 0.0)
	x = x + (-51.0)
	y = y + (-100.0)
	for _w210 in GM.with_list((443.0), self):
		if _w210._dead:
			continue
		_w210.other = self
		_w210.alarm[int(0.0)] = (_w210.alarm[int(0.0)] * 2.0)
	(GM.f_instance_change(self, 449.0, 0.0))
func ev_alarm_0():
	(GM.f_instance_create(0.0, 580.0, 446.0))
func ev_step():
	if (((absf(v_poo - 1.0) < 0.00001))):
		for _w211 in GM.with_list((442.0), self):
			if _w211._dead:
				continue
			_w211.other = self
			_w211.alarm[int(0.0)] = 1.0
		for _w212 in GM.with_list((1251.0), self):
			if _w212._dead:
				continue
			_w212.other = self
			_w212.alarm[int(0.0)] = 1.0
		v_poo = 0.0
	if (((absf(v_makecloud - 1.0) < 0.00001))):
		if ((((GM.f_random(5.0)) < 1.0))):
			(GM.f_instance_create((GM.f_random(800.0)), 600.0, 444.0))
		if (((absf(v_kkk - 1.0) < 0.00001))):
			if ((((GM.f_random(20.0)) < 1.0))):
				(GM.f_instance_create((GM.f_random(800.0)), 600.0, 445.0))
	if (((absf((GM.f_instance_number(446.0)) - 1.0) < 0.00001))):
		for _w213 in GM.with_list((444.0), self):
			if _w213._dead:
				continue
			_w213.other = self
			(GM.f_instance_destroy(_w213))
		GM.background_vspeed[int(0.0)] = 0.0
		v_makecloud = 0.0
		for _w214 in GM.with_list((445.0), self):
			if _w214._dead:
				continue
			_w214.other = self
			(GM.f_action_move(_w214, "010000000", 6.0, 0.0))
		for _w215 in GM.with_list((444.0), self):
			if _w215._dead:
				continue
			_w215.other = self
			(GM.f_action_move(_w215, "000010000", 0.0, 0.0))
		for _w216 in GM.with_list((1251.0), self):
			if _w216._dead:
				continue
			_w216.other = self
			(GM.f_action_move(_w216, "010000000", 30.0, 0.0))
		for _w217 in GM.with_list((442.0), self):
			if _w217._dead:
				continue
			_w217.other = self
			(GM.f_action_move(_w217, "010000000", 30.0, 0.0))
		if (((absf(v_idunno - 1.0) < 0.00001))):
			for _w218 in GM.with_list((1252.0), self):
				if _w218._dead:
					continue
				_w218.other = self
				(GM.f_action_move(_w218, "010000000", 15.0, 0.0))
			for _w219 in GM.with_list((449.0), self):
				if _w219._dead:
					continue
				_w219.other = self
				(GM.f_action_move(_w219, "010000000", 15.0, 0.0))
			v_idunno = 0.0
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 10.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(20.0, 20.0, ("P1 Score: " + (GM.f_string(GM.G["airscore"])))))
	(GM.f_draw_text(20.0, 40.0, ("P2 Score: " + (GM.f_string(GM.G["airscore2"])))))
	(GM.f_draw_text(20.0, 60.0, "Time:"))
	(GM.f_draw_text(70.0, 60.0, (GM.f_string(alarm[int(0.0)]))))
