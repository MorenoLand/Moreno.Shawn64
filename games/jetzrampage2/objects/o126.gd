extends "res://games/jetzrampage2/scripts.gd"
var v_woopy = 0.0
func ev_create():
	alarm[int(0.0)] = 50.0
	(GM.f_sound_play(8.0))
	v_woopy = (GM.f_point_direction(x, y, (GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)), (GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0))))
	(GM.f_motion_set(self, v_woopy, 12.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_94():
	(GM.f_sound_play(33.0))
	(GM.f_instance_create((x + (-30.0)), (y + 0.0), 107.0))
	(GM.f_instance_destroy(self))
func ev_col_85():
	(GM.f_instance_destroy(self))
func ev_col_16():
	(GM.f_sound_play(11.0))
	(GM.f_instance_destroy(self))
func ev_col_0():
	(GM.f_sound_play(12.0))
	GM.G["poo"] = GM.G["poo"] + 5.0
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
