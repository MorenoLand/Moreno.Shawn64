extends "res://games/jetzrampage2/scripts.gd"
var v_blah = 0.0
func ev_create():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	v_blah = 0.0
func ev_step():
	(GM.f_screen_gamma(v_blah, v_blah, v_blah))
	if (((v_blah > (-1.0)))):
		v_blah = v_blah + (-0.01)
	else:
		(GM.f_screen_gamma((-1.0), (-1.0), (-1.0)))
		GM.G["level2unlocked"] = 0.0
		GM.G["level3unlocked"] = 0.0
		GM.G["cheatsunlocked"] = 0.0
		if (((GM.f_file_exists("jrs.sav")))) >= 0.5:
			(GM.f_game_load("jrs.sav"))
		(GM.f_room_goto_next())
