extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wowz = 0.0
func ev_create():
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	(GM.f_sound_play(154.0))
	v_wowz = (GM.f_instance_create(x, y, 656.0))
	GM.vset(v_wowz, "v_hitcop", 1.0)
	GM.vset(v_wowz, "v_wooper", id)
	GM.vsetb(v_wowz, "hspeed", GM.vb(v_wowz, "hspeed") + hspeed)
	GM.vsetb(v_wowz, "vspeed", GM.vb(v_wowz, "vspeed") + vspeed)
	y = y + 20.0
