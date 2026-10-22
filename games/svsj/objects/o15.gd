extends "res://games/svsj/scripts.gd"
var v_image_single = 0.0
var v_nomove = 0.0
var v_talk = 0.0
var v_talking = 0.0
var v_woopy = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = 1.0
	v_talk = 0.0
	v_talking = 0.0
	v_nomove = 0.0
	gravity_direction = 270.0
	gravity = 0.5
func ev_alarm_3():
	v_talk = 0.0
	v_talking = 0.0
func ev_alarm_2():
	if (((absf(v_talking - 1.0) < 0.00001))):
		v_talk = 0.0
		alarm[int(1.0)] = 2.0
func ev_alarm_1():
	if (((absf(v_talking - 1.0) < 0.00001))):
		v_talk = 1.0
		alarm[int(2.0)] = 2.0
func ev_alarm_0():
	v_wow = 1.0
func ev_step():
	(GM.f_instance_nearest((x + (sprite_width / 2.0)), (y + (sprite_width / 2.0)), 3.0))
	if ((absf(v_talk - 1.0) < 0.00001)):
		sprite_index = 2.0
	else:
		sprite_index = 0.0
	if (((GM.f_instance_number(3.0)) < 1.0)):
		hspeed = 0.0
		v_image_single = 1.0
	v_woopy = (GM.f_instance_nearest((x + (sprite_width / 2.0)), (y + (sprite_width / 2.0)), 3.0))
	if (((GM.f_instance_exists(v_woopy)))) >= 0.5:
		if ((((GM.vb(v_woopy, "x") + (GM.vb(v_woopy, "sprite_width") / 2.0)) + 5.0) < (x + (sprite_width / 2.0)))):
			if ((absf(v_wow - 1.0) < 0.00001)):
				(GM.f_sound_play(11.0))
				alarm[int(0.0)] = 3.0
				v_wow = 0.0
			if ((((GM.vb(v_woopy, "x") + (GM.vb(v_woopy, "sprite_width") / 2.0)) + 60.0) < (x + (sprite_width / 2.0)))):
				self.ev_user(0.0)
			hspeed = (-5.0)
			v_image_single = (-1.0)
		if ((((GM.vb(v_woopy, "x") + (GM.vb(v_woopy, "sprite_width") / 2.0)) - 5.0) > (x + (sprite_width / 2.0)))):
			if ((absf(v_wow - 1.0) < 0.00001)):
				(GM.f_sound_play(11.0))
				alarm[int(0.0)] = 3.0
				v_wow = 0.0
			if ((((GM.vb(v_woopy, "x") + (GM.vb(v_woopy, "sprite_width") / 2.0)) - 60.0) > (x + (sprite_width / 2.0)))):
				self.ev_user(0.0)
			hspeed = 5.0
			v_image_single = (-1.0)
		if not (((((GM.vb(v_woopy, "x") + (GM.vb(v_woopy, "sprite_width") / 2.0)) - 5.0) > (x + (sprite_width / 2.0))))):
			if not (((((GM.vb(v_woopy, "x") + (GM.vb(v_woopy, "sprite_width") / 2.0)) + 5.0) < (x + (sprite_width / 2.0))))):
				self.ev_user(0.0)
				hspeed = 0.0
				v_image_single = 1.0
func ev_col_6():
	hspeed = 0.0
func ev_col_5():
	vspeed = 0.0
func ev_other_10():
	if (((y > 350.0))):
		if ((((GM.f_random(10.0)) < 1.0))):
			if (((absf(vspeed - 0.0) < 0.00001))):
				(GM.f_motion_add(self, 90.0, 10.0))
				(GM.f_sound_play(14.0))
