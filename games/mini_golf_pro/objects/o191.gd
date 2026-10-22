extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	image_alpha = 0.5
	for _w28 in GM.with_list((190.0), self):
		if _w28._dead:
			continue
		_w28.other = self
		_w28.image_xscale = 1.1
		_w28.image_yscale = 1.1
	(GM.f_sound_play(29.0))
func ev_step():
	image_xscale = image_xscale + 0.05
	image_yscale = image_yscale + 0.05
	image_alpha = image_alpha - 0.02
	if ((image_alpha < 0.0)):
		(GM.f_instance_destroy(self))
