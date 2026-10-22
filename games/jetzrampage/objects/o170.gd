extends "res://games/jetzrampage/scripts.gd"
func ev_keypress_51():
	if (((absf(GM.G["lick2"] - 0.0) < 0.00001))):
		(GM.f_instance_create(265.0, 133.0, 160.0))
		(GM.f_sound_play(51.0))
	else:
		(GM.f_sound_stop(35.0))
		(GM.f_sound_loop(36.0))
		(GM.f_room_goto(15.0))
func ev_keypress_50():
	if (((absf(GM.G["lick1"] - 0.0) < 0.00001))):
		(GM.f_instance_create(265.0, 133.0, 160.0))
		(GM.f_sound_play(51.0))
	else:
		(GM.f_sound_stop(35.0))
		(GM.f_sound_loop(36.0))
		(GM.f_room_goto(0.0))
func ev_keypress_49():
	(GM.f_sound_stop(35.0))
	(GM.f_sound_loop(36.0))
	(GM.f_room_goto(10.0))
