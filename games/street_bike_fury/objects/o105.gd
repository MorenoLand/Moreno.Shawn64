extends "res://games/street_bike_fury/scripts.gd"
var v_set = 0.0
func ev_create():
	v_set = (GM.f_floor((GM.f_random(3.0))))
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite(87.0, v_set, x, y))
	(GM.f_texture_set_interpolation(0.0))
