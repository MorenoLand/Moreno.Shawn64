extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wowz = 0.0
func ev_create():
	alarm[int(0.0)] = (2.0 + (GM.f_random(10.0)))
func ev_alarm_0():
	(GM.f_sound_play(154.0))
	v_wowz = (GM.f_instance_create(((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), 656.0))
	GM.vset(v_wowz, "v_hitcop", 0.0)
	GM.vset(v_wowz, "v_wooper", id)
	y = y + 40.0
