extends "res://games/bounty_hunter_sx/scripts.gd"
var v_image_single = 0.0
var v_my_direction = 0.0
func ev_create():
	(GM.f_sound_play(314.0))
	alarm[int(0.0)] = 75.0
func ev_alarm_0():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 26.0), ((y + (sprite_height / 2.0)) - 26.0), 1169.0))
	for _r372 in range(int((300.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1173.0))
	(GM.f_sound_play(293.0))
	(GM.f_instance_destroy(self))
func ev_step():
	v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(482.0, "x") + (GM.vb(482.0, "sprite_width") / 2.0)), (GM.vb(482.0, "y") + (GM.vb(482.0, "sprite_height") / 2.0))))
	(GM.f_motion_add(self, v_my_direction, 1.0))
	speed = (GM.f_min(speed, 15.0))
	v_image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1176.0))
func ev_col_1219():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 26.0), ((y + (sprite_height / 2.0)) - 26.0), 1169.0))
	for _r373 in range(int((300.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1173.0))
	(GM.f_sound_play(293.0))
	(GM.f_instance_destroy(self))
func ev_col_482():
	if (((absf((GM.f_instance_number(1208.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 26.0), ((y + (sprite_height / 2.0)) - 26.0), 1169.0))
		for _r374 in range(int((300.0))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1173.0))
		(GM.f_sound_play(293.0))
		(GM.f_instance_destroy(self))
	else:
		(GM.f_sound_play(328.0))
		(GM.f_move_bounce_solid(self, 0.0))
		alarm[int(0.0)] = 150.0
		(GM.f_instance_change(self, 1177.0, 0.0))
