extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wow = 0.0
func ev_create():
	sprite_index = 453.0
	alarm[int(0.0)] = (50.0 + (GM.f_random(40.0)))
func ev_alarm_0():
	v_wow = (GM.f_floor((GM.f_random(4.9999))))
	if ((v_wow > 0.0)):
		(self.script_addjetpack())
	if ((GM.eq(v_wow, 1.0) or GM.eq(v_wow, 2.0))):
		if ((absf((GM.f_instance_number(770.0)) - 0.0) < 0.00001)):
			(self.script_addbigcar())
	if ((GM.eq(v_wow, 3.0) or GM.eq(v_wow, 4.0))):
		(self.script_copcreate())
	if (((v_wow < 4.0) and (absf(GM.room - 16.0) < 0.00001))):
		if not ((((GM.f_sound_isplaying(235.0)))) >= 0.5):
			if ((absf((GM.f_instance_number(888.0)) - 0.0) < 0.00001)):
				if ((absf((GM.f_instance_number(538.0)) - 0.0) < 0.00001)):
					(GM.f_instance_create((GM.view_xview[0] + (GM.f_random(800.0))), 0.0, 888.0))
	alarm[int(0.0)] = (50.0 + (GM.f_random(40.0)))
