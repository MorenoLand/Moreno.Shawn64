extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_grrr = 0.0
var v_shot = 0.0
func ev_create():
	gravity_direction = 270.0
	gravity = 0.5
	(GM.f_motion_add(self, (GM.f_random(360.0)), (GM.f_random(0.5))))
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_801():
	hspeed = 0.0
func ev_col_652():
	if ((GM.eq(v_grrr, GM.vget(self.other, "v_grrr")))):
		vspeed = 0.0
		gravity = 0.0
		hspeed = 0.0
func ev_col_489():
	if (((GM.vb(self.other, "y") > 100.0))):
		if (not (((absf(vspeed - 0.0) < 0.00001)))):
			if ((speed > 5.0)):
				for _r280 in range(int((5.0))):
					v_shot = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 654.0))
					GM.vsetb(v_shot, "direction", (20.0 + (GM.f_random(140.0))))
					GM.vsetb(v_shot, "depth", (depth - 1.0))
			gravity = 0.0
			vspeed = 0.0
			hspeed = 0.0
func ev_other_7():
	image_single = (image_number - 1.0)
func ev_other_0():
	(GM.f_instance_destroy(self))
