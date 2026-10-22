extends "res://games/jetzfusion/scripts.gd"
var v_mypower = 0.0
func ev_create():
	v_mypower = 5.0
func ev_step():
	if ((((GM.f_random(5.0)) < 1.0))):
		(GM.f_instance_create((x + (GM.f_random(6.0))), ((y + sprite_height) - 15.0), 365.0))
func ev_col_53():
	if (((absf(v_mypower - 2.0) < 0.00001))):
		for _w509 in GM.with_list((365.0), self):
			if _w509._dead:
				continue
			_w509.other = self
			(GM.f_instance_destroy(_w509))
		(GM.f_sound_play(36.0))
		for _r510 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 47.0))
		for _r511 in range(int((80.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 367.0))
		(GM.f_instance_destroy(self))
	else:
		(GM.f_sound_play(34.0))
		for _r512 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
	v_mypower = v_mypower + (-1.0)
