extends "res://games/bubblegum/scripts.gd"
var v_view_top = 0.0
func ev_step():
	if (((absf((GM.f_instance_number(63.0)) - 1.0) < 0.00001))):
		if ((((GM.f_distance_to_object(self, 63.0)) < 450.0))):
			(GM.f_action_move(self, "010000000", 10.0, 0.0))
	if (((y < GM.aget(v_view_top, 0.0)))):
		(GM.f_instance_destroy(self))
