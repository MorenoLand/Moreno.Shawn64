extends "res://games/street_bike_fury/scripts.gd"
var v_set = 0.0
func ev_col_1():
	if (((x + sprite_width) > GM.view_xview[0])):
		for _r66 in range(int((90.0))):
			v_set = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 72.0))
			GM.vsetb(v_set, "direction", (GM.f_random(360.0)))
			GM.vsetb(v_set, "speed", (GM.f_random(5.0)))
		(GM.f_sound_play(40.0))
	(GM.f_instance_destroy(self))
func ev_col_0():
	if ((absf(gravity - 0.0) < 0.00001)):
		(GM.f_instance_create((x + 500.0), y, 140.0))
		(GM.f_sound_play(40.0))
		(self.script_addmessage("Busted Sign! +25", 65535.0, 3.0))
		for _r67 in range(int((150.0))):
			v_set = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 72.0))
			GM.vsetb(v_set, "direction", (GM.f_random(360.0)))
			GM.vsetb(v_set, "speed", ((GM.f_random(5.0)) * GM.G["gspeed"]))
		gravity = (0.4 * GM.G["gspeed"])
