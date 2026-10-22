extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_hitme = 0.0
var v_image_single = 0.0
var v_wee = 0.0
var v_wow = 0.0
func ev_create():
	v_hitme = 1.0
	v_image_single = 0.0
	if ((absf(sprite_index - 475.0) < 0.00001)):
		v_wee = (GM.f_round((GM.f_random(2.0))))
		if (GM.eq(v_wee, 0.0)):
			sprite_index = 820.0
	if ((absf(sprite_index - 844.0) < 0.00001)):
		v_wee = (GM.f_round((GM.f_random(2.0))))
		if (GM.eq(v_wee, 0.0)):
			sprite_index = 895.0
	if ((absf(sprite_index - 858.0) < 0.00001)):
		v_image_single = (GM.f_floor((GM.f_random(1.99))))
func ev_alarm_1():
	sprite_index = 488.0
func ev_alarm_0():
	v_hitme = 1.0
func ev_col_656():
	if ((absf(sprite_index - 820.0) < 0.00001)):
		sprite_index = 475.0
	if ((absf(sprite_index - 895.0) < 0.00001)):
		sprite_index = 844.0
	if (((absf(sprite_index - 792.0) < 0.00001) or (absf(sprite_index - 858.0) < 0.00001))):
		if ((absf(v_image_single - 0.0) < 0.00001)):
			for _r87 in range(int((10.0))):
				(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
			for _r88 in range(int((10.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
			v_wow = (GM.f_floor((GM.f_random(1.999))))
			if (GM.eq(v_wow, 0.0)):
				(GM.f_instance_create(x, (y - 1.0), 883.0))
			(GM.f_sound_play(209.0))
			v_image_single = 1.0
			if ((absf(sprite_index - 858.0) < 0.00001)):
				v_image_single = 2.0
	if (((absf(sprite_index - 793.0) < 0.00001) and (absf(v_image_single - 0.0) < 0.00001))):
		sprite_index = 792.0
		v_image_single = 2.0
	if ((absf(sprite_index - 641.0) < 0.00001)):
		sprite_index = 489.0
		v_image_single = 0.0
	if ((absf(sprite_index - 642.0) < 0.00001)):
		sprite_index = 490.0
		v_image_single = 0.0
	if ((absf(sprite_index - 552.0) < 0.00001)):
		sprite_index = 488.0
		v_image_single = 0.0
	if ((absf(v_hitme - 1.0) < 0.00001)):
		for _r89 in range(int((2.0))):
			(GM.f_instance_create((x + (GM.f_random((sprite_width - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
		for _r90 in range(int((2.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		if ((absf(sprite_index - 792.0) >= 0.00001)):
			if (((absf(v_image_single - 0.0) < 0.00001) or (absf(v_image_single - 1.0) < 0.00001))):
				v_image_single = v_image_single + 1.0
		alarm[int(0.0)] = 50.0
		v_hitme = 0.0
