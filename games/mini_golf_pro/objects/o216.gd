extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	(self.script_effectss())
func ev_draw():
	(GM.f_draw_sprite_ext(151.0, 0.0, x, y, 1.0, 1.0, 0.0, 0.0, 0.1))
