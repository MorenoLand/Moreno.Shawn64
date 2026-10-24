extends "res://games/jetzfusion/scripts.gd"
var v_wow = 0.0
func ev_other_4():
	v_wow = (GM.f_round((GM.f_random(1.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		speed = 10.0
		sprite_index = 310.0
	else:
		if ((absf(v_wow - 1.0) < 0.00001)):
			speed = 6.0
			sprite_index = 311.0
	v_wow = (GM.f_round((GM.f_random(1.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		direction = 0.0
		image_single = 1.0
	else:
		if ((absf(v_wow - 1.0) < 0.00001)):
			direction = 180.0
			image_single = 0.0
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(400.0))
func ev_other_0():
	if (((hspeed < 0.0))):
		if (((x < (-sprite_width)))):
			v_wow = (GM.f_round((GM.f_random(1.0))))
			if ((absf(v_wow - 0.0) < 0.00001)):
				speed = 10.0
				sprite_index = 310.0
			else:
				if ((absf(v_wow - 1.0) < 0.00001)):
					speed = 6.0
					sprite_index = 311.0
			v_wow = (GM.f_round((GM.f_random(1.0))))
			if ((absf(v_wow - 0.0) < 0.00001)):
				direction = 0.0
				x = (0.0 - sprite_width)
				y = (GM.f_random(400.0))
				image_single = 1.0
			else:
				if ((absf(v_wow - 1.0) < 0.00001)):
					direction = 180.0
					x = GM.room_width
					y = (GM.f_random(400.0))
					image_single = 0.0
	if (((hspeed > 0.0))):
		if (((x > GM.room_width))):
			v_wow = (GM.f_round((GM.f_random(1.0))))
			if ((absf(v_wow - 0.0) < 0.00001)):
				speed = 10.0
				sprite_index = 310.0
			else:
				if ((absf(v_wow - 1.0) < 0.00001)):
					speed = 6.0
					sprite_index = 311.0
			v_wow = (GM.f_round((GM.f_random(1.0))))
			if ((absf(v_wow - 0.0) < 0.00001)):
				direction = 0.0
				x = (0.0 - sprite_width)
				y = (GM.f_random(400.0))
				image_single = 1.0
			else:
				if ((absf(v_wow - 1.0) < 0.00001)):
					direction = 180.0
					x = GM.room_width
					y = (GM.f_random(400.0))
					image_single = 0.0
