extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	(GM.f_motion_set(self, 270.0, 25.0))
	gravity_direction = 270.0
	gravity = 0.2
func ev_step():
	if (((y > (GM.view_yview[0] + 768.0)))):
		(GM.f_instance_destroy(self))
