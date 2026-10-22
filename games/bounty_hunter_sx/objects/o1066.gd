extends "res://games/bounty_hunter_sx/objects/o490.gd"
var v_image_single = 0.0
func ev_create():
	v_mypower = 3.0
	v_image_single = (GM.f_random(6.0))
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
