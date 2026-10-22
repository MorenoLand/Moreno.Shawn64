extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	(GM.f_sound_stop(331.0))
	(GM.f_sound_stop(294.0))
	(GM.f_sound_stop(327.0))
	(GM.f_sound_stop(330.0))
	(GM.f_sound_stop(329.0))
	(GM.f_sound_stop(299.0))
	if (not ((((GM.f_sound_isplaying(323.0)))) >= 0.5)):
		(GM.f_sound_play(323.0))
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
