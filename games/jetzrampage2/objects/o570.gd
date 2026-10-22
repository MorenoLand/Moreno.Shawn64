extends "res://games/jetzrampage2/scripts.gd"
func ev_draw():
	if (((absf((GM.f_instance_number(571.0)) - 0.0) < 0.00001))):
		direction = (GM.f_point_direction((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)), (GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)), GM.vb(569.0, "x"), GM.vb(569.0, "y")))
	else:
		direction = (GM.f_point_direction((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)), (GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)), GM.vb(571.0, "x"), GM.vb(571.0, "y")))
	(GM.f_draw_sprite(524.0, (direction / 10.0), GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 35.0)))
