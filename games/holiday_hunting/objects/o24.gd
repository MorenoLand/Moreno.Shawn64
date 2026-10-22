extends "res://games/holiday_hunting/scripts.gd"
func ev_other_0():
	if ((x < (-500.0))):
		(GM.f_instance_destroy(self))
	if ((x > (GM.room_width + 500.0))):
		(GM.f_instance_destroy(self))
