extends "res://games/jetzrampage2/scripts.gd"
var v_image_single = 0.0
func ev_create():
	(GM.f_path_start(self, 1.0, (2.0 + (GM.f_random(5.0))), (GM.f_random(4.0)), 0.0))
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(200.0))
	v_image_single = (GM.f_random(3.0))
func ev_col_10():
	(GM.f_sound_play(177.0))
	(GM.f_instance_destroy(self))
func ev_col_0():
	(GM.f_sound_play(177.0))
	(GM.f_instance_destroy(self))
