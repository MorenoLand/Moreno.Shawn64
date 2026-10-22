extends "res://games/bounty_hunter_sx/scripts.gd"
func ev_create():
	timeline_index = 0.0
	timeline_position = 0.0
	timeline_running = 1.0
	timeline_speed = 1.0
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
	y = ((GM.room_height / 2.0) - (sprite_height / 2.0))
