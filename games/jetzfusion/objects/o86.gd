extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = 4.0
func ev_step():
	if ((((GM.view_xview[0] - sprite_width) < x))):
		if ((((GM.view_xview[0] + 800.0) > x))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 24.0))
