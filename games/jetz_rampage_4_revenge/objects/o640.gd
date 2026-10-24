extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_onfire = 0.0
var v_sett = 0.0
var v_wee = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
var v_xxx = 0.0
func ev_create():
	v_onfire = 0.0
	v_wee = (GM.f_round((GM.f_random(1.0))))
	if (GM.eq(v_wee, 0.0)):
		sprite_index = 512.0
		direction = 0.0
	if (GM.eq(v_wee, 1.0)):
		sprite_index = 596.0
		direction = 180.0
	speed = (3.0 + (GM.f_random(7.0)))
func ev_alarm_0():
	v_wee = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 662.0))
	GM.vset(v_wee, "v_yyy", GM.room_height)
	alarm[int(0.0)] = 1.0
	if ((absf(v_onfire - 1.0) < 0.00001)):
		v_woot = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 490.0))
		v_woot2 = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 905.0))
		v_woot3 = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 1.0), ((y + (sprite_height / 2.0)) - 10.0), 906.0))
		GM.vsetb(v_woot, "hspeed", GM.vb(v_woot, "hspeed") + hspeed)
		GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + vspeed)
		GM.vsetb(v_woot, "depth", depth)
		GM.vsetb(v_woot2, "hspeed", GM.vb(v_woot2, "hspeed") + hspeed)
		GM.vsetb(v_woot2, "vspeed", GM.vb(v_woot2, "vspeed") + vspeed)
		GM.vsetb(v_woot2, "depth", depth)
		GM.vsetb(v_woot3, "hspeed", GM.vb(v_woot3, "hspeed") + hspeed)
		GM.vsetb(v_woot3, "vspeed", GM.vb(v_woot3, "vspeed") + vspeed)
		GM.vsetb(v_woot3, "depth", depth)
func ev_col_796():
	if ((absf((GM.f_instance_number(1039.0)) - 1.0) < 0.00001)):
		GM.vset(1039.0, "v_targethit", GM.vget(1039.0, "v_targethit") + 1.0)
	(GM.f_sound_play(139.0))
	self.ev_user(0.0)
func ev_col_656():
	if ((absf(gravity - 0.0) < 0.00001)):
		(self.script_adddamage())
		(GM.f_sound_play(155.0))
		image_single = 1.0
		for _r269 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 668.0))
		gravity = 0.3
		alarm[int(0.0)] = 1.0
func ev_col_603():
	self.ev_user(0.0)
func ev_col_502():
	if ((absf(gravity - 0.0) < 0.00001)):
		(self.script_adddamage())
		(GM.f_sound_play(155.0))
		image_single = 1.0
		for _r270 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 668.0))
		gravity = 0.3
		alarm[int(0.0)] = 1.0
func ev_col_491():
	if ((absf(gravity - 0.0) < 0.00001)):
		(self.script_adddamage())
		v_onfire = 1.0
		(GM.f_sound_play(155.0))
		image_single = 1.0
		for _r271 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 668.0))
		gravity = 0.3
		alarm[int(0.0)] = 1.0
func ev_other_10():
	for _r272 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 668.0))
	(GM.f_sound_play(151.0))
	while true:
		v_xxx = (GM.f_random(GM.room_width))
		if (((v_xxx < (GM.view_xview[0] - 40.0)) or (v_xxx > (GM.view_xview[0] + 800.0)))):
			break
	(GM.f_instance_create(v_xxx, (50.0 + (GM.f_random(750.0))), 640.0))
	(GM.f_instance_destroy(self))
	for _r273 in range(int((100.0))):
		v_sett = (GM.f_instance_create((x + (GM.f_random((sprite_width - 2.0)))), (y + (GM.f_random(20.0))), 653.0))
		GM.vsetb(v_sett, "direction", (20.0 + (GM.f_random(140.0))))
		GM.vset(v_sett, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_sett, "depth", depth)
		GM.vsetb(v_sett, "speed", GM.vb(v_sett, "speed") - (GM.f_random(5.0)))
	(GM.f_instance_destroy(self))
func ev_other_4():
	y = (50.0 + (GM.f_random(750.0)))
	x = (GM.f_random(GM.room_width))
func ev_other_0():
	while true:
		v_xxx = (GM.f_random(GM.room_width))
		if (((v_xxx < (GM.view_xview[0] - 40.0)) or (v_xxx > (GM.view_xview[0] + 800.0)))):
			break
	(GM.f_instance_create(v_xxx, (50.0 + (GM.f_random(750.0))), 640.0))
	(GM.f_instance_destroy(self))
