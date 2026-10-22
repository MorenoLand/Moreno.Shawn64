extends "res://games/jetzrampage2/scripts.gd"
func ev_step():
	if (((absf((GM.f_instance_number(432.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 127.0))
		for _w165 in GM.with_list((67.0), self):
			if _w165._dead:
				continue
			_w165.other = self
			GM.vset(_w165, "v_currentmoney", GM.vget(_w165, "v_currentmoney") + 300.0)
		(GM.f_sound_play(88.0))
		for _w166 in GM.with_list((431.0), self):
			if _w166._dead:
				continue
			_w166.other = self
			(GM.f_instance_destroy(_w166))
		for _w167 in GM.with_list((250.0), self):
			if _w167._dead:
				continue
			_w167.other = self
			(GM.f_instance_destroy(_w167))
		(GM.f_instance_destroy(self))
