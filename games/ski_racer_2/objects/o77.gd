extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
	y = ((GM.room_height / 2.0) - (sprite_height / 2.0))
	alarm[int(0.0)] = 25.0
func ev_alarm_1():
	(GM.f_room_goto(2.0))
func ev_alarm_0():
	(GM.f_sound_play(5.0))
	alarm[int(1.0)] = 25.0
