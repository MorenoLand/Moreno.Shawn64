extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = 0.0
func ev_col_56():
	if ((v_image_single < 4.0)):
		v_image_single = 4.0
		(self.script_adddamage())
		for _r99 in range(int((45.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
		(GM.f_sound_play(36.0))
func ev_col_53():
	if ((absf(v_image_single - 3.0) < 0.00001)):
		(self.script_adddamage())
		for _r100 in range(int((35.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
		(GM.f_sound_play(36.0))
	if ((v_image_single < 4.0)):
		v_image_single = v_image_single + 1.0
		(GM.f_sound_play(34.0))
		for _r101 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
