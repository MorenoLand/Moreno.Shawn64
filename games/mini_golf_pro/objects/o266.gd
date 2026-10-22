extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 10.0
func ev_alarm_0():
	GM.G["shoot"] = 1.0
