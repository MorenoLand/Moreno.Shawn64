extends "res://games/street_bike_fury/scripts.gd"
var v_dire = 0.0
func ev_create():
	v_dire = (GM.f_floor((GM.f_random(1.999999))))
	if ((absf(v_dire - 0.0) < 0.00001)):
		direction = 0.0
		sprite_index = 91.0
	if ((absf(v_dire - 1.0) < 0.00001)):
		direction = 180.0
		sprite_index = 90.0
	speed = (((5.0 + (GM.f_random(5.0)))) * GM.G["gspeed"])
	x = ((GM.view_xview[0] + GM.view_wview[0]) + 10.0)
	y = (GM.view_yview[0] + (GM.f_random((GM.view_hview[0] - 200.0))))
func ev_step():
	x = x + (GM.vb(0.0, "hspeed") / 2.0)
	y = y + (GM.vb(0.0, "vspeed") / 2.0)
	if (((x < (GM.view_xview[0] - 40.0)) or (x > (GM.view_xview[0] + 840.0)))):
		(GM.f_instance_destroy(self))
