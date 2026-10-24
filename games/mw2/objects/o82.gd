extends "res://games/mw2/objects/o30.gd"
func ev_destroy():
	(GM.f_mplay_message_send(0.0, 10.0, 0.0))
	(GM.f_sound_play(14.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 30.0))
