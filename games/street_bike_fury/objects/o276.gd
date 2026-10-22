extends "res://games/street_bike_fury/scripts.gd"
var v_wee = 0.0
var v_wit = 0.0
func ev_create():
	image_speed = 0.0
	image_index = 0.0
	v_wee = (GM.f_floor((GM.f_random(2.0))))
	if (GM.eq(v_wee, 0.0)):
		(GM.f_instance_destroy(self))
func ev_col_278():
	for _r127 in range(int((40.0))):
		v_wee = (GM.f_instance_create(((x - 10.0) + (GM.f_random(20.0))), ((y - 20.0) + (GM.f_random(40.0))), 67.0))
		GM.vsetb(v_wee, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_wee, "speed", (1.0 + (GM.f_random(4.0))))
	v_wit = (GM.f_instance_create(x, y, 277.0))
	GM.vsetb(v_wit, "direction", 90.0)
	GM.vsetb(v_wit, "speed", 3.0)
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite(204.0, 0.0, x, y))
	(GM.f_texture_set_interpolation(0.0))
