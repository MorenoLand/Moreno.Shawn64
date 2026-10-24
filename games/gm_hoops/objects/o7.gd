extends "res://games/gm_hoops/scripts.gd"
func ev_mouse_7():
	if (((absf((GM.f_instance_number(5.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(3.0))
		for _w3 in GM.with_list((0.0), self):
			if _w3._dead:
				continue
			_w3.other = self
			GM.vset(_w3, "v_wee", (GM.f_point_direction((_w3.x + 24.0), (_w3.y + 24.0), GM.vb(5.0, "x"), GM.vb(5.0, "y"))))
			if (absf((1.0 if ((GM.vb(5.0, "speed") < 25.0)) else 0.0) - 1.0) < 0.00001):
				(GM.f_motion_add(_w3, (GM.vget(_w3, "v_wee") - 180.0), GM.vb(5.0, "speed")))
			else:
				(GM.f_motion_add(_w3, (GM.vget(_w3, "v_wee") - 180.0), 25.0))
			GM.vset(_w3, "v_boom", 0.0)
		for _w4 in GM.with_list((5.0), self):
			if _w4._dead:
				continue
			_w4.other = self
			(GM.f_instance_destroy(_w4))
	if (((absf((GM.f_instance_number(10.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(3.0))
		for _w5 in GM.with_list((8.0), self):
			if _w5._dead:
				continue
			_w5.other = self
			GM.vset(_w5, "v_wee", (GM.f_point_direction((_w5.x + 24.0), (_w5.y + 24.0), GM.vb(10.0, "x"), GM.vb(10.0, "y"))))
			if (absf((1.0 if ((GM.vb(10.0, "speed") < 25.0)) else 0.0) - 1.0) < 0.00001):
				(GM.f_motion_add(_w5, (GM.vget(_w5, "v_wee") - 180.0), GM.vb(10.0, "speed")))
			else:
				(GM.f_motion_add(_w5, (GM.vget(_w5, "v_wee") - 180.0), 25.0))
			GM.vset(_w5, "v_boom", 0.0)
		for _w6 in GM.with_list((10.0), self):
			if _w6._dead:
				continue
			_w6.other = self
			(GM.f_instance_destroy(_w6))
	if (((absf((GM.f_instance_number(12.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(3.0))
		for _w7 in GM.with_list((11.0), self):
			if _w7._dead:
				continue
			_w7.other = self
			GM.vset(_w7, "v_wee", (GM.f_point_direction((_w7.x + 24.0), (_w7.y + 24.0), GM.vb(12.0, "x"), GM.vb(12.0, "y"))))
			if (absf((1.0 if ((GM.vb(12.0, "speed") < 25.0)) else 0.0) - 1.0) < 0.00001):
				(GM.f_motion_add(_w7, (GM.vget(_w7, "v_wee") - 180.0), GM.vb(12.0, "speed")))
			else:
				(GM.f_motion_add(_w7, (GM.vget(_w7, "v_wee") - 180.0), 25.0))
			GM.vset(_w7, "v_boom", 0.0)
		for _w8 in GM.with_list((12.0), self):
			if _w8._dead:
				continue
			_w8.other = self
			(GM.f_instance_destroy(_w8))
