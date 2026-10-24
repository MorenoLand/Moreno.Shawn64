extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	(GM.f_sound_play(2.0))
	alarm[int(0.0)] = 60.0
func ev_alarm_0():
	(GM.f_sound_loop(1.0))
	(GM.f_room_goto(0.0))
func ev_other_4():
	GM.G["missils"] = 500.0
	GM.G["doom"] = 0.0
	GM.G["cool"] = 5.0
	GM.G["cool2"] = 0.0
	GM.G["boom"] = 5.0
	GM.G["mega"] = 0.0
	GM.G["glue"] = 0.0
	GM.G["bow"] = 0.0
	GM.G["scorep2"] = 500.0
	GM.G["missilesp2"] = 0.0
	GM.G["bonusp2"] = 0.0
	GM.G["bombp2"] = 0.0
	GM.G["brines"] = 3.0
