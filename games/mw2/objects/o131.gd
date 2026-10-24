extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 4.0, 0.0))
	alarm[int(0.0)] = 200.0
func ev_alarm_1():
	(GM.f_instance_create(0.0, 0.0, 130.0))
	alarm[int(0.0)] = 20.0
	(GM.f_instance_destroy(self))
func ev_mouse_0():
	(GM.f_sound_play(33.0))
	for _r22 in range(int((5.0))):
		(GM.f_instance_create(0.0, 0.0, 132.0))
	(GM.f_instance_destroy(self))
