extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(200.0))
	if (((absf(GM.room - 35.0) < 0.00001))):
		sprite_index = 530.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_col_117():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(200.0))
