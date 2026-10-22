extends "res://games/jetzrampage2/objects/o253.gd"
func ev_create():
	(GM.f_action_move(self, "001000000", 13.0, 0.0))
	x = (((GM.room_width / 4.0) * 3.0) - 55.0)
	y = 0.0
func ev_step():
	if ((((GM.f_random(50.0)) < 1.0))):
		direction = (GM.f_random(360.0))
