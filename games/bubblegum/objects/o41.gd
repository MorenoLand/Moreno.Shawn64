extends "res://games/bubblegum/scripts.gd"
var v_mypower = 0.0
func ev_create():
	v_mypower = 3.0
	(GM.f_sound_play(2.0))
	for _r46 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 25.0))
func ev_col_42():
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		(GM.f_sound_play(18.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 44.0))
		(GM.f_instance_destroy(self))
