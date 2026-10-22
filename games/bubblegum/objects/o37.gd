extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_sound_loop(8.0))
	(GM.f_action_move(self, "000001000", 3.0, 0.0))
func ev_step():
	if (((x > GM.room_width))):
		(GM.f_sound_stop(8.0))
		GM.background_index[int(0.0)] = 0.0
		(GM.f_instance_destroy(self))
		(GM.f_sound_play(9.0))
		for _w42 in GM.with_list((38.0), self):
			if _w42._dead:
				continue
			_w42.other = self
			alarm[int(0.0)] = 35.0
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 39.0))
func ev_col_7():
	(GM.f_sound_stop(0.0))
	(GM.f_sound_play(15.0))
	if (((absf((GM.f_instance_number(36.0)) - 1.0) < 0.00001))):
		for _w43 in GM.with_list((36.0), self):
			if _w43._dead:
				continue
			_w43.other = self
			(GM.f_instance_create((_w43.x + 0.0), (_w43.y + 0.0), 38.0))
	for _w44 in GM.with_list((36.0), self):
		if _w44._dead:
			continue
		_w44.other = self
		(GM.f_instance_destroy(_w44))
	for _w45 in GM.with_list((self.other), self):
		if _w45._dead:
			continue
		_w45.other = self
		(GM.f_instance_destroy(_w45))
