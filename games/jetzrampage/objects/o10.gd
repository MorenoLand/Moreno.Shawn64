extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 50.0
	if (((hspeed > 0.0))):
		(GM.f_action_move(self, "000001000", (GM.vb(0.0, "hspeed") + 12.0), 0.0))
		vspeed = GM.vb(0.0, "vspeed")
		for _r25 in range(int((20.0))):
			(GM.f_instance_create((x + 1.0), (y + 1.0), 11.0))
	else:
		(GM.f_action_move(self, "000100000", ((-GM.vb(0.0, "hspeed")) + 12.0), 0.0))
		vspeed = GM.vb(0.0, "vspeed")
		for _r26 in range(int((20.0))):
			(GM.f_instance_create((x + 1.0), (y + 1.0), 14.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_187():
	(GM.f_sound_play(30.0))
	(GM.f_instance_destroy(self))
func ev_col_155():
	(GM.f_sound_play(30.0))
	(GM.f_instance_destroy(self))
func ev_col_145():
	(GM.f_sound_play(11.0))
	(GM.f_instance_destroy(self))
func ev_col_115():
	(GM.f_instance_destroy(self))
func ev_col_114():
	(GM.f_instance_destroy(self))
func ev_col_99():
	(GM.f_sound_play(30.0))
	(GM.f_instance_destroy(self))
func ev_col_94():
	(GM.f_sound_play(33.0))
	(GM.f_instance_create((x + (-30.0)), (y + 0.0), 107.0))
	(GM.f_instance_destroy(self))
func ev_col_92():
	(GM.f_sound_play(30.0))
	(GM.f_instance_destroy(self))
func ev_col_86():
	(GM.f_instance_destroy(self))
func ev_col_85():
	(GM.f_instance_destroy(self))
func ev_col_80():
	(GM.f_sound_play(30.0))
	(GM.f_instance_destroy(self))
func ev_col_79():
	(GM.f_sound_play(30.0))
	(GM.f_instance_destroy(self))
func ev_col_71():
	(GM.f_instance_destroy(self))
func ev_col_65():
	(GM.f_sound_play(11.0))
	(GM.f_instance_destroy(self))
func ev_col_16():
	(GM.f_sound_play(11.0))
	(GM.f_instance_destroy(self))
func ev_col_15():
	(GM.f_sound_play(11.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
