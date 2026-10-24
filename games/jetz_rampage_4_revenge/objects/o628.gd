extends "res://games/jetz_rampage_4_revenge/objects/o506.gd"
func ev_create():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 7.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 498.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 497.0))
	for _r811 in range(int((150.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_sound_play(140.0))
	v_hitme = 1.0
	image_single = 0.0
