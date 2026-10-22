extends "res://games/jetzrampage/scripts.gd"
var v_fall = 0.0
var v_mypower = 0.0
func ev_create():
	v_fall = 0.0
	v_mypower = 5.0
func ev_col_144():
	(GM.f_instance_create(0.0, 0.0, 132.0))
	(GM.f_sound_play(15.0))
	for _r28 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_create((x + 41.0), (y + 40.0), 108.0))
	(GM.f_instance_destroy(self))
func ev_col_124():
	(GM.f_instance_create(0.0, 0.0, 132.0))
	(GM.f_sound_play(15.0))
	for _r29 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_create((x + 41.0), (y + 40.0), 108.0))
	(GM.f_instance_destroy(self))
func ev_col_108():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 109.0))
	(GM.f_instance_destroy(self))
func ev_col_101():
	(GM.f_instance_create(0.0, 0.0, 132.0))
	(GM.f_sound_play(15.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
	for _r30 in range(int((100.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
	(GM.f_instance_create((x + 41.0), (y + 40.0), 108.0))
	(GM.f_instance_destroy(self))
