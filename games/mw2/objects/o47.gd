extends "res://games/mw2/scripts.gd"
var v_my_direction = 0.0
func ev_create():
	v_my_direction = 0.0
	direction = 0.0
	speed = 0.0
	(GM.f_action_move(self, "100000100", (GM.f_random(10.0)), 0.0))
	alarm[int(0.0)] = 2.0
func ev_alarm_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 74.0))
	alarm[int(0.0)] = 2.0
func ev_step():
	if (((absf(GM.G["glue"] - 1.0) < 0.00001))):
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
	if ((((GM.f_instance_number(30.0)) > 0.0))):
		v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(34.0, "x"), GM.vb(34.0, "y")))
		(GM.f_motion_add(self, v_my_direction, 1.0))
		speed = (GM.f_min(speed, 8.0))
		image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
	else:
		(GM.f_instance_destroy(self))
	if (((absf((GM.f_instance_number(123.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(11.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
		(GM.f_instance_destroy(self))
func ev_col_126():
	(GM.f_sound_play(11.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_destroy(self))
func ev_col_111():
	(GM.f_sound_play(11.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_destroy(self))
func ev_col_30():
	(GM.f_sound_play(11.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 52.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 52.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 52.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 52.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 52.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 52.0))
	(GM.f_instance_destroy(self))
func ev_mouse_0():
	(GM.f_sound_play(11.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_create((x + 11.0), (y + 11.0), 53.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
