extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_goleft = 0.0
var v_image_single = 0.0
var v_view_left = {}
var v_view_width = 0.0
var v_wee = 0.0
func ev_create():
	v_goleft = 0.0
	v_image_single = 0.0
func ev_step():
	if ((absf(v_goleft - 1.0) < 0.00001)):
		(GM.f_motion_add(self, 180.0, 0.8))
	if (((x > (GM.view_xview[0] + 200.0)) and (absf(v_goleft - 0.0) < 0.00001))):
		(GM.f_sound_play(168.0))
		(GM.f_sound_play(167.0))
		v_goleft = 1.0
	if ((speed > 50.0)):
		(GM.f_instance_create(x, y, 682.0))
		(GM.f_instance_destroy(self))
	for _r374 in range(int((15.0))):
		v_wee = (GM.f_instance_create((x + 239.0), (y + 43.0), 490.0))
		GM.vsetb(v_wee, "speed", ((GM.vb(v_wee, "speed") - 2.0) + (GM.f_random(4.0))))
	(GM.f_sound_volume(167.0, (1.0 - (((GM.f_distance_to_point(self, (GM.view_xview[0] + 400.0), (GM.view_yview[0] + 300.0))) / 3000.0)))))
	(GM.f_sound_pan(167.0, (0.5 - (((((GM.add(GM.aget(v_view_left, 0.0), ((GM.aget(v_view_width, 0.0) / 2.0)))) - x)) / 1000.0)))))
