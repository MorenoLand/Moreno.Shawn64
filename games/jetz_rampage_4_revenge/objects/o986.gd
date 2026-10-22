extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_weapon = 0.0
func ev_destroy():
	GM.vset(7.0, "v_weapon", 1.0)
	GM.vset(7.0, "v_select", 0.0)
func ev_step():
	GM.vset(7.0, "v_weapon", v_weapon)
