extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_weet = 0.0
func ev_create():
	direction = (85.0 + (GM.f_random(10.0)))
	speed = (9.0 + (GM.f_random(1.0)))
func ev_step():
	if ((((GM.f_random(8.0)) < 1.0))):
		v_weet = (GM.f_instance_create(x, y, 490.0))
		GM.vsetb(v_weet, "hspeed", GM.vb(v_weet, "hspeed") + hspeed)
		GM.vsetb(v_weet, "vspeed", GM.vb(v_weet, "vspeed") + vspeed)
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
