extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	if ((1.0 > 0.0)):
		x = ((GM.f_round((x / 1.0))) * 1.0)
	if ((1.0 > 0.0)):
		y = ((GM.f_round((y / 1.0))) * 1.0)
	if ((((GM.f_random(3.0)) < 1.0))):
		sprite_index = 1206.0
		image_speed = 1.0
		depth = 10.0
func ev_col_1237():
	(GM.f_instance_destroy(self))
func ev_col_1235():
	(GM.f_instance_destroy(self))
