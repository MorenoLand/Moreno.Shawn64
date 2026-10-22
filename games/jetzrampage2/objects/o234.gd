extends "res://games/jetzrampage2/scripts.gd"
var v_image_single = 0.0
func ev_create():
	(GM.f_sound_play(84.0))
	if ((((GM.f_random(2.0)) < 1.0))):
		v_image_single = 1.0
	else:
		v_image_single = 0.0
