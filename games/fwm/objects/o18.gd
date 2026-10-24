extends "res://games/fwm/scripts.gd"
var v_myshots = 0.0
var v_sparky = 0.0
func ev_create():
	v_sparky = 0.0
	v_myshots = 0.0
func ev_alarm_1():
	if (((v_myshots > 0.0))):
		(GM.f_instance_create((x + 2.0), (y + 2.0), 13.0))
		(GM.f_sound_stop(1.0))
		v_sparky = 0.0
		alarm[int(1.0)] = GM.vget(1.0, "v_shotspeed")
		v_myshots = v_myshots + (-1.0)
func ev_alarm_0():
	if (((v_myshots > 0.0))):
		(GM.f_instance_create((x + 2.0), (y + 2.0), 13.0))
		(GM.f_sound_stop(1.0))
		v_sparky = 0.0
		alarm[int(1.0)] = GM.vget(1.0, "v_shotspeed")
		v_myshots = v_myshots + (-1.0)
func ev_step():
	if (((absf(v_sparky - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 10.0), (y + 33.0), 11.0))
