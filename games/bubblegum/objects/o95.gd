extends "res://games/bubblegum/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 2.0
func ev_alarm_1():
	(GM.f_sound_stop(28.0))
	(GM.f_room_goto(15.0))
func ev_alarm_0():
	(GM.f_sound_play(2.0))
	for _r70 in range(int((25.0))):
		for _w71 in GM.with_list((0.0), self):
			if _w71._dead:
				continue
			_w71.other = self
			(GM.f_instance_create((_w71.x + (GM.f_random(_w71.sprite_width))), (_w71.y + (GM.f_random(_w71.sprite_height))), 25.0))
	for _w72 in GM.with_list((0.0), self):
		if _w72._dead:
			continue
		_w72.other = self
		(GM.f_instance_destroy(_w72))
	alarm[int(1.0)] = 60.0
