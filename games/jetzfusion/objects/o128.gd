extends "res://games/jetzfusion/objects/o57.gd"
func ev_create():
	for _r635 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random((sprite_width - 1.0)))), (y + (GM.f_random((sprite_height - 1.0)))), 22.0))
	if (((GM.vb(7.0, "x") > x))):
		direction = 0.0
		speed = 15.0
	else:
		direction = 180.0
		speed = 15.0
	if ((((GM.view_xview[0] - sprite_width) < x))):
		if ((((GM.view_xview[0] + 800.0) > x))):
			(GM.f_sound_play(21.0))
	alarm[int(0.0)] = 35.0
	(GM.f_motion_add(self, GM.G["helpvar1"], GM.G["helpvar2"]))
