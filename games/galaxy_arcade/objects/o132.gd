extends "res://games/galaxy_arcade/scripts.gd"
func ev_mouse_0():
	for _w14 in GM.with_list((178.0), self):
		if _w14._dead:
			continue
		_w14.other = self
		(GM.f_instance_destroy(_w14))
	for _w15 in GM.with_list((198.0), self):
		if _w15._dead:
			continue
		_w15.other = self
		(GM.f_instance_destroy(_w15))
	for _w16 in GM.with_list((219.0), self):
		if _w16._dead:
			continue
		_w16.other = self
		(GM.f_instance_destroy(_w16))
	for _w17 in GM.with_list((231.0), self):
		if _w17._dead:
			continue
		_w17.other = self
		(GM.f_instance_destroy(_w17))
	(GM.f_room_goto(3.0))
