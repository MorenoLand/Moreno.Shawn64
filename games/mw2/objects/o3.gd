extends "res://games/mw2/objects/o111.gd"
var v_my_direction = 0.0
func ev_create():
	v_my_direction = 0.0
	direction = 0.0
	speed = 0.0
	alarm[int(0.0)] = 350.0
func ev_alarm_0():
	(GM.f_sound_play(12.0))
	(GM.f_instance_destroy(self))
func ev_step():
	(GM.f_sound_play(41.0))
	v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.mouse_x, GM.mouse_y))
	(GM.f_motion_add(self, v_my_direction, 2.0))
	speed = (GM.f_min(speed, 25.0))
	image_single = (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25)))
