extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_mypower = 0.0
var v_otherz = 0.0
var v_wow = 0.0
func ev_create():
	v_firepower = 25.0
	if ((absf((GM.f_instance_number(791.0)) - 0.0) < 0.00001)):
		(GM.f_sound_loop(222.0))
	hspeed = 12.0
	v_mypower = 35.0
	v_otherz = (GM.f_instance_create(x, 1125.0, 771.0))
	GM.vsetb(v_otherz, "image_single", 0.0)
	GM.vsetb(1067.0, "visible", 0.0)
	for _w724 in GM.with_list((551.0), self):
		if _w724._dead:
			continue
		_w724.other = self
		(GM.f_instance_destroy(_w724))
	GM.vsetb(7.0, "x", GM.vb(7.0, "x") - 100.0)
	x = x + 50.0
func ev_destroy():
	GM.vsetb(7.0, "x", 2920.0)
	GM.vsetb(7.0, "y", 620.0)
	GM.vsetb(7.0, "speed", 0.0)
	for _w725 in GM.with_list((v_otherz), self):
		if _w725._dead:
			continue
		_w725.other = self
		(GM.f_instance_destroy(_w725))
	GM.vsetb(1067.0, "visible", 1.0)
func ev_alarm_1():
	(GM.f_instance_destroy(self))
func ev_step():
	if ((absf(gravity - 0.0) < 0.00001)):
		for _w726 in GM.with_list((7.0), self):
			if _w726._dead:
				continue
			_w726.other = self
			(GM.f_motion_add(_w726, (GM.f_point_direction(_w726.x, _w726.y, GM.vb(1068.0, "x"), GM.vb(1068.0, "y"))), ((GM.f_distance_to_point(_w726, GM.vb(1068.0, "x"), GM.vb(1068.0, "y"))) / 150.0)))
		if ((absf((GM.f_instance_number(791.0)) - 0.0) < 0.00001)):
			(GM.f_sound_volume(222.0, (1.0 - (((GM.f_distance_to_point(self, (GM.view_xview[0] + 400.0), (GM.view_yview[0] + 300.0))) / 3000.0)))))
			(GM.f_sound_pan(222.0, (0.5 - ((((((GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0)))) - x)) / 1000.0)))))
		(GM.f_instance_create((x + 4.0), (y + 41.0), 490.0))
	else:
		if ((vspeed > 1.0)):
			v_wow = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
			GM.vsetb(v_wow, "depth", (depth - 1.0))
	v_wow = (GM.f_floor((GM.f_random(1.9999))))
	if (GM.eq(v_wow, 0.0)):
		vspeed = vspeed + 1.0
	else:
		vspeed = vspeed - 1.0
	if ((GM.vb(7.0, "x") > (x - 25.0))):
		GM.vsetb(7.0, "hspeed", GM.vb(7.0, "hspeed") - 2.0)
func ev_col_656():
	pass
func ev_col_489():
	if (((GM.vb(self.other, "y") > 100.0) and (gravity > 0.1))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 772.0))
		if ((vspeed > 4.0)):
			for _w727 in GM.with_list((v_otherz), self):
				if _w727._dead:
					continue
				_w727.other = self
				(GM.f_instance_destroy(_w727))
			for _r728 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
			for _r729 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
			(GM.f_sound_play(129.0))
			friction = 0.3
		if ((absf(alarm[int(1.0)] - (-1.0)) < 0.00001)):
			alarm[int(1.0)] = 100.0
		vspeed = 0.0
	vspeed = 0.0
func ev_other_10():
	(GM.f_sound_play(242.0))
	if ((absf((GM.f_instance_number(791.0)) - 0.0) < 0.00001)):
		(GM.f_sound_stop(222.0))
	(GM.f_instance_create(x, y, 498.0))
	for _r730 in range(int((55.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r731 in range(int((40.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
	(GM.f_sound_play(170.0))
	gravity = 0.6
	friction = 0.2
	gravity_direction = 270.0
	GM.G["j4var11"] = GM.G["j4var11"] + 400.0
	(GM.f_sound_play(224.0))
	for _w732 in GM.with_list((680.0), self):
		if _w732._dead:
			continue
		_w732.other = self
		_w732.ev_user(0.0)
	for _w733 in GM.with_list((1034.0), self):
		if _w733._dead:
			continue
		_w733.other = self
		(GM.f_instance_destroy(_w733))
func ev_other_0():
	vspeed = 0.0
	if ((GM.vb(7.0, "x") > (GM.room_width - 40.0))):
		if ((GM.vb(7.0, "y") < 100.0)):
			GM.vsetb(7.0, "y", GM.vb(7.0, "y") + 20.0)
		if ((GM.vb(7.0, "y") > 100.0)):
			GM.vsetb(7.0, "y", GM.vb(7.0, "y") - 20.0)
		GM.vsetb(7.0, "x", (-30.0))
		(self.script_Outside_Wrap())
		x = x + 200.0
func ev_draw():
	(GM.f_draw_sprite(900.0, (-1.0), (x + 0.0), (y + 0.0)))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_line((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)), (x + 4.0), (y + 38.0)))
