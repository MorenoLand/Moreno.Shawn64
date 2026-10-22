extends "res://games/street_bike_fury/scripts.gd"
var v_wee = 0.0
func ev_create():
	alarm[int(0.0)] = 30.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_0():
	for _r50 in range(int((3.0))):
		v_wee = (GM.f_instance_create(x, y, 59.0))
		GM.vsetb(v_wee, "depth", depth)
	(GM.f_instance_destroy(self))
