extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	(self.script_effectss())
	if ((absf((GM.f_instance_number(86.0)) - 1.0) < 0.00001)):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 278.0))
	else:
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 88.0))
