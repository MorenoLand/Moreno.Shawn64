extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	image_alpha = (0.05 + (GM.f_random(0.05)))
	hspeed = 1.0
	image_xscale = (1.0 + (GM.f_random(1.0)))
	image_yscale = (1.0 + (GM.f_random(1.0)))
	image_speed = 0.0
	image_index = (GM.f_floor((GM.f_random(2.9999))))
func ev_other_0():
	if (((hspeed > 0.0) and (x > GM.room_width))):
		x = (-sprite_width)
		y = (GM.f_random(GM.room_height))
	if (((hspeed < 0.0) and (x < (-sprite_width)))):
		x = GM.room_width
		y = (GM.f_random(GM.room_height))
