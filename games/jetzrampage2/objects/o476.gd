extends "res://games/jetzrampage2/scripts.gd"
var v_bdead = 0.0
func ev_create():
	v_bdead = 30.0
func ev_step():
	if (((v_bdead < 1.0))):
		for _w179 in GM.with_list((0.0), self):
			if _w179._dead:
				continue
			_w179.other = self
			GM.vset(_w179, "v_elect", 0.0)
			GM.vset(_w179, "v_flames", 0.0)
			GM.vset(_w179, "v_weaponselect", 1.0)
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
		for _w180 in GM.with_list((67.0), self):
			if _w180._dead:
				continue
			_w180.other = self
			GM.vset(_w180, "v_currentmoney", GM.vget(_w180, "v_currentmoney") + 100.0)
		for _w181 in GM.with_list((474.0), self):
			if _w181._dead:
				continue
			_w181.other = self
			(GM.f_instance_create((_w181.x + 0.0), (_w181.y + 0.0), 437.0))
		for _w182 in GM.with_list((1872.0), self):
			if _w182._dead:
				continue
			_w182.other = self
			(GM.f_instance_create((_w182.x + 0.0), (_w182.y + 0.0), 1895.0))
		(GM.f_sound_play(88.0))
		for _w183 in GM.with_list((1872.0), self):
			if _w183._dead:
				continue
			_w183.other = self
			(GM.f_instance_destroy(_w183))
		for _w184 in GM.with_list((474.0), self):
			if _w184._dead:
				continue
			_w184.other = self
			(GM.f_instance_destroy(_w184))
		for _w185 in GM.with_list((250.0), self):
			if _w185._dead:
				continue
			_w185.other = self
			(GM.f_instance_destroy(_w185))
		(GM.f_instance_destroy(self))
