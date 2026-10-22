extends "res://games/street_bike_fury/scripts.gd"
var v_dire = 0.0
var v_wee = 0.0
func ev_create():
	v_dire = (GM.f_floor((GM.f_random(1.999999))))
	if ((absf(v_dire - 0.0) < 0.00001)):
		direction = 0.0
		sprite_index = 59.0
	if ((absf(v_dire - 1.0) < 0.00001)):
		direction = 180.0
		sprite_index = 60.0
	speed = (((5.0 + (GM.f_random(10.0)))) * GM.G["gspeed"])
	x = ((GM.view_xview[0] + GM.view_wview[0]) + 10.0)
	y = (GM.view_yview[0] + (GM.f_random((GM.view_hview[0] - 200.0))))
func ev_col_0():
	if ((absf(GM.vb(self.other, "depth") - (-18.0)) < 0.00001)):
		for _r51 in range(int((30.0))):
			v_wee = (GM.f_instance_create(x, y, 62.0))
			GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + (GM.vb(0.0, "hspeed") / 2.0))
			GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + (GM.vb(0.0, "vspeed") / 2.0))
		(self.script_addmessage("BIRDY GO BOOM +3", 65535.0, 3.0))
		(GM.f_sound_play(14.0))
		(GM.f_instance_destroy(self))
