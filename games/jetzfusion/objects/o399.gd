extends "res://games/jetzfusion/objects/o56.gd"
var v_foooo = 0.0
func ev_create():
	(GM.f_instance_create(0.0, 0.0, 396.0))
	for _r660 in range(int((3.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 15.0))
	for _r661 in range(int((3.0))):
		(GM.f_instance_create(((x + (-10.0)) + (GM.f_random(sprite_width))), ((y + (-10.0)) + (GM.f_random(sprite_height))), 23.0))
	(GM.f_sound_play(18.0))
	if ((GM.vb(7.0, "hspeed") > 0.0)):
		direction = 0.0
	else:
		direction = 180.0
	speed = 15.0
	v_hitornot = GM.vget(7.0, "v_chargeup")
	(GM.f_motion_add(self, GM.vb(7.0, "direction"), GM.vb(7.0, "speed")))
	GM.vset(7.0, "v_chargeup", 0.0)
	alarm[int(0.0)] = 30.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	for _r662 in range(int(3.0)):
		v_foooo = (GM.f_instance_create((x + (GM.f_random(5.0))), (y + (GM.f_random(5.0))), 345.0))
		GM.vsetb(v_foooo, "direction", (direction - 180.0))
		GM.vsetb(v_foooo, "speed", (1.0 + (GM.f_random(10.0))))
		GM.vsetb(v_foooo, "hspeed", GM.vb(v_foooo, "hspeed") + hspeed)
		GM.vsetb(v_foooo, "vspeed", GM.vb(v_foooo, "vspeed") + vspeed)
	speed = speed + 0.1
func ev_other_0():
	(GM.f_instance_destroy(self))
