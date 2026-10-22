extends "res://games/jetz_rampage_4_revenge/objects/o502.gd"
func ev_create():
	hspeed = hspeed + GM.vb(7.0, "hspeed")
	vspeed = vspeed + GM.vb(7.0, "vspeed")
	if ((absf(GM.vget(7.0, "v_guyright") - 1.0) < 0.00001)):
		sprite_index = 454.0
	if ((absf(GM.vget(7.0, "v_guyleft") - 1.0) < 0.00001)):
		sprite_index = 455.0
	alarm[int(0.0)] = 1.0
func ev_col_531():
	pass
func ev_other_10():
	for _w886 in GM.with_list((7.0), self):
		if _w886._dead:
			continue
		_w886.other = self
		(GM.f_motion_add(_w886, (GM.f_random(360.0)), 0.4))
	for _r887 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r888 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r889 in range(int((3.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 490.0))
	(GM.f_instance_destroy(self))
