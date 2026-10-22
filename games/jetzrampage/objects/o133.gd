extends "res://games/jetzrampage/scripts.gd"
func ev_create():
	(GM.f_sound_play(54.0))
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	GM.G["poop"] = GM.G["poop"] + GM.score
	GM.score = 0.0
	(GM.f_sound_stop(9.0))
	(GM.f_sound_stop(10.0))
	(GM.f_sound_stop(36.0))
	(GM.f_sound_stop(37.0))
	(GM.f_sound_stop(39.0))
	(GM.f_room_goto(8.0))
