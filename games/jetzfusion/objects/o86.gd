extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = 4.0
func ev_step():
	if ((((GM.view_xview[0] - sprite_width) < x))):
		if ((((GM.view_xview[0] + 800.0) > x))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 24.0))
