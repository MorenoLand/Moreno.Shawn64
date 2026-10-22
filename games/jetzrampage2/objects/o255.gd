extends "res://games/jetzrampage2/objects/o253.gd"
func ev_create():
	(GM.f_action_move(self, "001000000", 16.0, 0.0))
	x = (((GM.room_width / 4.0) * 3.0) - 55.0)
	y = 0.0
