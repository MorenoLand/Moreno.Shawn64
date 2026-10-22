extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	for _r95 in range(int((10.0))):
		(GM.f_instance_create((((x + (sprite_width / 2.0)) - 50.0) + (GM.f_random(100.0))), (((y + (sprite_height / 2.0)) - 50.0) + (GM.f_random(100.0))), 510.0))
	(GM.f_instance_create(0.0, 0.0, 129.0))
func ev_other_7():
	(GM.f_instance_destroy(self))
