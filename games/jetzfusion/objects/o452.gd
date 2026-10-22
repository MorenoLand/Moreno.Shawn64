extends "res://games/jetzfusion/scripts.gd"
var v_blah = 0.0
var v_view_left = 0.0
func ev_create():
	y = (-50.0)
	v_blah = 0.0
	(GM.f_action_move(self, "000100000", 11.5, 0.0))
func ev_alarm_1():
	for _w596 in GM.with_list((366.0), self):
		if _w596._dead:
			continue
		_w596.other = self
		GM.vset(_w596, "v_kickass", "PREPARE TO ROCK!")
	alarm[int(0.0)] = 3.0
func ev_alarm_0():
	for _w597 in GM.with_list((366.0), self):
		if _w597._dead:
			continue
		_w597.other = self
		GM.vset(_w597, "v_kickass", "")
	alarm[int(1.0)] = 3.0
func ev_step():
	if (((x < 0.0))):
		for _w598 in GM.with_list((366.0), self):
			if _w598._dead:
				continue
			_w598.other = self
			GM.vset(_w598, "v_kickass", "Orbit City")
			GM.background_hspeed[int(1.0)] = 0.0
			GM.background_hspeed[int(0.0)] = 0.0
			GM.view_visible[int(0.0)] = 1.0
			GM.view_visible[int(1.0)] = 1.0
			GM.view_visible[int(2.0)] = 0.0
		(GM.f_instance_destroy(self))
	if (((x < 700.0))):
		if (((absf(v_blah - 0.0) < 0.00001))):
			for _w599 in GM.with_list((366.0), self):
				if _w599._dead:
					continue
				_w599.other = self
				GM.vset(_w599, "v_kickass", "PREPARE TO ROCK!")
			alarm[int(0.0)] = 3.0
			v_blah = 1.0
	if not ((((absf(GM.view_xview[0] - 0.0) < 0.00001) or (absf(GM.view_xview[0] - (GM.room_width - 800.0)) < 0.00001)))):
		GM.background_hspeed[int(1.0)] = (hspeed / 15.0)
		GM.background_hspeed[int(0.0)] = (hspeed / 10.0)
	else:
		GM.background_hspeed[int(1.0)] = 0.0
		GM.background_hspeed[int(0.0)] = 0.0
func ev_draw():
	(GM.f_draw_sprite(319.0, (-1.0), GM.add(GM.aget(v_view_left, 2.0), 189.0), 35.0))
