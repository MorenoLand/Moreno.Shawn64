extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	if ((((GM.f_instance_number(179.0)) > 1.0))):
		(GM.f_instance_destroy(self))
func ev_draw():
	if (((GM.vb(7.0, "hspeed") > 0.0))):
		(GM.f_draw_sprite(207.0, (GM.vb(7.0, "hspeed") / 0.5), (GM.vb(7.0, "x") + 17.0), (GM.vb(7.0, "y") + 20.0)))
	else:
		(GM.f_draw_sprite(205.0, ((-GM.vb(7.0, "hspeed")) / 0.5), (GM.vb(7.0, "x") + 17.0), (GM.vb(7.0, "y") + 20.0)))
