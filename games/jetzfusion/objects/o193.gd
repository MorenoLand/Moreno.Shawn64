extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_instance_create(0.0, 0.0, 359.0))
func ev_other_7():
	(GM.f_instance_destroy(self))
