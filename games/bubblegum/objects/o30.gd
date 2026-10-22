extends "res://games/bubblegum/scripts.gd"
func ev_step():
	if ((((GM.f_random(5.0)) < 1.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (sprite_height / 2.0)), 34.0))
