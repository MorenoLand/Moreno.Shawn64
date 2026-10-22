extends "res://games/street_bike_fury/scripts.gd"
var v_shot = 0.0
var v_this = 0.0
func ev_create():
	image_speed = 1.0
	image_index = 0.0
	v_shot = 0.0
func ev_alarm_0():
	image_speed = 0.0
func ev_step():
	if ((absf(GM.room - 2.0) < 0.00001)):
		if (((GM.vb(0.0, "x") > (x + 350.0)) and (absf(v_shot - 0.0) < 0.00001))):
			self.ev_user(0.0)
func ev_other_10():
	sprite_index = 215.0
	v_shot = 1.0
	for _r132 in range(int((10.0))):
		v_this = (GM.f_instance_create((x + 70.0), (y + 22.0), 303.0))
		GM.vsetb(v_this, "hspeed", (GM.vb(0.0, "hspeed") - (GM.f_random(10.0))))
		GM.vsetb(v_this, "vspeed", (-(GM.f_random(15.0))))
	for _r133 in range(int((50.0))):
		v_this = (GM.f_instance_create((x + 70.0), (y + 22.0), 285.0))
		GM.vsetb(v_this, "hspeed", ((GM.vb(0.0, "hspeed") - 5.0) + (GM.f_random(10.0))))
		GM.vsetb(v_this, "vspeed", ((-15.0) + (GM.f_random(30.0))))
	(GM.f_instance_create(x, y, 219.0))
	(GM.f_instance_create(x, y, 140.0))
	(GM.f_sound_play(95.0))
	image_speed = 1.0
	alarm[int(0.0)] = 3.0
