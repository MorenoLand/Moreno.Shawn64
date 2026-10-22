extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_draw():
	if (((absf((GM.f_instance_number(1091.0)) - 1.0) < 0.00001))):
		(GM.f_draw_sprite(1076.0, (-1.0), GM.vb(1091.0, "x"), GM.vb(1091.0, "y")))
