extends "res://games/jetzfusion/scripts.gd"
var v_blah = 0.0
var v_wee = 0.0
var v_wheelie = 0.0
func ev_create():
	(GM.f_sound_loop(59.0))
	v_blah = 1.0
	alarm[int(0.0)] = 2.0
	v_wee = 0.0
	v_wheelie = 0.0
	GM.view_object[0] = 265.0
	GM.view_hborder[0] = (400.0 - (sprite_width / 2.0))
	GM.view_vborder[0] = (300.0 - (sprite_height / 2.0))
	gravity_direction = 270.0
	gravity = 1.0
func ev_destroy():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 278.0))
	GM.vsetb(7.0, "direction", direction)
	GM.vsetb(7.0, "speed", speed)
	GM.vsetb(278.0, "direction", direction)
	GM.vsetb(278.0, "speed", speed)
	(GM.f_sound_stop(59.0))
func ev_alarm_1():
	v_blah = 1.0
	alarm[int(0.0)] = 2.0
func ev_alarm_0():
	v_blah = 0.0
	alarm[int(1.0)] = 2.0
func ev_step():
	if not ((((absf(GM.view_xview[0] - 0.0) < 0.00001) or (absf(GM.view_xview[0] - (GM.room_width - 800.0)) < 0.00001)))):
		GM.background_hspeed[int(1.0)] = (hspeed / 15.0)
		GM.background_hspeed[int(0.0)] = (hspeed / 10.0)
	else:
		GM.background_hspeed[int(1.0)] = 0.0
		GM.background_hspeed[int(0.0)] = 0.0
	for _r353 in range(int((5.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 269.0))
	if ((((absf((GM.f_keyboard_check(17.0)) - 1.0) < 0.00001) and ((GM.f_place_meeting(self, x, (y + 5.0), 45.0))) >= 0.5) and ((GM.f_keyboard_check(38.0))) >= 0.5)):
		v_wheelie = 1.0
	else:
		v_wheelie = 0.0
	GM.vsetb(7.0, "x", (x + 10.0))
	GM.vsetb(7.0, "y", (y + 10.0))
	if (((GM.f_keyboard_check(38.0)))) >= 0.5:
		(GM.f_sound_volume(59.0, 1.0))
	else:
		(GM.f_sound_volume(59.0, 0.9))
	if (not ((((GM.f_place_meeting(self, x, (y + 5.0), 45.0)))) >= 0.5)):
		friction = 0.2
	else:
		if (((((GM.f_keyboard_check(38.0))) >= 0.5 or not (((GM.f_place_meeting(self, x, (y + 5.0), 45.0))) >= 0.5)))):
			friction = 0.0
		else:
			friction = 0.5
func ev_col_266():
	if (((absf(v_wheelie - 0.0) < 0.00001))):
		if (((vspeed <= 0.0))):
			direction = 45.0
func ev_col_197():
	if (((vspeed > 0.0) and (y < ((GM.vb(self.other, "y") - sprite_height) + 20.0)))):
		vspeed = 0.0
		y = (GM.vb(self.other, "y") - 63.0)
func ev_col_17():
	vspeed = 0.0
func ev_key_39():
	if (not (((((GM.f_place_meeting(self, x, (y + 5.0), 45.0))) >= 0.5 and (vspeed < 0.0))))):
		vspeed = vspeed + 0.4
func ev_key_38():
	if (((((GM.f_place_meeting(self, x, (y + 1.0), 45.0))) >= 0.5 or ((GM.f_place_meeting(self, x, (y + 1.0), 197.0))) >= 0.5))):
		if (((speed <= 35.0))):
			(GM.f_motion_add(self, 0.0, 0.5))
func ev_key_37():
	if (not (((((GM.f_place_meeting(self, x, (y + 5.0), 45.0))) >= 0.5 and (vspeed < 0.0))))):
		vspeed = vspeed - 0.4
func ev_other_0():
	x = 0.0
	y = y + (-5.0)
func ev_draw():
	if ((vspeed <= 0.0)):
		v_wee = (direction / 6.0)
	else:
		v_wee = 0.0
	if (((absf(v_wheelie - 0.0) < 0.00001))):
		if (((absf(v_blah - 1.0) < 0.00001))):
			(GM.f_draw_sprite(259.0, v_wee, (x + 0.0), (y + 0.0)))
		else:
			(GM.f_draw_sprite(260.0, v_wee, (x + 0.0), (y + 0.0)))
	else:
		if (((absf(v_blah - 1.0) < 0.00001))):
			(GM.f_draw_sprite(259.0, 6.0, (x + (-5.0)), (y + (-10.0))))
		else:
			(GM.f_draw_sprite(260.0, 6.0, (x + (-5.0)), (y + (-10.0))))
