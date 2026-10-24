extends "res://games/mw2/scripts.gd"
func ev_alarm_0():
	GM.G["doom"] = 1.0
	(GM.f_instance_destroy(self))
func ev_step():
	if ((((GM.f_place_free(self, (x + 0.0), (y + 4.0)))))) >= 0.5:
		(GM.f_action_move(self, "010000000", 4.0, 0.0))
	else:
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
	if (((absf(GM.G["doom"] - 1.0) < 0.00001))):
		(GM.f_sound_play(8.0))
		(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
		(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
		(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
		(GM.f_instance_create((x + 10.0), (y + 10.0), 31.0))
		(GM.f_instance_destroy(self))
func ev_col_37():
	for _w10 in GM.with_list((87.0), self):
		if _w10._dead:
			continue
		_w10.other = self
		(GM.f_instance_destroy(_w10))
	for _w11 in GM.with_list((15.0), self):
		if _w11._dead:
			continue
		_w11.other = self
		(GM.f_instance_destroy(_w11))
	sprite_index = 45.0
	image_speed = 1.0
	alarm[int(0.0)] = 20.0
