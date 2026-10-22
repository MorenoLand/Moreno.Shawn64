extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	(GM.f_sound_stop(336.0))
	(GM.f_sound_loop(299.0))
	(GM.f_sound_play(340.0))
	alarm[int(0.0)] = 100.0
	alarm[int(1.0)] = 75.0
func ev_alarm_1():
	(GM.f_sound_play(340.0))
func ev_alarm_0():
	(GM.f_sound_play(341.0))
	GM.G["bossbeat"] = 1.0
	(GM.f_instance_create(0.0, 0.0, 1254.0))
	(GM.f_instance_destroy(self))
func ev_step():
	for _r442 in range(int((5.0))):
		(GM.f_instance_create((x + (-16.0)), (y + (-16.0)), 1247.0))
