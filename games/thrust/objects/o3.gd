extends "res://games/thrust/scripts.gd"
var v_pearls = 0.0
var v_pearlshave = 0.0
func ev_col_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 10.0))
	(GM.f_sound_play(3.0))
	for _w13 in GM.with_list((0.0), self):
		if _w13._dead:
			continue
		_w13.other = self
		GM.vset(_w13, "v_pearlshave", GM.vget(_w13, "v_pearlshave") + 1.0)
	if (((absf(v_pearls - v_pearlshave) < 0.00001))):
		if (((absf(GM.room - 41.0) < 0.00001))):
			(GM.f_sound_stop(2.0))
			(GM.f_screen_gamma(0.0, 0.0, 0.0))
			GM.background_hspeed[int(0.0)] = 0.0
			GM.background_hspeed[int(1.0)] = 0.0
			GM.background_hspeed[int(2.0)] = 0.0
			GM.background_hspeed[int(3.0)] = 0.0
			GM.background_hspeed[int(4.0)] = 0.0
			GM.background_hspeed[int(5.0)] = 0.0
			GM.background_hspeed[int(6.0)] = 0.0
			GM.background_hspeed[int(7.0)] = 0.0
			GM.background_vspeed[int(0.0)] = 0.0
			GM.background_vspeed[int(1.0)] = 0.0
			GM.background_vspeed[int(2.0)] = 0.0
			GM.background_vspeed[int(3.0)] = 0.0
			GM.background_vspeed[int(4.0)] = 0.0
			GM.background_vspeed[int(5.0)] = 0.0
			GM.background_vspeed[int(6.0)] = 0.0
			GM.background_vspeed[int(7.0)] = 0.0
			for _r14 in range(int((150.0))):
				(GM.f_instance_create((x + (GM.f_random((sprite_width - 10.0)))), (y + (GM.f_random((sprite_height - 10.0)))), 0.0))
			(GM.f_instance_create(0.0, 0.0, 13.0))
			(GM.f_sound_play(5.0))
			for _w15 in GM.with_list((0.0), self):
				if _w15._dead:
					continue
				_w15.other = self
				(GM.f_instance_destroy(_w15))
			for _w16 in GM.with_list((2.0), self):
				if _w16._dead:
					continue
				_w16.other = self
				(GM.f_instance_destroy(_w16))
		else:
			(GM.f_instance_create(0.0, 0.0, 11.0))
	(GM.f_instance_destroy(self))
