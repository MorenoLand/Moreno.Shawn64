extends "res://games/bubblegum/scripts.gd"
var v_wee = 0.0
func ev_create():
	(GM.f_sound_play(18.0))
	(GM.f_sound_loop(21.0))
	v_wee = (GM.f_point_direction(x, y, GM.vb(11.0, "x"), GM.vb(11.0, "y")))
	(GM.f_motion_set(self, v_wee, 20.0))
func ev_col_11():
	(GM.f_sound_stop(21.0))
	x = GM.vb(self.other, "x")
	y = GM.vb(self.other, "y")
	GM.view_object[int(0.0)] = 12.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 12.0))
	(GM.f_instance_destroy(self))
