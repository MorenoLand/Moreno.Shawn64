extends "res://games/jetzfusion/scripts.gd"
var v_what = 0.0
var v_whater = 0.0
var v_xxx = 0.0
var v_yyy = 0.0
func ev_create():
	v_what = 0.0
	v_whater = 0.0
func ev_col_17():
	if (((absf(v_whater - 1.0) < 0.00001))):
		(GM.f_sound_play(43.0))
		for _r572 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 33.0))
		for _r573 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
		(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	if ((absf(v_whater - 0.0) < 0.00001)):
		v_xxx = (GM.vb(7.0, "x") + 10.0)
		v_yyy = (GM.vb(7.0, "y") + 10.0)
	else:
		v_xxx = x
		v_yyy = y
	if ((GM.vb(7.0, "hspeed") > 0.0)):
		if ((absf(v_what - 0.0) < 0.00001)):
			(GM.f_draw_sprite(95.0, 1.0, v_xxx, v_yyy))
		if ((absf(v_what - 1.0) < 0.00001)):
			(GM.f_draw_sprite(102.0, 1.0, v_xxx, v_yyy))
		if ((absf(v_what - 2.0) < 0.00001)):
			(GM.f_draw_sprite(110.0, 1.0, v_xxx, v_yyy))
		if ((absf(v_what - 3.0) < 0.00001)):
			(GM.f_draw_sprite(124.0, 1.0, v_xxx, v_yyy))
		if ((absf(v_what - 4.0) < 0.00001)):
			(GM.f_draw_sprite(130.0, 1.0, v_xxx, v_yyy))
	else:
		if ((absf(v_what - 0.0) < 0.00001)):
			(GM.f_draw_sprite(94.0, 1.0, v_xxx, v_yyy))
		if ((absf(v_what - 1.0) < 0.00001)):
			(GM.f_draw_sprite(103.0, 1.0, v_xxx, v_yyy))
		if ((absf(v_what - 2.0) < 0.00001)):
			(GM.f_draw_sprite(111.0, 1.0, v_xxx, v_yyy))
		if ((absf(v_what - 3.0) < 0.00001)):
			(GM.f_draw_sprite(125.0, 1.0, v_xxx, v_yyy))
		if ((absf(v_what - 4.0) < 0.00001)):
			(GM.f_draw_sprite(131.0, 1.0, v_xxx, v_yyy))
func ev_keypress_13():
	x = (GM.vb(7.0, "x") + 10.0)
	y = (GM.vb(7.0, "y") + 10.0)
	v_whater = 1.0
	gravity_direction = 270.0
	gravity = 0.3
	(GM.f_motion_add(self, GM.vb(7.0, "direction"), GM.vb(7.0, "speed")))
