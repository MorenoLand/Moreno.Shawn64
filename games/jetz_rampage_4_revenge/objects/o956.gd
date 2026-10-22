extends "res://games/jetz_rampage_4_revenge/objects/o655.gd"
func ev_create():
	v_hitornot = 0.0
	(GM.f_sound_play(240.0))
	gravity_direction = 270.0
	gravity = 0.1
func ev_col_950():
	pass
func ev_col_946():
	pass
func ev_col_822():
	pass
func ev_col_522():
	pass
func ev_col_489():
	(GM.f_instance_destroy(self))
func ev_col_7():
	self.ev_user(0.0)
func ev_other_0():
	(GM.f_instance_destroy(self))
