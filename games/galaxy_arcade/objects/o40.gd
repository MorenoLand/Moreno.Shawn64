extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "111101111", 4.0, 0.0))
func ev_destroy():
	GM.score = GM.score + 100.0
func ev_col_62():
	(GM.f_sound_play(1.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_destroy(self))
func ev_col_61():
	(GM.f_sound_play(1.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_destroy(self))
func ev_col_60():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_destroy(self))
func ev_col_48():
	(GM.f_sound_play(1.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_destroy(self))
func ev_col_47():
	(GM.f_sound_play(1.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_destroy(self))
func ev_col_44():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 51.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_wraparoundscreen(0.0, 0.0, 0.0, 0.0, 0.0))
