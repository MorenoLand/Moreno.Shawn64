extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	y = (200.0 + (GM.f_random(200.0)))
	x = (GM.f_random(((100.0 + GM.room_width) - 200.0)))
	(GM.f_path_start(self, 1.0, (2.0 + (GM.f_random(3.0))), 1.0, 0.0))
func ev_col_310():
	if (((absf((GM.f_instance_number(315.0)) - 1.0) < 0.00001))):
		for _w436 in GM.with_list((314.0), self):
			if _w436._dead:
				continue
			_w436.other = self
			(GM.f_instance_create((_w436.x + 0.0), (_w436.y + 0.0), 321.0))
		for _w437 in GM.with_list((170.0), self):
			if _w437._dead:
				continue
			_w437.other = self
			(GM.f_instance_destroy(_w437))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 200.0
		for _w438 in GM.with_list((314.0), self):
			if _w438._dead:
				continue
			_w438.other = self
			(GM.f_instance_destroy(_w438))
	for _r439 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
	(GM.f_sound_play(32.0))
	(GM.f_instance_destroy(self))
