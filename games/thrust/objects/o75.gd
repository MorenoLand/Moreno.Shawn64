extends "res://games/thrust/scripts.gd"
func ev_create():
	(GM.f_sound_loop(20.0))
func ev_step():
	GM.vsetb(0.0, "gravity_direction", (GM.f_point_direction((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)), (GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)), (x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)))))
func ev_other_5():
	(GM.f_sound_stop(20.0))
