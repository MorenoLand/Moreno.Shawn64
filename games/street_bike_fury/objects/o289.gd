extends "res://games/street_bike_fury/scripts.gd"
var v_set = 0.0
func ev_create():
	hspeed = GM.vb(0.0, "hspeed")
	gravity = 0.4
	gravity_direction = 270.0
	(GM.f_sound_play(91.0))
func ev_alarm_0():
	(GM.f_sound_play(88.0))
	for _r129 in range(int((60.0))):
		v_set = (GM.f_instance_create(((x - 10.0) + (GM.f_random(20.0))), ((y - 10.0) + (GM.f_random(20.0))), 81.0))
		GM.vsetb(v_set, "direction", (60.0 + (GM.f_random(60.0))))
		GM.vsetb(v_set, "speed", (GM.f_random(30.0)))
	(GM.f_instance_destroy(self))
	image_angle = direction
func ev_step():
	v_set = (GM.f_instance_create(x, y, 96.0))
	GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + (hspeed / 2.0))
	GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + (vspeed / 2.0))
	image_angle = direction
func ev_col_76():
	if ((absf(alarm[int(0.0)] - (-1.0)) < 0.00001)):
		alarm[int(0.0)] = 5.0
