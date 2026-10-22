extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_draw():
	if (((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) > (x + (sprite_width / 2.0)))):
		(GM.f_draw_sprite(873.0, (speed / 2.0), x, y))
	else:
		(GM.f_draw_sprite(874.0, (speed / 2.0), x, y))
	(GM.f_draw_sprite(1019.0, ((((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_width") / 2.0)))) + 90.0)) / 10.0), x, y))
