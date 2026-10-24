extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	if (((GM.G["airscore"] > GM.G["sdhigh"]))):
		if (((absf((GM.f_instance_number(1254.0)) - 0.0) < 0.00001))):
			(GM.f_sound_play(131.0))
			GM.G["sdhigh"] = GM.G["airscore"]
	(GM.f_room_goto(1.0))
