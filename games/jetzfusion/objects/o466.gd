extends "res://games/jetzfusion/scripts.gd"
var v_foooo = 0.0
var v_hitornot = 0.0
var v_spite_height = 0.0
func ev_create():
	(GM.f_instance_create(0.0, 0.0, 396.0))
	for _r631 in range(int((3.0))):
		(GM.f_instance_create(((x + (-10.0)) + (GM.f_random(sprite_width))), ((y + (-10.0)) + (GM.f_random(sprite_height))), 23.0))
	(GM.f_sound_play(18.0))
	if ((GM.vb(464.0, "hspeed") > 0.0)):
		direction = 0.0
	else:
		direction = 180.0
	speed = 15.0
	(GM.f_motion_add(self, GM.vb(464.0, "direction"), GM.vb(464.0, "speed")))
	GM.vset(7.0, "v_chargeup", 0.0)
	v_hitornot = 0.0
	alarm[int(0.0)] = 30.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	v_foooo = (GM.f_instance_create((x + (GM.f_random(5.0))), (y + (GM.f_random(5.0))), 345.0))
	GM.vsetb(v_foooo, "direction", (direction - 180.0))
	GM.vsetb(v_foooo, "speed", (1.0 + (GM.f_random(10.0))))
	GM.vsetb(v_foooo, "hspeed", GM.vb(v_foooo, "hspeed") + hspeed)
	GM.vsetb(v_foooo, "vspeed", GM.vb(v_foooo, "vspeed") + vspeed)
	speed = speed + 0.1
func ev_col_45():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
	(GM.f_sound_play(23.0))
	for _r632 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(v_spite_height))), 26.0))
	(GM.f_instance_destroy(self))
func ev_col_7():
	(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
	(GM.f_sound_play(23.0))
	for _r633 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(v_spite_height))), 26.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
