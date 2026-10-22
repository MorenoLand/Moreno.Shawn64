extends "res://games/cookiebuster/scripts.gd"
func ev_create():
	x = (GM.f_random((GM.room_width - 32.0)))
	y = (64.0 + (GM.f_random(((480.0 - 128.0) - 32.0))))
func ev_col_4():
	x = (GM.f_random((GM.room_width - 32.0)))
	y = (64.0 + (GM.f_random(((480.0 - 128.0) - 32.0))))
func ev_col_0():
	for _w4 in GM.with_list((self.other), self):
		if _w4._dead:
			continue
		_w4.other = self
		_w4.speed = _w4.speed + 0.1
	GM.score = GM.score + 1.0
	(GM.f_draw_text((x + 0.0), (y + 32.0), ("Cookies" + (GM.f_string(GM.score)))))
	(GM.f_sound_play(1.0))
	if (((absf((GM.f_instance_number(4.0)) - 1.0) < 0.00001))):
		(GM.f_sound_stop(0.0))
		for _w5 in GM.with_list((3.0), self):
			if _w5._dead:
				continue
			_w5.other = self
			(GM.f_instance_destroy(_w5))
		for _w6 in GM.with_list((19.0), self):
			if _w6._dead:
				continue
			_w6.other = self
			(GM.f_instance_destroy(_w6))
		for _w7 in GM.with_list((8.0), self):
			if _w7._dead:
				continue
			_w7.other = self
			(GM.f_instance_destroy(_w7))
		for _w8 in GM.with_list((10.0), self):
			if _w8._dead:
				continue
			_w8.other = self
			(GM.f_instance_destroy(_w8))
		for _w9 in GM.with_list((20.0), self):
			if _w9._dead:
				continue
			_w9.other = self
			(GM.f_instance_destroy(_w9))
		for _w10 in GM.with_list((1.0), self):
			if _w10._dead:
				continue
			_w10.other = self
			(GM.f_instance_destroy(_w10))
		for _w11 in GM.with_list((9.0), self):
			if _w11._dead:
				continue
			_w11.other = self
			(GM.f_instance_destroy(_w11))
		for _w12 in GM.with_list((18.0), self):
			if _w12._dead:
				continue
			_w12.other = self
			(GM.f_instance_destroy(_w12))
		GM.G["levely"] = GM.G["levely"] + 1.0
		(GM.f_instance_create(0.0, 0.0, 18.0))
		for _w13 in GM.with_list((self.other), self):
			if _w13._dead:
				continue
			_w13.other = self
			(GM.f_instance_destroy(_w13))
		(GM.f_instance_destroy(self))
	(GM.f_instance_destroy(self))
