extends "res://games/street_bike_fury/objects/o1.gd"
var v_wow = 0.0
func ev_create():
	if ((absf(GM.room - 2.0) < 0.00001)):
		hspeed = ((-2.0) * GM.G["gspeed"])
		(GM.f_instance_create(x, y, 80.0))
		v_wow = (GM.f_floor((GM.f_random(1.9999999))))
		if ((absf(v_wow - 1.0) < 0.00001)):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 103.0))
func ev_col_78():
	x = x + 9590.0
func ev_draw():
	(GM.f_draw_sprite_ext(67.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.6))
