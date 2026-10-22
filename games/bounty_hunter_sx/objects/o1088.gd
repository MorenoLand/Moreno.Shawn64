extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_draw():
	if (((absf((GM.f_instance_number(482.0)) - 1.0) < 0.00001))):
		(GM.f_draw_sprite(1071.0, (-1.0), GM.vb(482.0, "x"), GM.vb(482.0, "y")))
