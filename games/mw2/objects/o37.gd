extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_sound_loop(10.0))
	(GM.f_action_move(self, "010000000", 4.0, 0.0))
func ev_destroy():
	(GM.f_sound_stop(10.0))
func ev_step():
	if ((((GM.f_random(5.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 38.0))
func ev_col_39():
	(GM.f_sound_stop(10.0))
	(GM.f_instance_destroy(self))
