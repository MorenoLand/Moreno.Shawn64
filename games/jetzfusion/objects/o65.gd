extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_step():
	if ((((GM.view_xview[0] - sprite_width) < x))):
		if ((((GM.view_xview[0] + 800.0) > x))):
			for _r57 in range(int((3.0))):
				(GM.f_instance_create((x + 28.0), (y + 70.0), 29.0))
func ev_other_7():
	for _r58 in range(int((15.0))):
		(GM.f_instance_create(((x + 18.0) + (GM.f_random(28.0))), ((y + 120.0) + (GM.f_random(11.0))), 27.0))
	(GM.f_sound_play(42.0))
	(GM.f_sound_play(34.0))
	v_image_single = 9.0
