extends "res://games/thrust/objects/o110.gd"
func ev_create():
	(GM.f_motion_set(self, (GM.f_random(360.0)), (3.0 + (GM.f_random(12.0)))))
func ev_col_73():
	(GM.f_sound_play(3.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_12():
	(GM.f_sound_play(3.0))
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_4():
	(GM.f_sound_play(3.0))
	(GM.f_move_bounce_solid(self, 0.0))
