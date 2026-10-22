extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	(self.script_effectss())
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(79.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.5))
	(GM.f_draw_set_blend_mode(0.0))
