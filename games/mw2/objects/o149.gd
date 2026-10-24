extends "res://games/mw2/scripts.gd"
func ev_mouse_0():
	for _w27 in GM.with_list((144.0), self):
		if _w27._dead:
			continue
		_w27.other = self
		(GM.f_instance_destroy(_w27))
	GM.G["missils"] = 400.0
	(GM.f_sound_stop(1.0))
	(GM.f_sound_loop(16.0))
	(GM.f_room_goto(3.0))
