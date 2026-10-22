extends "res://games/bubblegum/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 50.0
	(GM.f_action_move(self, "000001000", 8.0, 0.0))
	(GM.f_sound_loop(0.0))
	(GM.f_sound_play(14.0))
func ev_alarm_0():
	(GM.f_instance_create((-95.0), 4.0, 37.0))
func ev_col_9():
	(GM.f_action_move(self, "000001000", 8.0, 0.0))
	sprite_index = 0.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_col_8():
	(GM.f_action_move(self, "000100000", 8.0, 0.0))
	sprite_index = 1.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
