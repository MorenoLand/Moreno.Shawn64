extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	GM.view_object[int(0.0)] = 1011.0
	GM.view_yview[0] = 0.0
	GM.view_hborder[0] = (400.0 - 33.0)
	GM.view_vborder[0] = 0.0
func ev_stepend():
	x = (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0))
	y = (GM.vb(7.0, "y") + 550.0)
