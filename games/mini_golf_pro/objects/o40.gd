extends "res://games/mini_golf_pro/scripts.gd"
var v_implayer = 0.0
var v_pickhole = 0.0
var v_wee = 0.0
var v_yyy = 0.0
func ev_create():
	v_yyy = y
func ev_alarm_0():
	if ((absf(v_pickhole - 1.0) < 0.00001)):
		v_wee = (GM.f_instance_create(GM.vb(36.0, "x"), (GM.vb(36.0, "y") - 40.0), 41.0))
		GM.vset(v_wee, "v_implayer", v_implayer)
		for _w9 in GM.with_list((v_wee), self):
			if _w9._dead:
				continue
			_w9.other = self
			_w9.direction = 270.0
			if ((absf(GM.room - 0.0) < 0.00001)):
				_w9.speed = 13.0
			else:
				_w9.speed = 10.0
			_w9.visible = 1.0
	if ((absf(v_pickhole - 2.0) < 0.00001)):
		v_wee = (GM.f_instance_create(GM.vb(45.0, "x"), (GM.vb(45.0, "y") - 40.0), 41.0))
		GM.vset(v_wee, "v_implayer", v_implayer)
		for _w10 in GM.with_list((v_wee), self):
			if _w10._dead:
				continue
			_w10.other = self
			_w10.direction = 270.0
			_w10.speed = 10.0
			_w10.visible = 1.0
	if ((absf(v_pickhole - 6.0) < 0.00001)):
		v_wee = (GM.f_instance_create(GM.vb(94.0, "x"), (GM.vb(94.0, "y") - 40.0), 41.0))
		GM.vset(v_wee, "v_implayer", v_implayer)
		for _w11 in GM.with_list((v_wee), self):
			if _w11._dead:
				continue
			_w11.other = self
			_w11.direction = 270.0
			_w11.speed = 10.0
			_w11.visible = 1.0
	(GM.f_instance_destroy(self))
func ev_step():
	if ((y < GM.add(v_yyy, 25.0))):
		y = y + 2.0
	else:
		if ((absf(alarm[int(0.0)] - (-1.0)) < 0.00001)):
			(GM.f_sound_loop(7.0))
			if ((absf(v_pickhole - 1.0) < 0.00001)):
				alarm[int(0.0)] = 60.0
			if ((absf(v_pickhole - 2.0) < 0.00001)):
				alarm[int(0.0)] = 60.0
			if ((absf(v_pickhole - 6.0) < 0.00001)):
				alarm[int(0.0)] = 60.0
func ev_draw():
	(GM.f_draw_set_color(41984.0))
	if ((absf(v_implayer - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player1ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 2.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player2ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 3.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player3ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 4.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player4ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 5.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player5ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(61.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
