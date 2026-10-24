extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = 0.0
func ev_col_56():
	if ((image_single < 4.0)):
		(self.script_adddamage())
		for _r473 in range(int((55.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
		for _r474 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		for _r475 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 331.0))
		(GM.f_sound_play(36.0))
		image_single = 4.0
func ev_col_53():
	if ((absf(image_single - 3.0) < 0.00001)):
		(self.script_adddamage())
		for _r476 in range(int((55.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
		for _r477 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		for _r478 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 331.0))
		(GM.f_sound_play(36.0))
	if ((image_single < 4.0)):
		image_single = image_single + 1.0
		(GM.f_sound_play(34.0))
		for _r479 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
