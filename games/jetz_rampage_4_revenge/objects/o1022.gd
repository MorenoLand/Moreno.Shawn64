extends "res://games/jetz_rampage_4_revenge/objects/o655.gd"
var v_speedo = 0.0
var v_wow = 0.0
var v_xxx = 0.0
var v_yyy = 0.0
func ev_create():
	v_hitornot = 0.0
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		vspeed = GM.vb(7.0, "vspeed")
		hspeed = (GM.vb(7.0, "hspeed") + 25.0)
	if ((absf(GM.vget(7.0, "v_guyleft") - 1.0) < 0.00001)):
		vspeed = GM.vb(7.0, "vspeed")
		hspeed = (GM.vb(7.0, "hspeed") - 25.0)
	alarm[int(0.0)] = 45.0
	v_xxx = (x - GM.vb(7.0, "x"))
	v_yyy = (y - GM.vb(7.0, "y"))
	(GM.f_sound_loop(247.0))
	v_speedo = speed
func ev_destroy():
	(GM.f_sound_stop(247.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
	(GM.f_instance_create(x, y, 493.0))
func ev_stepbegin():
	if ((speed < v_speedo)):
		speed = speed + 3.0
func ev_step():
	y = ((GM.vb(7.0, "y") - 3.0) + 29.0)
	for _r912 in range(int((2.0))):
		(GM.f_instance_create(x, y, 1023.0))
	for _r913 in range(int((10.0))):
		(GM.f_instance_create((GM.vb(7.0, "x") + v_xxx), (GM.vb(7.0, "y") + v_yyy), 1024.0))
	if (((x > GM.vb(7.0, "x")) and (absf(GM.vget(7.0, "v_guyleft") - 1.0) < 0.00001))):
		(GM.f_instance_destroy(self))
	if (((x < GM.vb(7.0, "x")) and (absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001))):
		(GM.f_instance_destroy(self))
	v_wow = (GM.f_round((GM.f_random(1.0))))
	if (GM.eq(v_wow, 0.0)):
		if ((absf((GM.f_instance_number(678.0)) - 0.0) < 0.00001)):
			(GM.f_instance_create(x, y, 678.0))
func ev_other_10():
	speed = (-3.0)
	(GM.f_sound_play(238.0))
	for _r914 in range(int((5.0))):
		(GM.f_instance_create(x, y, 493.0))
func ev_draw():
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_line(x, y, (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), ((GM.vb(7.0, "y") - 3.0) + 29.0)))
func ev_keypress_16():
	(GM.f_instance_destroy(self))
