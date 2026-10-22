extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	(GM.f_sound_loop(30.0))
func ev_other_5():
	(GM.f_sound_stop(30.0))
func ev_draw():
	(GM.f_draw_sprite_ext(140.0, 1.0, x, ((y + sprite_height) - 5.0), 1.0, 1.0, 0.0, 16777215.0, 0.1))
	(GM.f_draw_sprite(140.0, 0.0, x, y))
	(GM.f_draw_sprite_ext(140.0, 1.0, x, (((y + sprite_height) + 120.0) - 5.0), 1.0, 1.0, 0.0, 16777215.0, 0.1))
	(GM.f_draw_sprite(140.0, 0.0, x, (y + 120.0)))
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(141.0, (GM.f_random(8.0)), (x - 10.0), (y + 120.0), 1.0, 1.0, 90.0, 16777215.0, 0.7))
	(GM.f_draw_set_blend_mode(0.0))
