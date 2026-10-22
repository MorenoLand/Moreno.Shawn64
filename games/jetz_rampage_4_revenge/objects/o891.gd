extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	vspeed = vspeed + (8.0 + (GM.f_random(10.0)))
func ev_col_603():
	for _r516 in range(int((3.0))):
		(GM.f_instance_create((x + 2.0), (y + 5.0), 893.0))
	(GM.f_instance_destroy(self))
func ev_col_7():
	for _r517 in range(int((3.0))):
		(GM.f_instance_create((x + 2.0), (y + 5.0), 893.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
