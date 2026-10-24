extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	x = ((GM.f_random(4000.0)) + 500.0)
	y = (GM.f_random(2200.0))
	(GM.f_path_start(self, 34.0, 1.0, 0.0, 0.0))
func ev_destroy():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1191.0))
func ev_col_1175():
	x = ((GM.f_random(4000.0)) + 500.0)
	y = (GM.f_random(2100.0))
func ev_col_1174():
	for _w167 in GM.with_list((self.other), self):
		if _w167._dead:
			continue
		_w167.other = self
		(GM.f_instance_destroy(_w167))
	(GM.f_sound_play(338.0))
	for _r168 in range(int((35.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1191.0))
	(GM.f_instance_destroy(self))
func ev_col_1170():
	(GM.f_sound_play(341.0))
	for _r169 in range(int((35.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1191.0))
	for _w170 in GM.with_list((self.other), self):
		if _w170._dead:
			continue
		_w170.other = self
		(GM.f_instance_destroy(_w170))
	(GM.f_instance_destroy(self))
func ev_col_1138():
	(GM.f_sound_play(338.0))
	for _r171 in range(int((35.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 1181.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 1191.0))
	(GM.f_instance_destroy(self))
