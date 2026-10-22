extends "res://games/street_bike_fury/scripts.gd"
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(80.0, 0.0, x, y, 2.0, 2.0, 0.0, 65535.0, 0.5))
	(GM.f_draw_set_blend_mode(0.0))
