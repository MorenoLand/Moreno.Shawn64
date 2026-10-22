extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wooper = 0.0
func ev_create():
	(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 545.0))
	image_speed = (0.7 + (GM.f_random(0.3)))
func ev_destroy():
	for _w283 in GM.with_list((v_wooper), self):
		if _w283._dead:
			continue
		_w283.other = self
		(GM.f_instance_destroy(_w283))
func ev_other_7():
	(GM.f_instance_destroy(self))
