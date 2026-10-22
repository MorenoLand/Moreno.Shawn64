extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_create():
	alarm[int(0.0)] = 1.0
func ev_alarm_0():
	v_wee = (GM.f_instance_create(x, y, 1052.0))
	GM.vsetb(v_wee, "hspeed", hspeed)
	GM.vsetb(v_wee, "vspeed", vspeed)
	GM.vsetb(v_wee, "depth", depth)
func ev_step():
	GM.vset(7.0, "v_movenow", 0.0)
	GM.vsetb(7.0, "friction", 2.0)
