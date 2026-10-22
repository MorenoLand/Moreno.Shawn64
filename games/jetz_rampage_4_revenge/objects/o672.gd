extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_image_single = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_floor((GM.f_random(3.999))))
	if (GM.eq(v_wow, 0.0)):
		speed = 10.0
		v_image_single = 0.0
	if (GM.eq(v_wow, 1.0)):
		speed = 6.0
		v_image_single = 1.0
	if (GM.eq(v_wow, 2.0)):
		speed = 2.0
		v_image_single = 2.0
		depth = 3.0
	if (GM.eq(v_wow, 3.0)):
		speed = 1.0
		v_image_single = 3.0
		depth = 4.0
	direction = 270.0
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
func ev_other_0():
	y = 0.0
	x = (GM.f_random(GM.room_width))
