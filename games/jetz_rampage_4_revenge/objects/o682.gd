extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_image_single = 0.0
func ev_create():
	(GM.f_action_move(self, "000100000", 25.0, 0.0))
	v_image_single = 0.0
	x = ((2000.0 + GM.room_width) + (GM.f_random(1000.0)))
func ev_step():
	if (((((x < (GM.view_xview[0] + 800.0)) and (x > (GM.view_xview[0] + 700.0))) and (absf(GM.view_yview[0] - (GM.room_height - 600.0)) < 0.00001)))):
		if (not ((((GM.f_sound_isplaying(167.0)))) >= 0.5)):
			(GM.f_sound_play(167.0))
func ev_other_1():
	if ((x < ((-sprite_width) + 2.0))):
		x = (GM.room_width + (GM.f_random(4000.0)))
