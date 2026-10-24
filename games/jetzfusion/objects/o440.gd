extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = 0.0
	gravity_direction = 270.0
	gravity = 0.1
func ev_col_448():
	GM.vset(self.other, "v_haveshotgun", 1.0)
	(GM.f_sound_play(37.0))
	(GM.f_instance_destroy(self))
func ev_col_407():
	GM.vset(self.other, "v_haveshotgun", 1.0)
	(GM.f_sound_play(37.0))
	(GM.f_instance_destroy(self))
func ev_col_45():
	gravity_direction = 270.0
	gravity = 0.0
	vspeed = 0.0
