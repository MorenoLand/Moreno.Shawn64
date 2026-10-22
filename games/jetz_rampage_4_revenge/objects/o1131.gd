extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_stepend():
	x = ((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) - 40.0)
	y = (GM.vb(7.0, "y") + 20.0)
