extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	x = (50.0 + (GM.f_random((GM.room_width - 100.0))))
	y = (200.0 + (GM.f_random(550.0)))
	(GM.f_path_start(self, 5.0, 10.0, 1.0, 0.0))
func ev_step():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 812.0))
func ev_col_791():
	(GM.f_sound_play(152.0))
	(GM.f_instance_create((50.0 + (GM.f_random((GM.room_width - 100.0)))), 1100.0, 807.0))
	(GM.f_instance_create(x, y, 810.0))
	(GM.f_instance_destroy(self))
