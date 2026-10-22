extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	y = (200.0 + (GM.f_random(200.0)))
	x = (GM.f_random((GM.room_width - 100.0)))
func ev_col_310():
	if (((absf((GM.f_instance_number(309.0)) - 1.0) < 0.00001))):
		for _w424 in GM.with_list((297.0), self):
			if _w424._dead:
				continue
			_w424.other = self
			(GM.f_instance_create((_w424.x + 0.0), (_w424.y + 0.0), 314.0))
		for _w425 in GM.with_list((170.0), self):
			if _w425._dead:
				continue
			_w425.other = self
			(GM.f_instance_destroy(_w425))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 100.0
		for _w426 in GM.with_list((297.0), self):
			if _w426._dead:
				continue
			_w426.other = self
			(GM.f_instance_destroy(_w426))
	for _r427 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 27.0))
	(GM.f_sound_play(32.0))
	(GM.f_instance_destroy(self))
