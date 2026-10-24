extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_sound_play(4.0))
	(GM.f_action_move(self, "000000010", 15.0, 0.0))
	gravity_direction = gravity_direction + 0.0
	gravity = gravity + 0.2
func ev_step():
	(GM.f_instance_create((x + 15.0), (y + 40.0), 72.0))
func ev_col_90():
	(GM.f_sound_play(6.0))
	GM.G["guys"] = GM.G["guys"] + 1.0
	(GM.f_instance_change(self, 96.0, 0.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
