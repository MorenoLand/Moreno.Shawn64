extends "res://games/mw2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 300.0
	(GM.f_action_move(self, "010000000", 15.0, 0.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	depth = (-9.0)
	if ((((GM.f_mouse_check_button(1.0))))) >= 0.5:
		(GM.f_instance_create((x + 4.5), (y + 4.5), 137.0))
func ev_col_22():
	vspeed = 0.0
