extends "res://games/jetzrampage2/objects/o488.gd"
func ev_create():
	v_mypower = 2.0
	v_alive = 1.0
	v_working = 0.0
	v_door = 0.0
	(GM.f_action_move(self, "000001000", 4.0, 0.0))
