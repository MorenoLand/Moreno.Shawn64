extends "res://games/mini_golf_pro/scripts.gd"
func ev_draw():
	if ((absf(GM.G["effects"] - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(28.0, 0.0, x, ((y + sprite_height) - 14.0), 1.0, 1.0, 0.0, 16777215.0, 0.1))
	(GM.f_draw_sprite_ext(28.0, GM.G["holeon"], x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
