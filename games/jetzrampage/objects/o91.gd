extends "res://games/jetzrampage/scripts.gd"
func ev_col_16():
	(GM.f_instance_destroy(self))
	(GM.f_instance_create((x + (-20.0)), (y + (-20.0)), 107.0))
	for _r45 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
func ev_col_10():
	gravity_direction = 270.0
	gravity = 0.3
