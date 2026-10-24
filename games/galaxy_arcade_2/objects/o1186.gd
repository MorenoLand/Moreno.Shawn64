extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	x = ((GM.f_random(4000.0)) + 500.0)
	y = (GM.f_random(1360.0))
	(GM.f_path_start(self, 34.0, 1.0, 0.0, 0.0))
func ev_destroy():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1192.0))
func ev_col_1174():
	for _w160 in GM.with_list((self.other), self):
		if _w160._dead:
			continue
		_w160.other = self
		(GM.f_instance_destroy(_w160))
	(GM.f_sound_play(338.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1187.0))
	(GM.f_instance_destroy(self))
func ev_col_1170():
	(GM.f_sound_play(341.0))
	for _r161 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_destroy(self))
func ev_col_1138():
	for _w162 in GM.with_list((self.other), self):
		if _w162._dead:
			continue
		_w162.other = self
		(GM.f_instance_destroy(_w162))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1187.0))
	(GM.f_instance_destroy(self))
