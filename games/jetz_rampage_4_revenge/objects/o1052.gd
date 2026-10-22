extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_go = 0.0
var v_wee = 0.0
var v_what = 0.0
var v_wow = 0.0
func ev_create():
	for _w709 in GM.with_list((742.0), self):
		if _w709._dead:
			continue
		_w709.other = self
		(GM.f_instance_destroy(_w709))
	for _w710 in GM.with_list((881.0), self):
		if _w710._dead:
			continue
		_w710.other = self
		(GM.f_instance_destroy(_w710))
	v_what = 1.0
	GM.view_object[int(0.0)] = 1052.0
	friction = 0.2
	gravity = 0.5
	v_go = 0.0
func ev_alarm_1():
	if ((absf(GM.room - 1.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 1055.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1054.0))
		GM.vsetb(v_wee, "depth", depth)
		(GM.f_instance_destroy(self))
	if ((absf(GM.room - 16.0) < 0.00001)):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 722.0))
		(GM.f_instance_create(x, y, 498.0))
		for _r711 in range(int((45.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		for _r712 in range(int((45.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		for _r713 in range(int((46.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
		(GM.f_instance_create(x, y, 1058.0))
		(GM.f_instance_destroy(self))
func ev_alarm_0():
	v_go = 1.0
	alarm[int(1.0)] = 200.0
func ev_step():
	if ((absf(v_go - 1.0) < 0.00001)):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 772.0))
		for _r714 in range(int((5.0))):
			(GM.f_instance_create(((x - 100.0) + (GM.f_random(260.0))), ((y - 100.0) + (GM.f_random(260.0))), 1053.0))
		(GM.f_instance_create(((x - 100.0) + (GM.f_random(260.0))), ((y - 100.0) + (GM.f_random(260.0))), 1059.0))
		if ((absf((GM.f_instance_number(1056.0)) - 0.0) < 0.00001)):
			(GM.f_instance_create(x, y, 1056.0))
		v_wow = (GM.f_round((GM.f_random(10.0))))
		if (GM.eq(v_wow, 0.0)):
			(GM.f_instance_create(x, y, 678.0))
		if (GM.eq(v_wow, 1.0)):
			(GM.f_sound_play(146.0))
		if (GM.eq(v_wow, 2.0)):
			if not ((((GM.f_sound_isplaying(251.0)))) >= 0.5):
				(GM.f_sound_play(251.0))
	GM.view_object[int(0.0)] = 1052.0
func ev_col_551():
	hspeed = 0.0
func ev_col_489():
	hspeed = 0.0
	vspeed = 0.0
	gravity = 0.0
	if ((absf(v_what - 1.0) < 0.00001)):
		alarm[int(0.0)] = 30.0
		v_what = 0.0
func ev_draw():
	if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
		(GM.f_draw_sprite(873.0, (-1.0), x, y))
	else:
		(GM.f_draw_sprite(874.0, (-1.0), x, y))
	(GM.f_draw_sprite(1019.0, ((((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_width") / 2.0)))) + 90.0)) / 10.0), x, y))
