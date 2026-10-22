extends "res://games/jetzrampage2/scripts.gd"
func ev_col_10():
	for _r92 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
	(GM.f_instance_destroy(self))
