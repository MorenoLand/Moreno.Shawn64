extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	image_speed = 0.0
	image_index = 0.0
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite(182.0, 0.0, x, y))
	(GM.f_texture_set_interpolation(0.0))
