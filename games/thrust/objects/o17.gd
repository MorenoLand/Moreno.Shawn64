extends "res://games/thrust/scripts.gd"
func ev_create():
	for _r19 in range(int((10.0))):
		(GM.f_instance_create((x + 0.0), (y + (-(GM.f_random(832.0)))), 18.0))
func ev_step():
	if ((((GM.f_random(25.0)) < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 18.0))
