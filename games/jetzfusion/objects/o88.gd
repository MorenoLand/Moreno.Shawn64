extends "res://games/jetzfusion/scripts.gd"
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_round((GM.f_random(2.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		speed = 10.0
		image_single = 0.0
	if ((absf(v_wow - 1.0) < 0.00001)):
		speed = 6.0
		image_single = 1.0
	if ((absf(v_wow - 2.0) < 0.00001)):
		speed = 2.0
		image_single = 2.0
		depth = 3.0
	direction = 270.0
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
func ev_col_87():
	if (((absf(v_wow - 1.0) < 0.00001))):
		for _r113 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
		y = 0.0
func ev_other_0():
	y = 0.0
