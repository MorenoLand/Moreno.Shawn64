extends "res://games/missilewave3d/scripts.gd"
func ev_create():
	for _w131 in GM.with_list((81.0), self):
		if _w131._dead:
			continue
		_w131.other = self
		(GM.f_instance_destroy(_w131))
	for _w132 in GM.with_list((85.0), self):
		if _w132._dead:
			continue
		_w132.other = self
		(GM.f_instance_destroy(_w132))
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	for _w133 in GM.with_list((34.0), self):
		if _w133._dead:
			continue
		_w133.other = self
		if ((GM.vget(_w133, "v_jscore") > GM.G["stageh"])):
			GM.G["stageh"] = GM.vget(_w133, "v_jscore")
	(GM.f_room_goto(3.0))
func ev_step():
	(GM.f_screen_gamma(0.3, 0.0, 0.0))
	(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 103.0))
