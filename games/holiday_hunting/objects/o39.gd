extends "res://games/holiday_hunting/scripts.gd"
var v_image_scale = 0.0
func ev_step():
	if ((v_image_scale < 0.0)):
		(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_instance_destroy(self))
