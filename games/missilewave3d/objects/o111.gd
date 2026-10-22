extends "res://games/missilewave3d/scripts.gd"
func ev_other_4():
	GM.G["stageh"] = 0.0
	GM.G["practiceh"] = 0.0
	if (((GM.f_file_exists(("MW3D" + ".sav"))))) >= 0.5:
		(GM.f_game_load(("MW3D" + ".sav")))
	(GM.f_room_goto_next())
