extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	hspeed = ((-8.0) * GM.G["gspeed"])
func ev_col_78():
	x = x + 9590.0
func ev_draw():
	(GM.f_draw_sprite_ext(67.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.3))
