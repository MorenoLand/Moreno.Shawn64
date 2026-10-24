extends "res://games/galaxy_arcade/scripts.gd"
func ev_mouse_0():
	(GM.f_sound_play(6.0))
	if (((GM.G["doe"] > 0.0))):
		GM.G["doe"] = GM.G["doe"] + (-1.0)
	(GM.f_room_goto(43.0))
