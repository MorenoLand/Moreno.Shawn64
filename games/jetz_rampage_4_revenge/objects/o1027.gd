extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_create():
	image_single = 0.0
	direction = (GM.f_random(180.0))
	gravity = 0.2
	gravity_direction = 270.0
	speed = (10.0 + (GM.f_random(10.0)))
	alarm[int(0.0)] = (5.0 + (GM.f_random(5.0)))
func ev_alarm_0():
	v_wee = (GM.f_instance_create(x, y, 655.0))
	for _w683 in GM.with_list((v_wee), self):
		if _w683._dead:
			continue
		_w683.other = self
		_w683.ev_user(0.0)
	(GM.f_instance_destroy(self))
