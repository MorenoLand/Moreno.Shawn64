extends "res://games/jetzrampage/scripts.gd"
var v_fall = 0.0
var v_mypower = 0.0
func ev_create():
	v_fall = 0.0
	v_mypower = 5.0
	v_mypower = 5.0
func ev_col_108():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 107.0))
	(GM.f_sound_play(15.0))
	for _r102 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
	(GM.f_instance_destroy(self))
func ev_col_101():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 107.0))
	(GM.f_sound_play(15.0))
	for _r103 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 108.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 107.0))
		(GM.f_sound_play(15.0))
		for _r104 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 90.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 108.0))
		(GM.f_instance_destroy(self))
