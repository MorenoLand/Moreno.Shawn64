extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	vspeed = 15.0
func ev_col_531():
	if ((GM.vb(self.other, "y") > 1000.0)):
		(GM.f_sound_play(198.0))
		for _r747 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
		for _r748 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		(GM.f_instance_destroy(self))
func ev_col_489():
	(GM.f_sound_play(198.0))
	for _r749 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 599.0))
	for _r750 in range(int((25.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	(GM.f_instance_destroy(self))
func ev_col_7():
	(GM.f_instance_create((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)), 722.0))
	for _w751 in GM.with_list((680.0), self):
		if _w751._dead:
			continue
		_w751.other = self
		_w751.ev_user(0.0)
func ev_other_0():
	(GM.f_instance_destroy(self))
