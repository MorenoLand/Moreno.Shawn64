extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_sound_play(17.0))
	if (((absf(sprite_index - 0.0) < 0.00001))):
		(GM.f_action_move(self, "000001000", (GM.vb(0.0, "hspeed") + 10.0), 0.0))
	else:
		(GM.f_action_move(self, "000100000", ((-GM.vb(0.0, "hspeed")) + 10.0), 0.0))
func ev_col_70():
	(GM.f_instance_destroy(self))
func ev_col_69():
	(GM.f_instance_destroy(self))
func ev_col_68():
	(GM.f_instance_destroy(self))
func ev_col_53():
	(GM.f_instance_destroy(self))
func ev_col_2():
	(GM.f_instance_destroy(self))
func ev_col_1():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
