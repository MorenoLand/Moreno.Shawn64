extends "res://games/holiday_hunting/scripts.gd"
var v_image_scale = 0.0
func ev_create():
	(GM.f_action_move(self, "000100000", 5.0, 0.0))
func ev_step():
	v_image_scale = v_image_scale - 0.5
	if ((v_image_scale < 0.0)):
		(GM.f_instance_destroy(self))
