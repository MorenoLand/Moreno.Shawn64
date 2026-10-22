extends "res://games/jetz_rampage_4_revenge/objects/o655.gd"
var v_sheesh = 0.0
var v_woot = 0.0
func ev_create():
	v_hitornot = 0.0
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		vspeed = GM.vb(7.0, "vspeed")
		hspeed = (GM.vb(7.0, "hspeed") + 25.0)
	if ((absf(GM.vget(7.0, "v_guyleft") - 1.0) < 0.00001)):
		vspeed = GM.vb(7.0, "vspeed")
		hspeed = (GM.vb(7.0, "hspeed") - 25.0)
	alarm[int(0.0)] = 25.0
	for _r807 in range(int((25.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 501.0))
	for _r808 in range(int((15.0))):
		v_sheesh = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 493.0))
		GM.vsetb(v_sheesh, "vspeed", GM.vb(v_sheesh, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_sheesh, "hspeed", GM.vb(v_sheesh, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r809 in range(int((3.0))):
		v_sheesh = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 494.0))
	(GM.f_instance_create(0.0, 0.0, 497.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	if ((((GM.f_random(2.0)) < 1.0))):
		v_woot = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 488.0))
