extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 25.0
	(GM.f_motion_set(self, GM.vb(1116.0, "direction"), (GM.vb(1116.0, "speed") + 20.0)))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_1187():
	(GM.f_instance_destroy(self))
func ev_col_1186():
	(GM.f_instance_destroy(self))
func ev_col_1183():
	(GM.f_instance_destroy(self))
func ev_col_1175():
	(GM.f_sound_play(343.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
