extends "res://games/jetzrampage2/scripts.gd"
func ev_create():
	(GM.f_sound_play(186.0))
	(GM.f_action_move(self, "000100000", 15.0, 0.0))
	alarm[int(1.0)] = 5.0
func ev_destroy():
	for _w224 in GM.with_list((526.0), self):
		if _w224._dead:
			continue
		_w224.other = self
		(GM.f_instance_destroy(_w224))
func ev_alarm_1():
	if (((speed < 20.0))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + 0.0), 519.0))
		alarm[int(1.0)] = 5.0
func ev_alarm_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
	alarm[int(0.0)] = 4.0
func ev_step():
	if (((speed < 25.0))):
		speed = speed + 0.3
	if (((y > (GM.room_height - 10.0)))):
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
		for _w225 in GM.with_list((516.0), self):
			if _w225._dead:
				continue
			_w225.other = self
			(GM.f_instance_create((_w225.x + 0.0), (_w225.y + 0.0), 547.0))
		(GM.f_instance_create(((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)) - 16.0), ((GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)) - 16.0), 481.0))
		for _w226 in GM.with_list((67.0), self):
			if _w226._dead:
				continue
			_w226.other = self
			GM.vset(_w226, "v_currentmoney", GM.vget(_w226, "v_currentmoney") + 100.0)
		(GM.f_sound_play(88.0))
		for _w227 in GM.with_list((516.0), self):
			if _w227._dead:
				continue
			_w227.other = self
			(GM.f_instance_destroy(_w227))
		for _w228 in GM.with_list((250.0), self):
			if _w228._dead:
				continue
			_w228.other = self
			(GM.f_instance_destroy(_w228))
		(GM.f_instance_destroy(self))
func ev_col_526():
	vspeed = (-10.0)
	gravity_direction = 270.0
	gravity = 0.5
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
	alarm[int(0.0)] = 2.0
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
