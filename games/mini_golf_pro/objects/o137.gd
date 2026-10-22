extends "res://games/mini_golf_pro/scripts.gd"
func ev_draw():
	if ((absf(GM.vb(0.0, "depth") - (-1215752199.0)) < 0.00001)):
		(GM.f_draw_sprite_ext(35.0, 0.0, GM.vb(0.0, "x"), (GM.vb(0.0, "y") + 160.0), 1.0, 1.0, 0.0, 0.0, 0.1))
