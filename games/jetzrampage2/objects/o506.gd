extends "res://games/jetzrampage2/objects/o219.gd"
func ev_create():
	v_mypower = 5.0
	v_alive = 1.0
func ev_col_517():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 233.0))
	(GM.f_sound_play(15.0))
	for _r372 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 233.0))
	(GM.f_sound_play(15.0))
	for _r373 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_destroy(self))
