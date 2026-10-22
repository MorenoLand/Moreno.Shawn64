extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_image_single = 0.0
func ev_create():
	(GM.f_sound_play(138.0))
	(self.script_adddamage())
func ev_other_7():
	v_image_single = (image_number - 1.0)
	(GM.f_instance_create(x, y, 497.0))
	for _r514 in range(int((50.0))):
		(GM.f_instance_create(((x + 74.0) + (GM.f_random(17.0))), ((y + 162.0) + (GM.f_random(8.0))), 599.0))
	for _r515 in range(int((15.0))):
		(GM.f_instance_create(((x + 74.0) + (GM.f_random(17.0))), ((y + 162.0) + (GM.f_random(8.0))), 608.0))
	(GM.f_sound_play(132.0))
