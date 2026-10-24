extends "res://games/galaxy_arcade/scripts.gd"
func ev_key_13():
	(GM.f_room_goto_next())
func ev_other_4():
	GM.G["speedp1"] = 0.0
	GM.G["speedp2"] = 0.0
