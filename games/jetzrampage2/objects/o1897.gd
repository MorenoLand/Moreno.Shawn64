extends "res://games/jetzrampage2/scripts.gd"
func ev_col_0():
	if (((absf((GM.f_instance_number(1898.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1897.0)) - 1.0) < 0.00001))):
			(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
			for _w362 in GM.with_list((67.0), self):
				if _w362._dead:
					continue
				_w362.other = self
				GM.vset(_w362, "v_currentmoney", GM.vget(_w362, "v_currentmoney") + 300.0)
			(GM.f_sound_play(88.0))
			for _w363 in GM.with_list((1896.0), self):
				if _w363._dead:
					continue
				_w363.other = self
				(GM.f_instance_destroy(_w363))
			for _w364 in GM.with_list((250.0), self):
				if _w364._dead:
					continue
				_w364.other = self
				(GM.f_instance_destroy(_w364))
			(GM.f_instance_destroy(self))
		else:
			(GM.f_sound_play(32.0))
			(GM.f_instance_destroy(self))
