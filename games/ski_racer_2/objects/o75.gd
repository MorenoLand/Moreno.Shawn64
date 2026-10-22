extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	(GM.f_sound_stop(2.0))
	if ((GM.G["p1"] == "s64")):
		sprite_index = 0.0
	if ((GM.G["p1"] == "dex")):
		sprite_index = 8.0
	if ((GM.G["p1"] == "snow")):
		sprite_index = 13.0
	if ((GM.G["p1"] == "elf")):
		sprite_index = 34.0
	if ((GM.G["p1"] == "blink")):
		sprite_index = 36.0
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	(GM.f_sound_stop(16.0))
	(GM.f_room_goto(2.0))
