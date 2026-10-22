extends "res://games/net_racer/scripts.gd"
func ev_create():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
func ev_step():
	if (((GM.f_mplay_player_find()) > 1.0)):
		(GM.f_room_goto_next())
