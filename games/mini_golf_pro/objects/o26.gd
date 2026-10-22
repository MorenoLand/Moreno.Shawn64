extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	hspeed = ((-2.5) - (GM.f_random(2.0)))
func ev_other_0():
	if ((x < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite_ext(27.0, (-1.0), x, y, 1.0, 1.0, 0.0, 16777215.0, 0.5))
