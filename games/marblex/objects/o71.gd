extends "res://games/marblex/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	(GM.f_room_goto_next())
func ev_other_2():
	GM.G["km"] = 0.0
	GM.G["level1high"] = 0.0
	GM.G["level2high"] = 0.0
	GM.G["level3high"] = 0.0
	GM.G["level4high"] = 0.0
	GM.G["level5high"] = 0.0
	GM.G["level6high"] = 0.0
	GM.G["level7high"] = 0.0
	GM.G["level8high"] = 0.0
	GM.G["level9high"] = 0.0
