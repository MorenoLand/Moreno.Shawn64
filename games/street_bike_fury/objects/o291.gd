extends "res://games/street_bike_fury/scripts.gd"
var v_wee = 0.0
var v_wit = 0.0
func ev_create():
	image_speed = 0.0
	image_index = 0.0
func ev_col_0():
	for _r130 in range(int((40.0))):
		v_wee = (GM.f_instance_create(((x - 10.0) + (GM.f_random(20.0))), ((y - 20.0) + (GM.f_random(40.0))), 67.0))
		GM.vsetb(v_wee, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_wee, "speed", (1.0 + (GM.f_random(4.0))))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + (GM.vb(0.0, "hspeed") / 1.3))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + (GM.vb(0.0, "vspeed") / 1.3))
	(self.script_addmessage("WOOF WOOF!! +25", 65535.0, 10.0))
	(GM.f_sound_play(90.0))
	GM.G["people"] = GM.G["people"] + 25.0
	v_wit = (GM.f_instance_create(x, y, 294.0))
	GM.vsetb(v_wit, "direction", (GM.vb(0.0, "direction") + 20.0))
	GM.vsetb(v_wit, "speed", (GM.vb(0.0, "speed") / 1.5))
	(GM.f_instance_destroy(self))
