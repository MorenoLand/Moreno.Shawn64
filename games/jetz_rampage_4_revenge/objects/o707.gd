extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_fluh = 0.0
func ev_create():
	gravity_direction = 270.0
	(GM.f_sound_play(122.0))
	gravity = 0.5
func ev_col_656():
	v_fluh = GM.vget(self.other, "v_wooper")
	direction = ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0)
	speed = speed + (4.0 + (GM.f_random(3.0)))
func ev_col_604():
	(GM.f_sound_play(130.0))
	for _r402 in range(int((20.0))):
		(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r403 in range(int((10.0))):
		(GM.f_instance_create(((x + 13.0) + (GM.f_random(15.0))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_instance_destroy(self))
func ev_other_10():
	(GM.f_sound_play(130.0))
	for _r404 in range(int((20.0))):
		(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random((sprite_height - 2.5)))), 599.0))
	for _r405 in range(int((10.0))):
		(GM.f_instance_create(((x + 13.0) + (GM.f_random(15.0))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
