extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 3.0, 0.0))
	if ((((GM.f_random(2.0)) < 1.0))):
		sprite_index = 42.0
		image_speed = 1.0
func ev_col_69():
	GM.score = GM.score + 100.0
	(GM.f_instance_destroy(self))
