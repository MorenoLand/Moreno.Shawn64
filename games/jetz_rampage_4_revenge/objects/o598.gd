extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_firepower = 0.0
var v_mypower = 0.0
var v_woot = 0.0
var v_woot2 = 0.0
var v_woot3 = 0.0
func ev_create():
	v_mypower = 3.0
	image_single = 0.0
	v_firepower = 20.0
func ev_alarm_1():
	self.ev_user(0.0)
func ev_alarm_0():
	v_woot = (GM.f_instance_create(((x + 30.0) + (GM.f_random(35.0))), (y + (GM.f_random((sprite_height - 50.0)))), 490.0))
	v_woot2 = (GM.f_instance_create(((x + 30.0) + (GM.f_random(35.0))), (y + (GM.f_random((sprite_height - 50.0)))), 905.0))
	v_woot3 = (GM.f_instance_create(((x + 30.0) + (GM.f_random(35.0))), (y + (GM.f_random((sprite_height - 50.0)))), 906.0))
	GM.vsetb(v_woot, "depth", depth)
	GM.vsetb(v_woot2, "depth", depth)
	GM.vsetb(v_woot3, "depth", depth)
	alarm[int(0.0)] = 1.0
func ev_col_959():
	for _r228 in range(int((25.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 599.0))
	for _r229 in range(int((3.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 608.0))
	(GM.f_instance_create(x, y, 615.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(131.0))
func ev_col_656():
	for _r230 in range(int((25.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 599.0))
	for _r231 in range(int((3.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 608.0))
	(GM.f_instance_create(x, y, 615.0))
	(GM.f_instance_destroy(self))
	(GM.f_sound_play(131.0))
func ev_col_502():
	if ((v_mypower > 0.0)):
		for _r232 in range(int((10.0))):
			(GM.f_instance_create((x + 52.0), (y + 89.0), 599.0))
		for _r233 in range(int((10.0))):
			(GM.f_instance_create((GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)), (GM.vb(self.other, "y") + (GM.vb(self.other, "sprite_height") / 2.0)), 599.0))
		image_single = image_single + 1.0
		v_mypower = v_mypower - 1.0
	else:
		for _r234 in range(int((25.0))):
			(GM.f_instance_create((x + 52.0), (x + 89.0), 599.0))
		for _r235 in range(int((3.0))):
			(GM.f_instance_create((x + 52.0), (x + 89.0), 608.0))
		(GM.f_instance_create(x, y, 615.0))
		(GM.f_instance_destroy(self))
	(GM.f_sound_play(131.0))
	for _w236 in GM.with_list((self.other), self):
		if _w236._dead:
			continue
		_w236.other = self
		(GM.f_instance_destroy(_w236))
func ev_col_491():
	if ((v_firepower > 0.0)):
		v_woot = (GM.f_instance_create(((x + 30.0) + (GM.f_random(35.0))), (y + (GM.f_random((sprite_height - 50.0)))), 490.0))
		v_woot2 = (GM.f_instance_create(((x + 30.0) + (GM.f_random(35.0))), (y + (GM.f_random((sprite_height - 50.0)))), 905.0))
		v_woot3 = (GM.f_instance_create(((x + 30.0) + (GM.f_random(35.0))), (y + (GM.f_random((sprite_height - 50.0)))), 906.0))
		GM.vsetb(v_woot, "depth", depth)
		GM.vsetb(v_woot2, "depth", depth)
		GM.vsetb(v_woot3, "depth", depth)
		v_firepower = v_firepower - 1.0
		self.ev_user(1.0)
func ev_other_11():
	if ((v_firepower < 1.0)):
		alarm[int(0.0)] = 1.0
		alarm[int(1.0)] = 75.0
func ev_other_10():
	for _r237 in range(int((25.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 599.0))
	for _r238 in range(int((3.0))):
		(GM.f_instance_create((x + 52.0), (x + 89.0), 608.0))
	(GM.f_instance_create(x, y, 615.0))
	(GM.f_instance_destroy(self))
