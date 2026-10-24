extends "res://games/mw2/scripts.gd"
func ev_key_13():
	for _w1 in GM.with_list((144.0), self):
		if _w1._dead:
			continue
		_w1.other = self
		(GM.f_instance_destroy(_w1))
	(GM.f_sound_play(4.0))
	(GM.f_sound_stop(1.0))
	(GM.f_sound_loop(16.0))
	(GM.f_room_goto(3.0))
