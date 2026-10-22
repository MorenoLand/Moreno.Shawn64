extends "res://games/jetzfusion/objects/o137.gd"
func ev_create():
	alarm[int(0.0)] = 300.0
	direction = (40.0 + (GM.f_random(100.0)))
	speed = (1.0 + (GM.f_random(3.0)))
	gravity_direction = 270.0
	gravity = 0.4
