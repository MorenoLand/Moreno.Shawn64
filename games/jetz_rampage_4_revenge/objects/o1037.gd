extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	GM.view_object[int(0.0)] = 1011.0
	GM.view_vborder[0] = (300.0 - 33.0)
	GM.view_xview[0] = 2370.0
	GM.view_yview[0] = 560.0
func ev_stepend():
	x = (GM.vb(7.0, "x") - 350.0)
	y = (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0))
