extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = 0.0
func ev_col_56():
	if ((image_single < 4.0)):
		(self.script_adddamage())
		for _r110 in range(int((25.0))):
			(GM.f_instance_create(((x + 12.0) + (GM.f_random(11.0))), ((y + 6.0) + (GM.f_random(13.0))), 25.0))
		(GM.f_sound_play(36.0))
		(GM.f_instance_create(x, y, 86.0))
		(GM.f_instance_destroy(self))
func ev_col_53():
	if ((absf(image_single - 3.0) < 0.00001)):
		(self.script_adddamage())
		for _r111 in range(int((25.0))):
			(GM.f_instance_create(((x + 12.0) + (GM.f_random(11.0))), ((y + 6.0) + (GM.f_random(13.0))), 25.0))
		(GM.f_sound_play(36.0))
		(GM.f_instance_create(x, y, 86.0))
		(GM.f_instance_destroy(self))
	if ((image_single < 4.0)):
		image_single = image_single + 1.0
		(GM.f_sound_play(34.0))
