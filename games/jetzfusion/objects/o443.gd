extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	depth = (GM.vb(407.0, "depth") + 1.0)
func ev_draw():
	if ((GM.vb(7.0, "hspeed") > 0.0)):
		(GM.f_draw_sprite(28.0, 1.0, (GM.vb(407.0, "x") + 25.0), (GM.vb(407.0, "y") + 20.0)))
	if ((GM.vb(7.0, "hspeed") < 0.0)):
		(GM.f_draw_sprite(29.0, 1.0, (GM.vb(407.0, "x") - 3.0), (GM.vb(407.0, "y") + 20.0)))
