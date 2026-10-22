extends "res://games/bubblegum/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 35.0
func ev_alarm_0():
	(GM.f_sound_play(2.0))
	for _r48 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
	(GM.f_instance_destroy(self))
