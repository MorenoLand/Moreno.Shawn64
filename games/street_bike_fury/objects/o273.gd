extends "res://games/street_bike_fury/objects/o1.gd"
var v_wee = 0.0
func ev_alarm_2():
	(GM.f_instance_destroy(self))
func ev_alarm_1():
	if ((absf(depth - 5.0) >= 0.00001)):
		vspeed = (vspeed / 2.0)
		(GM.f_sound_play(20.0))
		for _r155 in range(int((40.0))):
			v_wee = (GM.f_instance_create(((x - 20.0) + (GM.f_random(40.0))), ((y + 20.0) + (GM.f_random(10.0))), 81.0))
			GM.vsetb(v_wee, "direction", (GM.f_random(180.0)))
			GM.vsetb(v_wee, "speed", (1.0 + (GM.f_random(7.0))))
			GM.vsetb(v_wee, "gravity", 0.4)
		depth = 5.0
	alarm[int(2.0)] = 80.0
func ev_alarm_0():
	gravity = 0.5
	alarm[int(1.0)] = 10.0
