extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	GM.view_hborder[0] = 10.0
	GM.view_vborder[0] = 10.0
	(GM.f_sound_play(112.0))
	(GM.f_instance_create(x, y, 981.0))
func ev_destroy():
	GM.view_hborder[0] = (400.0 - 33.0)
	GM.view_vborder[0] = (300.0 - 33.0)
	GM.view_object[int(0.0)] = 7.0
	for _w623 in GM.with_list((981.0), self):
		if _w623._dead:
			continue
		_w623.other = self
		(GM.f_instance_destroy(_w623))
func ev_stepend():
	x = (GM.mouse_x - 20.0)
	y = (GM.mouse_y - 20.0)
	GM.view_object[int(0.0)] = 963.0
	GM.vsetb(981.0, "x", (GM.view_xview[0] + 380.0))
	GM.vsetb(981.0, "y", (GM.view_yview[0] + 240.0))
func ev_mouse_4():
	if ((absf(GM.vget(7.0, "v_shotready") - 1.0) < 0.00001)):
		(GM.f_instance_create(((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)) - 4.0), ((GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)) - 4.0), 964.0))
		GM.vset(7.0, "v_shotready", 0.0)
		GM.vb(7.0, "alarm")[int(0.0)] = 75.0
