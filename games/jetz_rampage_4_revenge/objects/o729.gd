extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_direction2 = 0.0
func ev_create():
	(GM.f_motion_add(self, (20.0 + (GM.f_random(140.0))), 15.0))
	v_direction2 = 180.0
	gravity = 0.4
	gravity_direction = 270.0
func ev_step():
	(GM.f_motion_add(self, v_direction2, 0.3))
	v_direction2 = v_direction2 + 24.0
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 691.0))
func ev_col_603():
	for _r424 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r425 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r426 in range(int((3.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
	(GM.f_sound_play(170.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
