extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "010000000", 30.0, 0.0))
func ev_step():
	if (((y > GM.room_height))):
		GM.view_object[int(0.0)] = 12.0
		(GM.f_instance_create(GM.vb(11.0, "x"), (GM.vb(11.0, "y") + 5.0), 12.0))
		(GM.f_instance_destroy(self))
