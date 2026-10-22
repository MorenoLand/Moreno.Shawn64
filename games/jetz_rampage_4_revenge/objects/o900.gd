extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_goo = 0.0
var v_wee = 0.0
func ev_create():
	for _w519 in GM.with_list((970.0), self):
		if _w519._dead:
			continue
		_w519.other = self
		(GM.f_instance_destroy(_w519))
	v_goo = 1.0
	alarm[int(1.0)] = 15.0
	for _r520 in range(int((50.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r521 in range(int((50.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r522 in range(int((2.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
func ev_alarm_5():
	(GM.f_instance_create(x, y, 901.0))
func ev_alarm_4():
	for _r523 in range(int((50.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r524 in range(int((80.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r525 in range(int((20.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r526 in range(int((150.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 662.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		for _w527 in GM.with_list((v_wee), self):
			if _w527._dead:
				continue
			_w527.other = self
			(GM.f_motion_add(_w527, (GM.f_random(360.0)), (10.0 + (GM.f_random(15.0)))))
	(GM.f_sound_play(147.0))
	for _w528 in GM.with_list((7.0), self):
		if _w528._dead:
			continue
		_w528.other = self
		(GM.f_instance_destroy(_w528))
	alarm[int(5.0)] = 50.0
func ev_alarm_3():
	for _r529 in range(int((100.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r530 in range(int((50.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r531 in range(int((1.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	(GM.f_sound_play(146.0))
	alarm[int(4.0)] = 15.0
func ev_alarm_2():
	for _r532 in range(int((10.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r533 in range(int((100.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r534 in range(int((6.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	(GM.f_sound_play(154.0))
	alarm[int(3.0)] = 10.0
func ev_alarm_1():
	for _r535 in range(int((50.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r536 in range(int((50.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	for _r537 in range(int((2.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 717.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(7.0, "vspeed"))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(7.0, "hspeed"))
	(GM.f_sound_play(146.0))
	alarm[int(2.0)] = 10.0
func ev_step():
	GM.vset(7.0, "v_movenow", 0.0)
	x = GM.vb(7.0, "x")
	y = GM.vb(7.0, "y")
