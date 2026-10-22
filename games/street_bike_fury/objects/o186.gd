extends "res://games/street_bike_fury/scripts.gd"
func ev_draw():
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_sprite(149.0, 0.0, x, y))
	(GM.f_texture_set_interpolation(0.0))
