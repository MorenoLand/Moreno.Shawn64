extends "res://games/jetzrampage2/objects/o580.gd"
func ev_keypress_13():
	if (((absf(v_image_single - 1.0) < 0.00001))):
		if (((absf(GM.G["level2unlocked"] - 1.0) < 0.00001))):
			(GM.f_sound_stop(85.0))
			(GM.f_room_goto(35.0))
		else:
			(GM.f_sound_play(15.0))
