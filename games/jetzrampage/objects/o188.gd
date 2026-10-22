extends "res://games/jetzrampage/objects/o175.gd"
func ev_create():
	v_image_single = (GM.f_random(3.0))
	(GM.f_action_move(self, "000100000", 15.0, 0.0))
