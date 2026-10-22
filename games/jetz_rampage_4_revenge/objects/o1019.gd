extends "res://games/jetz_rampage_4_revenge/objects/o655.gd"
var v_wee = 0.0
func ev_other_10():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 545.0))
	for _r909 in range(int((150.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 600.0))
		GM.vsetb(v_wee, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_wee, "speed", GM.vb(v_wee, "speed") + (GM.f_random(25.0)))
	for _r910 in range(int((3.0))):
		(GM.f_instance_create(x, y, 1027.0))
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 1026.0))
	(GM.f_sound_play(235.0))
	(GM.f_instance_create(x, y, 1021.0))
	for _r911 in range(int((10.0))):
		(GM.f_instance_create(x, y, 717.0))
	(GM.f_instance_destroy(self))
