extends "res://games/jetzrampage2/scripts.gd"
var v_shotready = 0.0
func ev_create():
	(GM.f_instance_create(0.0, 0.0, 1869.0))
	v_shotready = 0.0
	x = (GM.vb(502.0, "x") + 93.0)
	y = (GM.vb(502.0, "y") + 34.0)
	(GM.f_action_move(self, "000100000", 3.0, 0.0))
func ev_destroy():
	for _w329 in GM.with_list((1869.0), self):
		if _w329._dead:
			continue
		_w329.other = self
		(GM.f_instance_destroy(_w329))
func ev_alarm_0():
	v_shotready = 1.0
func ev_step():
	if (((GM.vb(0.0, "x") > x))):
		sprite_index = 128.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		if (((GM.G["lives"] > 52.0))):
			if ((((GM.f_distance_to_object(self, 0.0)) < 600.0))):
				if ((((GM.f_random(10.0)) < 1.0))):
					(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 126.0))
					v_shotready = 0.0
					alarm[int(0.0)] = 5.0
	else:
		sprite_index = 127.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		if (((GM.G["lives"] > 52.0))):
			if ((((GM.f_distance_to_object(self, 0.0)) < 600.0))):
				if ((((GM.f_random(5.0)) < 1.0))):
					(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 126.0))
					v_shotready = 0.0
					alarm[int(0.0)] = 5.0
func ev_col_16():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 242.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	(GM.f_sound_play(82.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 138.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
