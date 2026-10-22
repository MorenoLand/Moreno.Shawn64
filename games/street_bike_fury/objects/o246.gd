extends "res://games/street_bike_fury/scripts.gd"
var v_mypower = 0.0
var v_set = 0.0
func ev_create():
	v_mypower = 2.0
func ev_col_20():
	self.ev_user(0.0)
func ev_other_10():
	for _r107 in range(int((30.0))):
		v_set = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 240.0))
		GM.vsetb(v_set, "direction", (GM.f_random(360.0)))
		GM.vsetb(v_set, "speed", (GM.f_random(15.0)))
	(GM.f_sound_play(8.0))
	(GM.f_instance_destroy(self))
