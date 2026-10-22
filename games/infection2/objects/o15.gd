extends "res://games/infection2/scripts.gd"
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(23.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.4))
	(GM.f_draw_set_blend_mode(0.0))
