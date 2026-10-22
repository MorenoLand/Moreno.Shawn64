extends "res://games/marblex/scripts.gd"
func ev_create():
	(GM.f_sound_play(3.0))
func ev_other_7():
	friction = 0.05
	(GM.f_instance_change(self, 0.0, 0.0))
