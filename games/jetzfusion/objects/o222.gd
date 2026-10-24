extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = 0.0
func ev_col_56():
	if ((image_single < 3.0)):
		for _r295 in range(int((15.0))):
			(GM.f_instance_create((x + 36.0), (y + 80.0), 228.0))
		image_single = 3.0
		(GM.f_sound_play(34.0))
		(GM.f_sound_play(36.0))
		(GM.f_sound_play(46.0))
		(GM.f_instance_create(x, y, 232.0))
		(GM.f_instance_destroy(self))
func ev_col_53():
	if ((absf(image_single - 2.0) < 0.00001)):
		(GM.f_sound_play(36.0))
		(GM.f_sound_play(46.0))
		(GM.f_instance_create(x, y, 232.0))
		(GM.f_instance_destroy(self))
	if ((image_single < 3.0)):
		for _r296 in range(int((15.0))):
			(GM.f_instance_create((x + 36.0), (y + 80.0), 228.0))
		image_single = image_single + 1.0
		(GM.f_sound_play(34.0))
	GM.G["damage"] = GM.G["damage"] + 0.5
