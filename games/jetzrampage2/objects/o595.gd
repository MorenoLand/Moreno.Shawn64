extends "res://games/jetzrampage2/objects/o580.gd"
func ev_keypress_13():
	if (((absf(v_image_single - 1.0) < 0.00001))):
		(GM.f_game_end())
