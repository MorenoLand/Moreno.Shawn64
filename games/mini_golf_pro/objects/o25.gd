extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	hspeed = (-5.0)
	(self.script_effectss())
func ev_other_0():
	if ((x < 10.0)):
		(GM.f_move_wrap(self, 1.0, 0.0, 128.0))
func ev_draw():
	if ((absf(GM.G["effects"] - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(22.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.1))
	else:
		(GM.f_draw_sprite(22.0, 0.0, x, y))
