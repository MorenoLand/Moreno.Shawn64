extends "res://games/jetz_rampage_4_revenge/objects/o684.gd"
func ev_create():
	v_mypower = 3.0
	image_single = 0.0
	v_firepower = 14.0
func ev_col_656():
	(GM.f_instance_create(x, y, 688.0))
	v_weez = (GM.f_instance_create(x, (y - 4.0), 686.0))
	v_fluh = GM.vget(self.other, "v_wooper")
	GM.vsetb(v_weez, "direction", ((GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), GM.vb(v_fluh, "x"), GM.vb(v_fluh, "y"))) - 180.0))
	GM.vsetb(v_weez, "speed", GM.vb(v_weez, "speed") + (6.0 + (GM.f_random(3.0))))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(122.0))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r812 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(40.0))), (y + (GM.f_random(40.0))), 599.0))
		v_mypower = v_mypower - 1.0
	else:
		for _r813 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(40.0))), (y + (GM.f_random(40.0))), 599.0))
		for _r814 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(40.0))), (y + (GM.f_random(40.0))), 608.0))
		(GM.f_instance_create(x, y, 688.0))
		v_weez = (GM.f_instance_create(x, (y - 4.0), 686.0))
		GM.vsetb(v_weez, "direction", (10.0 + (GM.f_random(160.0))))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(169.0))
	for _w815 in GM.with_list((self.other), self):
		if _w815._dead:
			continue
		_w815.other = self
		(GM.f_instance_destroy(_w815))
func ev_other_10():
	for _r816 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(40.0))), (y + (GM.f_random(40.0))), 599.0))
	for _r817 in range(int((15.0))):
		(GM.f_instance_create((x + (GM.f_random(40.0))), (y + (GM.f_random(40.0))), 608.0))
	(GM.f_instance_create(x, y, 688.0))
	v_weez = (GM.f_instance_create(x, (y - 4.0), 686.0))
	GM.vsetb(v_weez, "direction", (10.0 + (GM.f_random(160.0))))
	(GM.f_instance_destroy(self))
