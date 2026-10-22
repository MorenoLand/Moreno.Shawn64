extends "res://games/jetzrampage2/scripts.gd"
var v_bdead = 0.0
func ev_create():
	v_bdead = 10.0
func ev_step():
	if (((v_bdead < 1.0))):
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
		for _w168 in GM.with_list((67.0), self):
			if _w168._dead:
				continue
			_w168.other = self
			GM.vset(_w168, "v_currentmoney", GM.vget(_w168, "v_currentmoney") + 300.0)
		(GM.f_sound_play(88.0))
		for _w169 in GM.with_list((1895.0), self):
			if _w169._dead:
				continue
			_w169.other = self
			(GM.f_instance_destroy(_w169))
		for _w170 in GM.with_list((437.0), self):
			if _w170._dead:
				continue
			_w170.other = self
			(GM.f_instance_destroy(_w170))
		for _w171 in GM.with_list((250.0), self):
			if _w171._dead:
				continue
			_w171.other = self
			(GM.f_instance_destroy(_w171))
		(GM.f_instance_destroy(self))
