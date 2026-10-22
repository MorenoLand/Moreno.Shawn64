extends "res://games/jetzfusion/scripts.gd"
var v_bricker = 0.0
var v_wee = 0.0
var v_wowz = 0.0
func ev_create():
	v_wee = 1.0
	v_bricker = 0.0
	hspeed = (-3.5)
	v_wowz = 0.0
func ev_alarm_0():
	v_wee = 1.0
func ev_step():
	if (not ((((GM.f_sound_isplaying(74.0)))) >= 0.5)):
		v_wowz = 0.0
		sprite_index = 350.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		hspeed = (-3.5)
func ev_col_302():
	if (((absf(sprite_index - 350.0) < 0.00001))):
		(GM.f_sound_play(28.0))
		for _r565 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 33.0))
		hspeed = 0.0
		v_wowz = 1.0
		(GM.f_sound_play(74.0))
		sprite_index = 351.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_col_138():
	(GM.f_instance_create(0.0, 0.0, 10.0))
	for _w566 in GM.with_list((300.0), self):
		if _w566._dead:
			continue
		_w566.other = self
		(GM.f_instance_destroy(_w566))
	(GM.f_sound_play(44.0))
	(GM.f_sound_play(74.0))
	for _w567 in GM.with_list((170.0), self):
		if _w567._dead:
			continue
		_w567.other = self
		(GM.f_instance_destroy(_w567))
	(GM.f_instance_destroy(self))
func ev_key_17():
	if ((GM.eq(v_wee, 1.0))):
		(GM.f_instance_create((GM.vb(7.0, "x") + 17.0), (GM.vb(7.0, "y") + 20.0), 302.0))
		(GM.f_sound_play(19.0))
		alarm[int(0.0)] = 25.0
		v_wee = 0.0
func ev_draw():
	if ((GM.eq(v_wee, 1.0))):
		(GM.f_draw_sprite(280.0, 0.0, (GM.vb(7.0, "x") + 17.0), (GM.vb(7.0, "y") + 20.0)))
	if (((absf(v_wowz - 0.0) < 0.00001))):
		(GM.f_draw_sprite(350.0, (-1.0), (x + 0.0), (y + 0.0)))
	else:
		(GM.f_draw_sprite(351.0, (-1.0), (x + 0.0), (y + 0.0)))
