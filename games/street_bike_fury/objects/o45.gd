extends "res://games/street_bike_fury/scripts.gd"
var v_size = 0.0
var v_step = 0.0
var v_temp = 0.0
func ev_create():
	v_step = 1.0
	alarm[int(0.0)] = 1.0
	v_size = 1.0
	x = 20000.0
func ev_alarm_2():
	(GM.f_instance_destroy(self))
func ev_alarm_1():
	v_step = 3.0
	alarm[int(2.0)] = 80.0
	v_size = 1.5
	GM.vset(0.0, "v_intro2", 0.0)
	for _w47 in GM.with_list((212.0), self):
		if _w47._dead:
			continue
		_w47.other = self
		(GM.f_instance_destroy(_w47))
	(GM.f_instance_create(GM.vb(0.0, "x"), GM.vb(0.0, "y"), 18.0))
func ev_alarm_0():
	v_step = 2.0
	if (((absf(GM.G["levelon"] - 2.0) < 0.00001) or (absf(GM.G["levelon"] - 0.0) < 0.00001))):
		(GM.f_sound_play(39.0))
	GM.vsetb(0.0, "hspeed", 4.0)
	alarm[int(1.0)] = 150.0
	v_size = 1.5
func ev_step():
	v_size = v_size - 0.02
	if ((absf(v_step - 2.0) < 0.00001)):
		(GM.f_display_mouse_set(700.0, 300.0))
		for _w48 in GM.with_list((0.0), self):
			if _w48._dead:
				continue
			_w48.other = self
			_w48.gravity = 0.4
			_w48.ev_user(6.0)
		v_temp = (GM.f_floor((GM.f_random(5.99999999999999))))
		if (((absf(GM.G["levelon"] - 2.0) < 0.00001) or (absf(GM.G["levelon"] - 0.0) < 0.00001))):
			if (GM.eq(v_temp, 0.0)):
				(GM.f_instance_create(GM.vb(0.0, "x"), GM.vb(0.0, "y"), 114.0))
	x = GM.vb(0.0, "x")
	for _w49 in GM.with_list((0.0), self):
		if _w49._dead:
			continue
		_w49.other = self
		GM.vset(_w49, "v_woot", (GM.f_instance_create(((_w49.x - 20.0) + (GM.f_random(40.0))), ((_w49.y - 20.0) + (GM.f_random(40.0))), 243.0)))
		GM.vsetb(GM.vget(_w49, "v_woot"), "hspeed", GM.vb(GM.vget(_w49, "v_woot"), "hspeed") + (_w49.hspeed / 1.5))
		GM.vsetb(GM.vget(_w49, "v_woot"), "vspeed", GM.vb(GM.vget(_w49, "v_woot"), "vspeed") + (_w49.vspeed / 1.5))
		GM.vsetb(GM.vget(_w49, "v_woot"), "depth", (_w49.depth - 1.0))
	GM.view_xview[0] = GM.view_xview[0] + (GM.f_random(10.0))
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_set_font(2.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_set_alpha(v_size))
	if ((absf(v_step - 2.0) < 0.00001)):
		(GM.f_draw_text_transformed((GM.view_xview[0] + (GM.view_wview[0] / 2.0)), ((GM.view_yview[0] + (GM.view_hview[0] / 2.0)) - 200.0), "GET READY...", v_size, v_size, 0.0))
	if ((absf(v_step - 3.0) < 0.00001)):
		(GM.f_draw_text_transformed((GM.view_xview[0] + (GM.view_wview[0] / 2.0)), ((GM.view_yview[0] + (GM.view_hview[0] / 2.0)) - 200.0), "GO!!!", v_size, v_size, 0.0))
	(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_set_halign(0.0))
	(GM.f_texture_set_interpolation(0.0))
