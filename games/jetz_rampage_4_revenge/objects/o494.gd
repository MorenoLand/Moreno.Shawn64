extends "res://games/jetz_rampage_4_revenge/objects/o502.gd"
var v_moveleft = 0.0
var v_moveright = 0.0
var v_poom1 = 0.0
var v_poom2 = 0.0
var v_randoom = 0.0
var v_woww = 0.0
func ev_create():
	hspeed = GM.vb(7.0, "hspeed")
	vspeed = GM.vb(7.0, "vspeed")
	v_poom1 = x
	v_poom2 = y
	alarm[int(0.0)] = ((GM.f_random(5.0)) + 1.0)
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		v_moveright = 1.0
	else:
		v_moveright = 0.0
	if ((absf(GM.vget(7.0, "v_guyleft") - 1.0) < 0.00001)):
		v_moveleft = 1.0
	else:
		v_moveleft = 0.0
	v_woww = (GM.f_instance_create(x, y, 496.0))
	GM.vsetb(v_woww, "hspeed", GM.vb(v_woww, "hspeed") + hspeed)
	GM.vsetb(v_woww, "vspeed", GM.vb(v_woww, "vspeed") + vspeed)
	v_wee = (GM.f_round((GM.f_random(1.0))))
	if (GM.eq(v_wee, 0.0)):
		(GM.f_instance_create(x, y, 973.0))
		(GM.f_instance_destroy(self))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_other_10():
	for _r806 in range(int((2.0))):
		(GM.f_instance_create(x, y, 734.0))
	(GM.f_instance_destroy(self))
	(GM.f_instance_create(x, y, 618.0))
func ev_draw():
	(GM.f_draw_set_color(16777215.0))
	if ((absf(v_moveleft - 1.0) < 0.00001)):
		v_poom1 = v_poom1 + ((-GM.vb(7.0, "speed")) - (GM.f_random(50.0)))
		v_randoom = (GM.f_round((GM.f_random(1.0))))
		if ((absf(v_randoom - 0.0) < 0.00001)):
			v_poom2 = v_poom2 + (GM.f_random(15.0))
		if ((absf(v_randoom - 1.0) < 0.00001)):
			v_poom2 = v_poom2 + (-(GM.f_random(15.0)))
	if ((absf(v_moveright - 1.0) < 0.00001)):
		v_poom1 = v_poom1 + (GM.vb(7.0, "speed") + (GM.f_random(50.0)))
		v_randoom = (GM.f_round((GM.f_random(1.0))))
		if ((absf(v_randoom - 0.0) < 0.00001)):
			v_poom2 = v_poom2 + (GM.f_random(15.0))
		if ((absf(v_randoom - 1.0) < 0.00001)):
			v_poom2 = v_poom2 + (-(GM.f_random(15.0)))
	(GM.f_draw_line(v_poom1, v_poom2, x, y))
	x = v_poom1
	y = v_poom2
	if ((((GM.f_random(8.0)) < 1.0))):
		v_woww = (GM.f_instance_create(x, y, 496.0))
		GM.vsetb(v_woww, "hspeed", GM.vb(v_woww, "hspeed") + hspeed)
		GM.vsetb(v_woww, "vspeed", GM.vb(v_woww, "vspeed") + vspeed)
