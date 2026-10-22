extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_speed = 0.5
	(GM.f_action_move(self, "000100000", 3.0, 0.0))
func ev_step():
	if (((x > (GM.view_xview[0] + 200.0)))):
		(GM.f_instance_change(self, 153.0, 1.0))
