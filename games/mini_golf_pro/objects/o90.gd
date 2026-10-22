extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	(self.script_effectss())
func ev_draw():
	(GM.f_draw_set_blend_mode(1.0))
	(GM.f_draw_sprite_ext(32.0, 0.0, x, y, 0.5, 0.5, 0.0, 8388736.0, 0.9))
	(GM.f_draw_set_blend_mode(0.0))
