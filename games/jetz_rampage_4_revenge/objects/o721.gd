extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	direction = (20.0 + (GM.f_random(140.0)))
	speed = (10.0 + (GM.f_random(5.0)))
	gravity_direction = 270.0
	gravity = 0.4
func ev_step():
	if not ((((self.script_view_check(self)))) >= 0.5):
		(GM.f_instance_destroy(self))
func ev_col_603():
	for _r412 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r413 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
	(GM.f_sound_play(170.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
