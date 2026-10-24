extends "res://games/jetz_rampage_4_revenge/objects/o598.gd"
func ev_create():
	v_mypower = 3.0
	image_single = 0.0
	v_firepower = 20.0
func ev_col_959():
	for _r853 in range(int((25.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 599.0))
	for _r854 in range(int((3.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 608.0))
	(GM.f_instance_create(x, y, 879.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(131.0))
func ev_col_656():
	for _r855 in range(int((25.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 599.0))
	for _r856 in range(int((3.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 608.0))
	(GM.f_instance_create(x, y, 879.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(131.0))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r857 in range(int((10.0))):
			(GM.f_instance_create((x + 52.0), (y + 89.0), 599.0))
		for _r858 in range(int((10.0))):
			(GM.f_instance_create((GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)), (GM.vb(self.other, "y") + (GM.vb(self.other, "sprite_height") / 2.0)), 599.0))
		image_single = image_single + 1.0
		v_mypower = v_mypower - 1.0
	else:
		for _r859 in range(int((25.0))):
			(GM.f_instance_create((x + 52.0), (x + 89.0), 599.0))
		for _r860 in range(int((3.0))):
			(GM.f_instance_create((x + 52.0), (x + 89.0), 608.0))
		(GM.f_instance_create(x, y, 879.0))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(131.0))
	for _w861 in GM.with_list((self.other), self):
		if _w861._dead:
			continue
		_w861.other = self
		(GM.f_instance_destroy(_w861))
func ev_other_10():
	for _r862 in range(int((25.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 599.0))
	for _r863 in range(int((3.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 608.0))
	(GM.f_instance_create(x, y, 879.0))
	(GM.f_instance_destroy(self))
