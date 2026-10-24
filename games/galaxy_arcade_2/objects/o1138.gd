extends "res://games/galaxy_arcade_2/scripts.gd"
var v_blab = 0.0
var v_blah = 0.0
var v_ham = 0.0
var v_hey = 0.0
var v_mgun = 0.0
var v_missil = 0.0
var v_poop = 0.0
func ev_create():
	v_ham = 1.0
	(GM.f_action_move(self, "000001000", 0.0, 0.0))
	y = y + 11.0
	v_mgun = 1.0
	v_hey = 1.0
	(GM.f_sound_loop(336.0))
	v_blab = 1.0
	v_poop = (GM.vb(1116.0, "direction") / 10.0)
	v_missil = 1.0
	gravity_direction = 270.0
	gravity = 0.2
func ev_alarm_1():
	v_mgun = 1.0
func ev_alarm_0():
	v_missil = 1.0
func ev_step():
	(GM.f_sound_volume(336.0, ((speed / 50.0) + 0.6)))
	if (((absf(v_blab - 1.0) < 0.00001))):
		if (((speed < 15.0))):
			vspeed = 0.0
		else:
			v_blab = 0.0
func ev_col_1195():
	for _r144 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create(0.0, 0.0, 1173.0))
	(GM.f_instance_destroy(self))
func ev_col_1187():
	for _r145 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create(0.0, 0.0, 1173.0))
	(GM.f_instance_destroy(self))
func ev_col_1186():
	(GM.f_sound_play(341.0))
	for _r146 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create(0.0, 0.0, 1173.0))
	(GM.f_instance_destroy(self))
func ev_col_1175():
	for _r147 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create(0.0, 0.0, 1173.0))
	(GM.f_instance_destroy(self))
func ev_col_1137():
	v_ham = 0.0
	if ((GM.eq(v_blah, 0.0))):
		vspeed = 0.0
	else:
		for _r148 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
		(GM.f_instance_create(0.0, 0.0, 1173.0))
		(GM.f_instance_destroy(self))
func ev_key_40():
	if (speed > 5.0):
		speed = speed + (-0.2)
func ev_key_39():
	if (direction > 0.0):
		direction = direction - ((360.0 / image_number) / 2.0)
	else:
		direction = (360.0 - (360.0 / image_number))
func ev_key_38():
	if (speed < 15.0):
		speed = speed + 0.2
	for _r149 in range(int((10.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1169.0))
	if (((absf((GM.f_instance_number(1172.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 1172.0))
func ev_key_37():
	direction = direction + ((360.0 / image_number) / 2.0)
func ev_key_17():
	if (((absf(v_mgun - 1.0) < 0.00001))):
		(GM.f_sound_play(340.0))
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1174.0))
		alarm[int(1.0)] = 3.0
		v_mgun = 0.0
func ev_other_0():
	y = y + (-10.0)
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (((absf(v_ham - 1.0) < 0.00001))):
		(GM.f_draw_sprite(1116.0, 0.0, 0.0, 0.0))
	else:
		(GM.f_draw_sprite(1116.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
func ev_keypress_16():
	if (((GM.G["missileamo"] > 0.0))):
		if (((absf(v_missil - 1.0) < 0.00001))):
			if (not ((((GM.f_sound_isplaying(339.0)))) >= 0.5)):
				(GM.f_instance_create((x + 20.0), (y + 20.0), 1170.0))
			v_missil = 0.0
			GM.G["missileamo"] = GM.G["missileamo"] + (-1.0)
			alarm[int(0.0)] = 20.0
