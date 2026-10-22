extends "res://games/jetzfusion/objects/o384.gd"
func ev_step():
	x = (GM.vb(7.0, "x") - 7.0)
	y = (GM.vb(7.0, "y") - 1.0)
func ev_draw():
	(GM.f_draw_sprite(331.0, (-1.0), (GM.vb(7.0, "x") - 7.0), (GM.vb(7.0, "y") - 1.0)))
func ev_keypress_17():
	if (((absf(v_what - 1.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 387.0))
		(GM.f_instance_destroy(self))
