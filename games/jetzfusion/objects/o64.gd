extends "res://games/jetzfusion/scripts.gd"
var v_image_single = 0.0
func ev_create():
	v_image_single = 0.0
func ev_col_56():
	if ((v_image_single < 3.0)):
		v_image_single = 3.0
		(GM.f_sound_play(36.0))
		(GM.f_sound_play(46.0))
		for _r55 in range(int((15.0))):
			(GM.f_instance_create((x + 26.0), (y + 82.0), 27.0))
		(GM.f_instance_create(x, y, 65.0))
		(GM.f_instance_destroy(self))
func ev_col_53():
	if ((absf(v_image_single - 2.0) < 0.00001)):
		(GM.f_sound_play(36.0))
		(GM.f_sound_play(46.0))
		(GM.f_instance_create(x, y, 65.0))
		(GM.f_instance_destroy(self))
	if ((v_image_single < 3.0)):
		for _r56 in range(int((15.0))):
			(GM.f_instance_create((x + 26.0), (y + 82.0), 27.0))
		v_image_single = v_image_single + 1.0
		(GM.f_sound_play(34.0))
	GM.G["damage"] = GM.G["damage"] + 0.5
