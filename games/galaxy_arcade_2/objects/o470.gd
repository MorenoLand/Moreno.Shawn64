extends "res://games/galaxy_arcade_2/scripts.gd"
var v_kill = 0.0
func ev_create():
	v_kill = 0.0
	alarm[int(0.0)] = 9.0
func ev_alarm_0():
	v_kill = 1.0
