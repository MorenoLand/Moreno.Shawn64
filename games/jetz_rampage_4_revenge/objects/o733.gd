extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_shizzeds = 0.0
var v_wow = 0.0
func ev_create():
	image_speed = 0.7
	GM.vsetb(7.0, "friction", 0.5)
	alarm[int(0.0)] = 40.0
	alarm[int(1.0)] = 2.0
func ev_alarm_1():
	(self.script_takedamagejetz())
	(GM.f_sound_play(122.0))
	alarm[int(1.0)] = 2.0
func ev_alarm_0():
	if (((y + 55.0) < GM.vb(603.0, "y"))):
		GM.vsetb(7.0, "friction", 0.1)
		v_shizzeds = (GM.f_instance_create(x, y, 732.0))
		GM.vset(v_shizzeds, "v_mypower", 5.0)
		GM.vsetb(v_shizzeds, "hspeed", GM.vb(v_shizzeds, "hspeed") + GM.vb(7.0, "hspeed"))
		GM.vsetb(v_shizzeds, "vspeed", GM.vb(v_shizzeds, "vspeed") + GM.vb(7.0, "vspeed"))
		(GM.f_instance_destroy(self))
	else:
		alarm[int(0.0)] = 1.0
func ev_stepend():
	x = (GM.vb(7.0, "x") + 10.0)
	y = GM.vb(7.0, "y")
func ev_step():
	v_wow = (GM.f_floor((GM.f_random(15.999))))
	if (GM.eq(v_wow, 0.0)):
		(GM.f_sound_play(201.0))
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r428 in range(int((2.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
func ev_other_15():
	(self.script_copdestroy())
