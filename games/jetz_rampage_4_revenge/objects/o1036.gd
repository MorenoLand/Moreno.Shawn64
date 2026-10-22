extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_create():
	if (((GM.f_instance_number(1030.0)) > 0.0)):
		direction = (((GM.f_point_direction(x, y, GM.vb(1030.0, "x"), GM.vb(1030.0, "y"))) - 2.0) + (GM.f_random(4.0)))
	if (((GM.f_instance_number(1031.0)) > 0.0)):
		direction = (((GM.f_point_direction(x, y, GM.vb(1031.0, "x"), GM.vb(1031.0, "y"))) - 2.0) + (GM.f_random(4.0)))
	speed = 10.0
func ev_col_1031():
	v_wee = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 8.0), ((y + (sprite_height / 2.0)) - 8.0), 655.0))
	for _w690 in GM.with_list((v_wee), self):
		if _w690._dead:
			continue
		_w690.other = self
		_w690.ev_user(0.0)
	(GM.f_instance_destroy(self))
	for _w691 in GM.with_list((self.other), self):
		if _w691._dead:
			continue
		_w691.other = self
		_w691.ev_user(0.0)
func ev_col_1030():
	v_wee = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 8.0), ((y + (sprite_height / 2.0)) - 8.0), 655.0))
	for _w692 in GM.with_list((v_wee), self):
		if _w692._dead:
			continue
		_w692.other = self
		_w692.ev_user(0.0)
	(GM.f_instance_destroy(self))
	for _w693 in GM.with_list((self.other), self):
		if _w693._dead:
			continue
		_w693.other = self
		_w693.ev_user(0.0)
func ev_col_603():
	v_wee = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 8.0), ((y + (sprite_height / 2.0)) - 8.0), 655.0))
	for _w694 in GM.with_list((v_wee), self):
		if _w694._dead:
			continue
		_w694.other = self
		_w694.ev_user(0.0)
	(GM.f_instance_destroy(self))
	for _w695 in GM.with_list((self.other), self):
		if _w695._dead:
			continue
		_w695.other = self
		_w695.ev_user(0.0)
func ev_col_502():
	v_wee = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 8.0), ((y + (sprite_height / 2.0)) - 8.0), 655.0))
	for _w696 in GM.with_list((v_wee), self):
		if _w696._dead:
			continue
		_w696.other = self
		_w696.ev_user(0.0)
	(GM.f_instance_destroy(self))
	for _w697 in GM.with_list((self.other), self):
		if _w697._dead:
			continue
		_w697.other = self
		_w697.ev_user(0.0)
func ev_col_7():
	v_wee = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 8.0), ((y + (sprite_height / 2.0)) - 8.0), 655.0))
	for _w698 in GM.with_list((v_wee), self):
		if _w698._dead:
			continue
		_w698.other = self
		_w698.ev_user(0.0)
	(GM.f_instance_destroy(self))
	for _w699 in GM.with_list((self.other), self):
		if _w699._dead:
			continue
		_w699.other = self
		_w699.ev_user(0.0)
func ev_draw():
	(GM.f_draw_sprite(1016.0, (direction / 22.5), x, y))
