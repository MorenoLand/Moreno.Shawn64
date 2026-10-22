extends "res://games/jetz_rampage_4_revenge/objects/o655.gd"
var v_image_single = 0.0
var v_sheesh = 0.0
func ev_create():
	v_image_single = 0.0
	v_hitornot = 0.0
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		vspeed = GM.vb(7.0, "vspeed")
		hspeed = (GM.vb(7.0, "hspeed") + 18.0)
	if ((absf(GM.vget(7.0, "v_guyleft") - 1.0) < 0.00001)):
		vspeed = GM.vb(7.0, "vspeed")
		hspeed = (GM.vb(7.0, "hspeed") - 18.0)
	for _r901 in range(int((5.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 501.0))
	for _r902 in range(int((60.0))):
		v_sheesh = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 490.0))
		GM.vsetb(v_sheesh, "vspeed", GM.vb(v_sheesh, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_sheesh, "hspeed", GM.vb(v_sheesh, "hspeed") + GM.vb(7.0, "hspeed"))
		GM.vsetb(v_sheesh, "speed", GM.vb(v_sheesh, "speed") + (5.0 + (GM.f_random(10.0))))
		GM.vsetb(v_sheesh, "direction", ((direction - 20.0) + (GM.f_random(40.0))))
	for _r903 in range(int((2.0))):
		v_sheesh = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 494.0))
	alarm[int(0.0)] = 60.0
	(GM.f_instance_create(0.0, 0.0, 497.0))
func ev_step():
	pass
