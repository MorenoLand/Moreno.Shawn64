extends "res://games/jetzfusion/scripts.gd"
var v_blah = 0.0
func ev_create():
	y = (-50.0)
	v_blah = 0.0
	(GM.f_action_move(self, "000100000", 11.5, 0.0))
func ev_alarm_1():
	for _w496 in GM.with_list((366.0), self):
		if _w496._dead:
			continue
		_w496.other = self
		GM.vset(_w496, "v_kickass", "PREPARE TO ROCK!")
	alarm[int(0.0)] = 3.0
func ev_alarm_0():
	for _w497 in GM.with_list((366.0), self):
		if _w497._dead:
			continue
		_w497.other = self
		GM.vset(_w497, "v_kickass", "")
	alarm[int(1.0)] = 3.0
func ev_step():
	if (((x < 0.0))):
		for _w498 in GM.with_list((366.0), self):
			if _w498._dead:
				continue
			_w498.other = self
			GM.vset(_w498, "v_kickass", "Orbit City")
		GM.view_object[0] = 7.0
		(GM.f_instance_create(160.0, 300.0, 7.0))
		(GM.f_instance_create(160.0, 0.0, 355.0))
		(GM.f_instance_destroy(self))
	if (((x < 700.0))):
		if (((absf(v_blah - 0.0) < 0.00001))):
			for _w499 in GM.with_list((366.0), self):
				if _w499._dead:
					continue
				_w499.other = self
				GM.vset(_w499, "v_kickass", "PREPARE TO ROCK!")
			alarm[int(0.0)] = 3.0
			v_blah = 1.0
	if not ((((absf(GM.view_xview[0] - 0.0) < 0.00001) or (absf(GM.view_xview[0] - (GM.room_width - 800.0)) < 0.00001)))):
		GM.background_hspeed[int(1.0)] = (hspeed / 15.0)
		GM.background_hspeed[int(0.0)] = (hspeed / 10.0)
	else:
		GM.background_hspeed[int(1.0)] = 0.0
		GM.background_hspeed[int(0.0)] = 0.0
func ev_draw():
	(GM.f_draw_sprite(319.0, (-1.0), (GM.view_xview[0] + 189.0), 35.0))
