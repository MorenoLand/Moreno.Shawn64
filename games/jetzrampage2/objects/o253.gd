extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 8.0, 0.0))
	x = (GM.room_width / 4.0)
	y = 0.0
func ev_col_0():
	if (((absf((GM.f_instance_number(253.0)) - 1.0) < 0.00001))):
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 127.0))
		for _w154 in GM.with_list((67.0), self):
			if _w154._dead:
				continue
			_w154.other = self
			GM.vset(_w154, "v_currentmoney", GM.vget(_w154, "v_currentmoney") + 100.0)
		for _w155 in GM.with_list((239.0), self):
			if _w155._dead:
				continue
			_w155.other = self
			(GM.f_instance_create((_w155.x + 0.0), (_w155.y + 0.0), 431.0))
		for _w156 in GM.with_list((1868.0), self):
			if _w156._dead:
				continue
			_w156.other = self
			(GM.f_instance_create((_w156.x + 0.0), (_w156.y + 0.0), 1896.0))
		for _w157 in GM.with_list((1868.0), self):
			if _w157._dead:
				continue
			_w157.other = self
			(GM.f_instance_destroy(_w157))
		for _w158 in GM.with_list((527.0), self):
			if _w158._dead:
				continue
			_w158.other = self
			(GM.f_instance_destroy(_w158))
		for _w159 in GM.with_list((239.0), self):
			if _w159._dead:
				continue
			_w159.other = self
			(GM.f_instance_destroy(_w159))
		(GM.f_sound_play(88.0))
		for _w160 in GM.with_list((250.0), self):
			if _w160._dead:
				continue
			_w160.other = self
			(GM.f_instance_destroy(_w160))
	(GM.f_sound_play(32.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
