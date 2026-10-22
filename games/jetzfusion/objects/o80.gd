extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = 0.0
func ev_col_56():
	if ((v_image_single < 4.0)):
		v_image_single = 4.0
		(self.script_adddamage())
		for _r106 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
		(GM.f_sound_play(42.0))
		(GM.f_instance_create(x, y, 81.0))
		(GM.f_instance_destroy(self))
func ev_col_53():
	if ((absf(v_image_single - 2.0) < 0.00001)):
		(self.script_adddamage())
		for _r107 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
		(GM.f_sound_play(42.0))
		(GM.f_instance_create(x, y, 81.0))
		(GM.f_instance_destroy(self))
	if ((v_image_single < 4.0)):
		v_image_single = v_image_single + 1.0
		(GM.f_sound_play(34.0))
		for _r108 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
