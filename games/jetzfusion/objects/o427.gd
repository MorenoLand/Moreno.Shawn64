extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	for _w574 in GM.with_list((425.0), self):
		if _w574._dead:
			continue
		_w574.other = self
		GM.vset(_w574, "v_grinded", GM.vget(_w574, "v_grinded") + 1.0)
	(GM.f_sound_stop(22.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 424.0))
	(GM.f_instance_destroy(self))
func ev_step():
	for _r575 in range(int((3.0))):
		(GM.f_instance_create(((x + 20.0) + (GM.f_random(110.0))), ((y + 10.0) + (GM.f_random(15.0))), 31.0))
	(GM.f_instance_create(((x + 20.0) + (GM.f_random(110.0))), ((y + 10.0) + (GM.f_random(15.0))), 33.0))
	if (not ((((GM.f_sound_isplaying(22.0)))) >= 0.5)):
		(GM.f_sound_loop(22.0))
	if ((((GM.f_random(6.0)) < 1.0))):
		(GM.f_sound_play(28.0))
	if ((((GM.f_random(10.0)) < 1.0))):
		(GM.f_sound_play(1.0))
