extends "res://games/jetzrampage2/scripts.gd"
func ev_step():
	if (((absf((GM.f_instance_number(553.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
		for _w252 in GM.with_list((588.0), self):
			if _w252._dead:
				continue
			_w252.other = self
			(GM.f_instance_create((_w252.x + 0.0), (_w252.y + 0.0), 600.0))
		for _w253 in GM.with_list((67.0), self):
			if _w253._dead:
				continue
			_w253.other = self
			GM.vset(_w253, "v_currentmoney", GM.vget(_w253, "v_currentmoney") + 300.0)
		(GM.f_sound_play(88.0))
		for _w254 in GM.with_list((588.0), self):
			if _w254._dead:
				continue
			_w254.other = self
			(GM.f_instance_destroy(_w254))
		for _w255 in GM.with_list((250.0), self):
			if _w255._dead:
				continue
			_w255.other = self
			(GM.f_instance_destroy(_w255))
		(GM.f_instance_destroy(self))
