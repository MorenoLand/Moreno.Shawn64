extends "res://games/jetz_rampage_4_revenge/objects/o655.gd"
var v_wee = 0.0
func ev_create():
	image_single = 1.0
	v_hitornot = 0.0
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		vspeed = GM.vb(7.0, "vspeed")
		hspeed = (GM.vb(7.0, "hspeed") + 18.0)
	if ((absf(GM.vget(7.0, "v_guyleft") - 1.0) < 0.00001)):
		vspeed = GM.vb(7.0, "vspeed")
		hspeed = (GM.vb(7.0, "hspeed") - 18.0)
	(GM.f_motion_add(self, (direction + 90.0), 20.0))
	for _r905 in range(int((5.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 501.0))
	alarm[int(0.0)] = 60.0
func ev_step():
	(GM.f_motion_add(self, (GM.f_point_direction(x, y, GM.vb(1012.0, "x"), GM.vb(1012.0, "y"))), 5.0))
	v_wee = (GM.f_instance_create(x, y, 1015.0))
func ev_other_0():
	(GM.f_instance_destroy(self))
