extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = 0.0
func ev_col_56():
	if ((image_single < 10.0)):
		image_single = 10.0
		for _r96 in range(int((35.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 30.0))
		(GM.f_sound_play(36.0))
		(self.script_adddamage())
func ev_col_53():
	if ((absf(image_single - 9.0) < 0.00001)):
		for _r97 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 30.0))
		(GM.f_sound_play(36.0))
		(self.script_adddamage())
	if ((image_single < 10.0)):
		image_single = image_single + 1.0
		(GM.f_sound_play(34.0))
		for _r98 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 30.0))
