extends "res://games/street_bike_fury/scripts.gd"
var v_boom = 0.0
var v_set = 0.0
var v_wee = 0.0
var v_yset = 0.0
func ev_create():
	v_set = (GM.f_floor((GM.f_random(3.0))))
	v_boom = 1.0
	v_yset = y
func ev_step():
	if ((absf(v_boom - 1.0) < 0.00001)):
		if ((absf(GM.room - 2.0) < 0.00001)):
			if ((GM.vb(0.0, "x") > x)):
				(GM.f_instance_create(x, y, 217.0))
				for _w116 in GM.with_list((266.0), self):
					if _w116._dead:
						continue
					_w116.other = self
					_w116.ev_user(0.0)
				if ((y > v_yset)):
					gravity = 0.0
					speed = 0.0
func ev_other_10():
	if ((absf(v_boom - 1.0) < 0.00001)):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 261.0))
		for _r117 in range(int((150.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 72.0))
			GM.vsetb(v_wee, "hspeed", ((-10.0) + (GM.f_random(10.0))))
			GM.vsetb(v_wee, "vspeed", (-(GM.f_random(25.0))))
		for _r118 in range(int((50.0))):
			v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 249.0))
		vspeed = (-9.0)
		gravity = 0.3
		(GM.f_instance_create(x, y, 218.0))
		(GM.f_instance_create(x, y, 138.0))
		v_set = 3.0
		v_boom = 0.0
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite(87.0, v_set, x, y))
	(GM.f_texture_set_interpolation(0.0))
