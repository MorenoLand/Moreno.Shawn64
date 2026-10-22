extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_poom1 = 0.0
var v_poom2 = 0.0
var v_randoom = 0.0
var v_wow = 0.0
var v_woww = 0.0
func ev_create():
	v_poom1 = x
	v_poom2 = y
	v_woww = (GM.f_instance_create(x, y, 496.0))
	GM.vsetb(v_woww, "hspeed", GM.vb(v_woww, "hspeed") + hspeed)
	GM.vsetb(v_woww, "vspeed", GM.vb(v_woww, "vspeed") + vspeed)
	v_wow = (GM.f_floor((GM.f_random(1.999999))))
	if (GM.eq(v_wow, 0.0)):
		alarm[int(0.0)] = (50.0 + (GM.f_random(20.0)))
		(GM.f_instance_create(x, y, 890.0))
		(GM.f_instance_create(x, y, 892.0))
		(GM.f_sound_volume(235.0, 1.0))
		depth = (-200.0)
	if (GM.eq(v_wow, 1.0)):
		alarm[int(0.0)] = (20.0 + (GM.f_random(20.0)))
		(GM.f_instance_create(x, y, 497.0))
		(GM.f_sound_volume(235.0, 0.88))
		depth = 10000.0
	(GM.f_sound_play(235.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_color(16777215.0))
	if (GM.eq(v_wow, 0.0)):
		v_poom2 = v_poom2 + ((-30.0) + (GM.f_random(140.0)))
		v_randoom = (GM.f_round((GM.f_random(1.0))))
		if ((absf(v_randoom - 0.0) < 0.00001)):
			v_poom1 = v_poom1 + (GM.f_random(45.0))
		if ((absf(v_randoom - 1.0) < 0.00001)):
			v_poom1 = v_poom1 + (-(GM.f_random(45.0)))
	if (GM.eq(v_wow, 1.0)):
		v_poom2 = v_poom2 + ((-10.0) + (GM.f_random(60.0)))
		v_randoom = (GM.f_round((GM.f_random(1.0))))
		if ((absf(v_randoom - 0.0) < 0.00001)):
			v_poom1 = v_poom1 + (GM.f_random(25.0))
		if ((absf(v_randoom - 1.0) < 0.00001)):
			v_poom1 = v_poom1 + (-(GM.f_random(25.0)))
	(GM.f_draw_line(v_poom1, v_poom2, x, y))
	x = v_poom1
	y = v_poom2
	if ((((GM.f_random(8.0)) < 1.0))):
		v_woww = (GM.f_instance_create(x, y, 496.0))
		GM.vsetb(v_woww, "hspeed", GM.vb(v_woww, "hspeed") + hspeed)
		GM.vsetb(v_woww, "vspeed", GM.vb(v_woww, "vspeed") + vspeed)
