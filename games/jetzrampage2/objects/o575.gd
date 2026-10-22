extends "res://games/jetzrampage2/scripts.gd"
var v_killbirds = 0.0
func ev_create():
	v_killbirds = 30.0
func ev_step():
	if (((v_killbirds < 1.0))):
		for _w286 in GM.with_list((0.0), self):
			if _w286._dead:
				continue
			_w286.other = self
			GM.vset(_w286, "v_elect", 0.0)
			GM.vset(_w286, "v_flames", 0.0)
			GM.vset(_w286, "v_weaponselect", 1.0)
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 127.0))
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 127.0))
		for _w287 in GM.with_list((67.0), self):
			if _w287._dead:
				continue
			_w287.other = self
			GM.vset(_w287, "v_currentmoney", GM.vget(_w287, "v_currentmoney") + 300.0)
		(GM.f_sound_play(88.0))
		for _w288 in GM.with_list((552.0), self):
			if _w288._dead:
				continue
			_w288.other = self
			(GM.f_instance_destroy(_w288))
		for _w289 in GM.with_list((250.0), self):
			if _w289._dead:
				continue
			_w289.other = self
			(GM.f_instance_destroy(_w289))
		(GM.f_instance_destroy(self))
