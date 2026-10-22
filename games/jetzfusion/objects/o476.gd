extends "res://games/jetzfusion/objects/o302.gd"
func ev_create():
	hspeed = GM.vb(7.0, "hspeed")
	vspeed = GM.vb(7.0, "vspeed")
	gravity_direction = 270.0
	gravity = 0.5
func ev_col_434():
	(GM.f_sound_play(77.0))
	for _r688 in range(int((30.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
	(GM.f_sound_play(43.0))
	(GM.f_instance_destroy(self))
func ev_col_423():
	(GM.f_sound_play(77.0))
	for _r689 in range(int((30.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
	(GM.f_sound_play(43.0))
	(GM.f_instance_destroy(self))
func ev_col_66():
	(GM.f_sound_play(77.0))
	GM.vset(304.0, "v_bricker", GM.vget(304.0, "v_bricker") + 1.0)
	GM.vset(301.0, "v_bricker", GM.vget(301.0, "v_bricker") + 1.0)
	for _r690 in range(int((30.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
	(GM.f_sound_play(43.0))
	(GM.f_instance_destroy(self))
func ev_col_17():
	for _r691 in range(int((30.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
	(GM.f_sound_play(77.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
