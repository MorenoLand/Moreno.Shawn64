extends "res://games/jetz_rampage_4_revenge/objects/o564.gd"
func ev_col_656():
	for _r834 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(30.0))), 599.0))
	(GM.f_sound_play(134.0))
	(GM.f_instance_destroy(self))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r835 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(30.0))), 599.0))
		v_mypower = v_mypower - 1.0
	else:
		for _r836 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(30.0))), 599.0))
		(GM.f_sound_play(134.0))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(135.0))
	for _w837 in GM.with_list((self.other), self):
		if _w837._dead:
			continue
		_w837.other = self
		(GM.f_instance_destroy(_w837))
func ev_other_10():
	for _r838 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(30.0))), 599.0))
	(GM.f_sound_play(134.0))
	(GM.f_instance_destroy(self))
