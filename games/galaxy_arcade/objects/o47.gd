extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_sound_play(3.0))
	if (((absf((GM.f_instance_number(44.0)) - 1.0) < 0.00001))):
		(GM.f_motion_set(self, GM.vb(44.0, "direction"), 10.0))
		alarm[int(0.0)] = 4.0
	else:
		(GM.f_action_move(self, "000001000", 8.0, 0.0))
func ev_alarm_0():
	(GM.f_instance_change(self, 48.0, 0.0))
func ev_col_51():
	(GM.f_instance_destroy(self))
func ev_col_40():
	(GM.f_instance_destroy(self))
