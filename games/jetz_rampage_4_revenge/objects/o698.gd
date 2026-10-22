extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	gravity_direction = 270.0
	gravity = 0.4
func ev_col_604():
	(self.script_adddamage())
	(GM.f_sound_play(130.0))
	for _r375 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r376 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	(GM.f_instance_destroy(self))
func ev_col_502():
	(GM.f_sound_play(121.0))
	for _w377 in GM.with_list((self.other), self):
		if _w377._dead:
			continue
		_w377.other = self
		(GM.f_instance_destroy(_w377))
