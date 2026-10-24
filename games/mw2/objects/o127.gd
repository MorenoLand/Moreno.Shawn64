extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 4.0, 0.0))
	alarm[int(0.0)] = 200.0
func ev_mouse_0():
	(GM.f_sound_play(33.0))
	(GM.f_instance_create((x + 2.25), (y + 2.25), 125.0))
	(GM.f_instance_destroy(self))
