extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000000010", 6.0, 0.0))
	alarm[int(0.0)] = 200.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_109():
	(GM.f_sound_play(6.0))
	(GM.f_instance_destroy(self))
func ev_col_105():
	GM.score = GM.score + 100.0
	GM.G["sky"] = GM.G["sky"] + 100.0
	(GM.f_sound_play(6.0))
	(GM.f_instance_destroy(self))
