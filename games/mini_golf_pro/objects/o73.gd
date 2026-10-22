extends "res://games/mini_golf_pro/objects/o79.gd"
func ev_draw():
	if ((absf(v_clear - 0.0) < 0.00001)):
		(GM.f_draw_sprite_ext(29.0, 2.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
	else:
		(GM.f_draw_sprite_ext(29.0, 2.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.5))
	if ((absf(GM.G["effects"] - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(29.0, 1.0, x, ((y + sprite_height) - 10.0), 1.0, 1.0, 0.0, 16777215.0, 0.1))
