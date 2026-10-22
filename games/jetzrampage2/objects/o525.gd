extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_sound_play(191.0))
func ev_step():
	if (((absf((GM.f_instance_number(524.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 127.0))
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 127.0))
		for _w230 in GM.with_list((515.0), self):
			if _w230._dead:
				continue
			_w230.other = self
			(GM.f_instance_create((_w230.x + 0.0), (_w230.y + 0.0), 552.0))
		for _w231 in GM.with_list((67.0), self):
			if _w231._dead:
				continue
			_w231.other = self
			GM.vset(_w231, "v_currentmoney", GM.vget(_w231, "v_currentmoney") + 100.0)
		(GM.f_sound_play(88.0))
		for _w232 in GM.with_list((515.0), self):
			if _w232._dead:
				continue
			_w232.other = self
			(GM.f_instance_destroy(_w232))
		for _w233 in GM.with_list((250.0), self):
			if _w233._dead:
				continue
			_w233.other = self
			(GM.f_instance_destroy(_w233))
		(GM.f_instance_destroy(self))
