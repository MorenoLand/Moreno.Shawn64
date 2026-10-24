extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	image_single = 0.0
	(GM.f_sound_stop(54.0))
	(GM.f_instance_create((x + 0.0), (y + (-10.0)), 253.0))
	for _r334 in range(int((3.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 252.0))
	for _r335 in range(int((35.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 251.0))
	for _r336 in range(int((75.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
	(GM.f_sound_play(23.0))
