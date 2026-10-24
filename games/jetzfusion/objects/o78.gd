extends "res://games/jetzfusion/scripts.gd"
var v_alive = 0.0
func ev_create():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(300.0))
	v_alive = 1.0
	image_speed = 0.5
	(GM.f_action_move(self, "000001000", (3.0 + (GM.f_random(3.0))), 0.0))
	if ((((GM.f_random(2.0)) < 1.0))):
		sprite_index = 85.0
		(GM.f_action_move(self, "000100000", (3.0 + (GM.f_random(3.0))), 0.0))
func ev_alarm_0():
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
	alarm[int(0.0)] = 1.0
func ev_col_310():
	if (((absf(v_alive - 1.0) < 0.00001))):
		for _r102 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
		(GM.f_sound_play(27.0))
		gravity_direction = 270.0
		gravity = 0.2
		sprite_index = 86.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		if ((hspeed > 0.0)):
			image_single = 0.0
		if ((hspeed < 0.0)):
			image_single = 1.0
		alarm[int(0.0)] = 1.0
		v_alive = 0.0
func ev_col_53():
	if (((absf(v_alive - 1.0) < 0.00001))):
		for _r103 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 16.0))
		(GM.f_sound_play(27.0))
		gravity_direction = 270.0
		gravity = 0.2
		sprite_index = 86.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
		if ((hspeed > 0.0)):
			image_single = 0.0
		if ((hspeed < 0.0)):
			image_single = 1.0
		alarm[int(0.0)] = 1.0
		v_alive = 0.0
		for _w104 in GM.with_list((self.other), self):
			if _w104._dead:
				continue
			_w104.other = self
			(GM.f_instance_destroy(_w104))
func ev_col_17():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 79.0))
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
