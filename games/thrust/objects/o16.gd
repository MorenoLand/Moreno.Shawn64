extends "res://games/thrust/scripts.gd"
var v_downdown = 0.0
var v_image_single = 0.0
var v_upup = 0.0
var v_what = 0.0
func ev_create():
	v_image_single = 0.0
	v_upup = 1.0
	v_downdown = 0.0
	alarm[int(0.0)] = 30.0
	gravity_direction = 270.0
	gravity = 0.3
func ev_alarm_1():
	v_upup = 1.0
	v_downdown = 0.0
	alarm[int(0.0)] = 30.0
func ev_alarm_0():
	v_upup = 0.0
func ev_step():
	if (((absf(v_upup - 1.0) < 0.00001))):
		(GM.f_motion_add(self, 90.0, 0.5))
		for _r17 in range(int((3.0))):
			v_what = (GM.f_instance_create((x + 27.5), (y + 27.5), 2.0))
			for _w18 in GM.with_list((v_what), self):
				if _w18._dead:
					continue
				_w18.other = self
				(GM.f_motion_add(_w18, 270.0, (1.0 + (GM.f_random(5.0)))))
			GM.vsetb(v_what, "gravity", 0.1)
			GM.vsetb(v_what, "gravity_direction", 270.0)
			GM.vsetb(v_what, "vspeed", GM.vb(v_what, "vspeed") + vspeed)
			GM.vsetb(v_what, "hspeed", GM.vb(v_what, "hspeed") + hspeed)
func ev_col_4():
	if (((absf(v_downdown - 0.0) < 0.00001))):
		v_downdown = 1.0
		alarm[int(1.0)] = 30.0
	vspeed = 0.0
