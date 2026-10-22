extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	depth = depth - ((y / 10000000.0))
func ev_draw():
	if ((absf(GM.G["effects"] - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(86.0, 1.0, (x + sprite_width), ((y + sprite_height) + 80.0), 1.0, 1.0, 180.0, 0.0, 0.1))
	(GM.f_draw_sprite(86.0, 0.0, x, y))
