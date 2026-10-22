extends "res://games/bubblegum/scripts.gd"
var v_blab = 0.0
var v_image_single = 0.0
func ev_create():
	v_blab = 0.0
	alarm[int(0.0)] = 15.0
func ev_alarm_5():
	(GM.f_instance_create(0.0, 0.0, 47.0))
	(GM.f_sound_play(2.0))
	for _r47 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	(GM.f_instance_destroy(self))
func ev_alarm_4():
	(GM.f_sound_play(20.0))
	alarm[int(5.0)] = 50.0
func ev_alarm_3():
	v_blab = 1.0
	(GM.f_sound_play(19.0))
	alarm[int(4.0)] = 50.0
func ev_alarm_2():
	v_blab = 1.0
	(GM.f_sound_play(13.0))
	alarm[int(3.0)] = 35.0
func ev_alarm_1():
	v_blab = 1.0
	(GM.f_sound_play(12.0))
	alarm[int(2.0)] = 35.0
func ev_alarm_0():
	(GM.f_sound_play(11.0))
	alarm[int(1.0)] = 35.0
func ev_step():
	v_image_single = 1.0
