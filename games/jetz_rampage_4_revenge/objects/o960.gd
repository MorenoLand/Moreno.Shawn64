extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_Infected_City = 0.0
func ev_create():
	gravity = 0.3
	gravity_direction = 270.0
	if ((absf(GM.room - 1.0) < 0.00001)):
		sprite_index = 497.0
	if ((absf(GM.room - 16.0) < 0.00001)):
		sprite_index = 852.0
	if (GM.eq(GM.room, v_Infected_City)):
		sprite_index = 497.0
func ev_col_603():
	self.ev_user(0.0)
func ev_other_10():
	(self.script_adddamage())
	for _r621 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 599.0))
	for _r622 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), ((y + 24.0) + (GM.f_random(4.0))), 608.0))
	(GM.f_sound_play(132.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
