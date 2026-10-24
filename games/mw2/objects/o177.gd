extends "res://games/mw2/scripts.gd"
func ev_step():
	x = (GM.mouse_x + 20.0)
	y = (GM.mouse_y + 20.0)
	if (((absf((GM.f_instance_number(176.0)) - 0.0) < 0.00001))):
		(GM.f_instance_destroy(self))
