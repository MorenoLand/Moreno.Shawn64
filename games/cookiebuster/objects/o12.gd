extends "res://games/cookiebuster/scripts.gd"
func ev_create():
	(GM.f_sound_stop(6.0))
	(GM.f_sound_stop(0.0))
	(GM.f_sound_play(2.0))
func ev_step():
	if (not ((((GM.f_sound_isplaying(2.0)))) >= 0.5)):
		(GM.f_sound_loop(6.0))
		(GM.f_instance_create(0.0, 0.0, 3.0))
		for _w14 in GM.with_list((0.0), self):
			if _w14._dead:
				continue
			_w14.other = self
			GM.vset(_w14, "v_start", 1.0)
			_w14.speed = 4.0
		for _w15 in GM.with_list((8.0), self):
			if _w15._dead:
				continue
			_w15.other = self
			GM.vset(_w15, "v_start", 1.0)
			_w15.speed = 3.0
		for _w16 in GM.with_list((19.0), self):
			if _w16._dead:
				continue
			_w16.other = self
			GM.vset(_w16, "v_start", 1.0)
			_w16.speed = 4.0
		for _w17 in GM.with_list((20.0), self):
			if _w17._dead:
				continue
			_w17.other = self
			GM.vset(_w17, "v_start", 1.0)
			_w17.speed = 2.8
		for _w18 in GM.with_list((10.0), self):
			if _w18._dead:
				continue
			_w18.other = self
			_w18.speed = 3.0
		(GM.f_instance_destroy(self))
