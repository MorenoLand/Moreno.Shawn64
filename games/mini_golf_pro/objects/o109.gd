extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	(self.script_effectss())
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 90.0))
