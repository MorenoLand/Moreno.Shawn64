extends "res://games/mini_golf_pro/scripts.gd"
var v_glide = 0.0
var v_hue = 0.0
var v_tempo = 0.0
var v_wee = 0.0
var v_yoff = 0.0
func ev_create():
	v_wee = (GM.f_floor((GM.f_random(1.99999))))
	y = (GM.f_random(GM.room_height))
	if (GM.eq(v_wee, 0.0)):
		direction = ((0.0 - 10.0) + (GM.f_random(20.0)))
		hspeed = (5.0 + (GM.f_random(5.0)))
		x = (-sprite_width)
		sprite_index = 110.0
	if (GM.eq(v_wee, 1.0)):
		hspeed = ((-5.0) - (GM.f_random(5.0)))
		x = GM.room_width
		sprite_index = 107.0
		direction = ((180.0 - 10.0) + (GM.f_random(20.0)))
	if ((absf((GM.f_instance_number(86.0)) - 1.0) < 0.00001)):
		depth = (-201.0)
	v_hue = (GM.f_floor((GM.f_random(1.99999))))
	v_glide = 3.0
	alarm[int(0.0)] = (30.0 + (GM.f_random(60.0)))
	v_yoff = 0.0
	v_tempo = 0.0
func ev_alarm_1():
	v_glide = 3.0
	alarm[int(0.0)] = (60.0 + (GM.f_random(60.0)))
func ev_alarm_0():
	v_glide = (-1.0)
	alarm[int(1.0)] = (60.0 + (GM.f_random(30.0)))
func ev_step():
	if ((absf(v_glide - 3.0) < 0.00001)):
		v_tempo = v_tempo + 0.03
	else:
		v_tempo = v_tempo - 0.05
	v_yoff = v_yoff + v_tempo
func ev_other_0():
	if (((x > (GM.room_width + 5.0)) or (x < ((-sprite_width) - 5.0)))):
		v_hue = (GM.f_floor((GM.f_random(1.99999))))
		v_wee = (GM.f_floor((GM.f_random(1.99999))))
		v_tempo = 0.0
		v_yoff = 0.0
		v_glide = 3.0
		alarm[int(0.0)] = (30.0 + (GM.f_random(60.0)))
		alarm[int(1.0)] = 20000.0
		y = (GM.f_random(GM.room_height))
		if (GM.eq(v_wee, 0.0)):
			direction = ((0.0 - 10.0) + (GM.f_random(20.0)))
			hspeed = (5.0 + (GM.f_random(5.0)))
			x = (-sprite_width)
			sprite_index = 110.0
		if (GM.eq(v_wee, 1.0)):
			hspeed = ((-5.0) - (GM.f_random(5.0)))
			x = GM.room_width
			sprite_index = 107.0
			direction = ((180.0 - 10.0) + (GM.f_random(20.0)))
func ev_draw():
	if ((hspeed > 0.0)):
		if (GM.eq(v_hue, 0.0)):
			(GM.f_draw_sprite_ext(110.0, v_glide, x, (y + v_yoff), 1.0, 1.0, 0.0, 255.0, 1.0))
		if (GM.eq(v_hue, 1.0)):
			(GM.f_draw_sprite_ext(110.0, v_glide, x, (y + v_yoff), 1.0, 1.0, 0.0, 65535.0, 1.0))
		if ((absf(GM.G["effects"] - 1.0) < 0.00001)):
			(GM.f_draw_sprite_ext(110.0, v_glide, x, (y + 200.0), 1.0, 1.0, 0.0, 0.0, 0.05))
	else:
		if (GM.eq(v_hue, 0.0)):
			(GM.f_draw_sprite_ext(107.0, v_glide, x, (y + v_yoff), 1.0, 1.0, 0.0, 255.0, 1.0))
		if (GM.eq(v_hue, 1.0)):
			(GM.f_draw_sprite_ext(107.0, v_glide, x, (y + v_yoff), 1.0, 1.0, 0.0, 65535.0, 1.0))
		if ((absf(GM.G["effects"] - 1.0) < 0.00001)):
			(GM.f_draw_sprite_ext(107.0, v_glide, x, (y + 200.0), 1.0, 1.0, 0.0, 0.0, 0.05))
