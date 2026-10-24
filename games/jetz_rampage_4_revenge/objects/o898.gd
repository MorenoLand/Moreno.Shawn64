extends "res://games/jetz_rampage_4_revenge/objects/o563.gd"
func ev_create():
	image_single = 0.0
	v_peter = y
	v_mypower = 3.0
	v_firepower = 20.0
func ev_col_656():
	(GM.f_instance_create(x, y, 815.0))
	(GM.f_instance_create(x, y, 899.0))
	for _r873 in range(int((20.0))):
		v_peter = v_peter + 40.0
		(GM.f_instance_create(x, v_peter, 635.0))
	(GM.f_instance_destroy(self))
func ev_col_635():
	(GM.f_instance_create(x, y, 815.0))
	(GM.f_instance_create(x, y, 899.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(127.0))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r874 in range(int((15.0))):
			(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random(sprite_height))), 599.0))
		v_mypower = v_mypower - 1.0
	else:
		for _r875 in range(int((50.0))):
			(GM.f_instance_create(((x + 13.0) + (GM.f_random((15.0 - 2.5)))), (y + (GM.f_random(sprite_height))), 599.0))
		(GM.f_instance_create(x, y, 815.0))
		v_wee = (GM.f_instance_create(x, y, 899.0))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + (GM.vb(self.other, "hspeed") / 5.0))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + (GM.vb(self.other, "vspeed") / 5.0))
		for _r876 in range(int((20.0))):
			v_peter = v_peter + 40.0
			(GM.f_instance_create(x, v_peter, 635.0))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(127.0))
	for _w877 in GM.with_list((self.other), self):
		if _w877._dead:
			continue
		_w877.other = self
		(GM.f_instance_destroy(_w877))
func ev_other_10():
	(GM.f_instance_create(x, y, 815.0))
	(GM.f_instance_create(x, y, 899.0))
	for _r878 in range(int((20.0))):
		v_peter = v_peter + 40.0
		(GM.f_instance_create(x, v_peter, 635.0))
	(GM.f_instance_destroy(self))
