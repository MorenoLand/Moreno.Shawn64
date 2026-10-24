extends "res://games/mw2/objects/o126.gd"
func ev_create():
	(GM.f_sound_play(39.0))
	gravity_direction = gravity_direction + 0.0
	gravity = gravity + 0.2
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_move_towards_point(self, (GM.mouse_x + (GM.f_random(50.0))), GM.mouse_y, 15.0))
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_move_towards_point(self, (GM.mouse_x - (GM.f_random(50.0))), GM.mouse_y, 15.0))
		else:
			(GM.f_move_towards_point(self, GM.mouse_x, GM.mouse_y, 15.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
