extends "res://games/jetzrampage/scripts.gd"
var v_pow = 0.0
var v_shotready = 0.0
func ev_create():
	v_pow = 0.0
	v_shotready = 1.0
	if (((GM.vb(0.0, "hspeed") > 0.0))):
		sprite_index = 106.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		sprite_index = 105.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
func ev_step():
	if (((GM.vb(0.0, "hspeed") > 0.0))):
		x = (GM.vb(0.0, "x") + 23.0)
		y = (GM.vb(0.0, "y") + 26.0)
	if (((GM.vb(0.0, "hspeed") < 0.0))):
		x = (GM.vb(0.0, "x") + 25.0)
		y = (GM.vb(0.0, "y") + 26.0)
func ev_other_7():
	(GM.f_sound_play(32.0))
	(GM.f_instance_create((x + 7.0), (y + 7.0), 101.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 2.0))
	(GM.f_instance_destroy(self))
