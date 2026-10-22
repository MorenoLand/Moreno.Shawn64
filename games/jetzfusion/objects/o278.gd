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
	gravity_direction = 270.0
	gravity = 1.0
func ev_destroy():
	(GM.f_sound_stop(59.0))
func ev_alarm_1():
	v_blah = 1.0
	alarm[int(0.0)] = 2.0
func ev_alarm_0():
	v_blah = 0.0
	alarm[int(1.0)] = 2.0
func ev_step():
	(GM.f_sound_volume(59.0, 0.9))
	if (not ((((GM.f_place_meeting(self, x, (y + 5.0), 45.0)))) >= 0.5)):
		friction = 0.2
	else:
		if (((((GM.f_keyboard_check(38.0))) >= 0.5 or not (((GM.f_place_meeting(self, x, (y + 5.0), 45.0))) >= 0.5)))):
			friction = 0.0
		else:
			friction = 0.5
func ev_col_17():
	(GM.f_sound_play(36.0))
	for _r376 in range(int((40.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	x = 0.0
	y = y + (-5.0)
