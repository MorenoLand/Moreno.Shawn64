extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	pass
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	image_xscale = image_xscale + 0.1
	image_yscale = image_yscale + 0.1
	image_alpha = image_alpha - 0.1
	if ((image_alpha < 0.0)):
		(GM.f_instance_destroy(self))
