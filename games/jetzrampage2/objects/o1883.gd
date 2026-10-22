extends "res://games/jetzrampage2/scripts.gd"
func ev_step():
	if (((absf((GM.f_instance_number(1881.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1879.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(71.0)) - 0.0) < 0.00001))):
				(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
				for _w342 in GM.with_list((1878.0), self):
					if _w342._dead:
						continue
					_w342.other = self
					(GM.f_instance_create((_w342.x + 0.0), (_w342.y + 0.0), 1884.0))
				for _w343 in GM.with_list((67.0), self):
					if _w343._dead:
						continue
					_w343.other = self
					GM.vset(_w343, "v_currentmoney", GM.vget(_w343, "v_currentmoney") + 100.0)
				(GM.f_sound_play(88.0))
				for _w344 in GM.with_list((1878.0), self):
					if _w344._dead:
						continue
					_w344.other = self
					(GM.f_instance_destroy(_w344))
				for _w345 in GM.with_list((250.0), self):
					if _w345._dead:
						continue
					_w345.other = self
					(GM.f_instance_destroy(_w345))
				(GM.f_instance_destroy(self))
