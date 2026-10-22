extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	for _w128 in GM.with_list((81.0), self):
		if _w128._dead:
			continue
		_w128.other = self
		(GM.f_instance_destroy(_w128))
	for _w129 in GM.with_list((85.0), self):
		if _w129._dead:
			continue
		_w129.other = self
		(GM.f_instance_destroy(_w129))
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	for _w130 in GM.with_list((64.0), self):
		if _w130._dead:
			continue
		_w130.other = self
		if ((GM.vget(_w130, "v_jscore") > GM.G["practiceh"])):
			GM.G["practiceh"] = GM.vget(_w130, "v_jscore")
	(GM.f_room_goto(3.0))
func ev_step():
	(GM.f_screen_gamma(0.3, 0.0, 0.0))
	(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 103.0))
