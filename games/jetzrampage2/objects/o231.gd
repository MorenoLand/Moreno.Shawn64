extends "res://games/jetzrampage2/objects/o85.gd"
func ev_create():
	v_mypower = 2.0
	v_alive = 1.0
	v_boom = (GM.f_round(((GM.f_random(15.0)) + 1.0)))
	if ((absf(v_boom - 1.0) < 0.00001)):
		sprite_index = 84.0
		hspeed = (-3.0)
	if ((absf(v_boom - 2.0) < 0.00001)):
		sprite_index = 83.0
		hspeed = 3.0
	if ((absf(v_boom - 3.0) < 0.00001)):
		sprite_index = 85.0
		hspeed = (-3.0)
	if ((absf(v_boom - 4.0) < 0.00001)):
		sprite_index = 82.0
		hspeed = 3.0
	if ((absf(v_boom - 5.0) < 0.00001)):
		sprite_index = 216.0
		hspeed = (-3.0)
	if ((absf(v_boom - 6.0) < 0.00001)):
		sprite_index = 217.0
		hspeed = 3.0
	if ((absf(v_boom - 7.0) < 0.00001)):
		sprite_index = 218.0
		hspeed = (-3.0)
	if ((absf(v_boom - 8.0) < 0.00001)):
		sprite_index = 219.0
		hspeed = 3.0
	if ((absf(v_boom - 9.0) < 0.00001)):
		sprite_index = 242.0
		hspeed = (-3.0)
	if ((absf(v_boom - 10.0) < 0.00001)):
		sprite_index = 243.0
		hspeed = 3.0
	if ((absf(v_boom - 11.0) < 0.00001)):
		sprite_index = 246.0
		hspeed = (-3.0)
	if ((absf(v_boom - 12.0) < 0.00001)):
		sprite_index = 249.0
		hspeed = 3.0
	if ((absf(v_boom - 13.0) < 0.00001)):
		sprite_index = 254.0
		hspeed = (-3.0)
	if ((absf(v_boom - 14.0) < 0.00001)):
		sprite_index = 253.0
		hspeed = 3.0
	if ((absf(v_boom - 15.0) < 0.00001)):
		sprite_index = 251.0
		hspeed = (-3.0)
	if ((absf(v_boom - 16.0) < 0.00001)):
		sprite_index = 252.0
		hspeed = 3.0
	v_door = 0.0
	alarm[int(0.0)] = 25.0
