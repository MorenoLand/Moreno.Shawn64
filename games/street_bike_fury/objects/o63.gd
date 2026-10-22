extends "res://games/street_bike_fury/scripts.gd"
var v_wee = 0.0
func ev_create():
	image_speed = 0.0
	image_index = 0.0
	v_wee = (GM.f_floor((GM.f_random(2.0))))
	if (GM.eq(v_wee, 0.0)):
		(GM.f_instance_destroy(self))
		return
	v_wee = (GM.f_floor((GM.f_random(2.0))))
	if (GM.eq(v_wee, 0.0)):
		(GM.f_instance_create(x, (y - 11.0), 232.0))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite(63.0, 0.0, x, y))
	(GM.f_texture_set_interpolation(0.0))
