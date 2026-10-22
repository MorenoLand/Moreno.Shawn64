extends "res://games/jetzfusion/scripts.gd"
var v_mypower = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_round((GM.f_random(1.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		sprite_index = 266.0
		hspeed = (5.0 + (GM.f_random(5.0)))
	if ((absf(v_wow - 1.0) < 0.00001)):
		sprite_index = 268.0
		hspeed = ((-5.0) - (GM.f_random(5.0)))
	v_mypower = 2.0
	y = (GM.vb(45.0, "y") - 60.0)
	gravity_direction = 270.0
	gravity = 0.4
func ev_alarm_0():
	speed = (5.0 + (GM.f_random(5.0)))
func ev_step():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 2.0), 45.0))))) >= 0.5:
		if ((((GM.f_random(25.0)) < 1.0))):
			vspeed = ((-(GM.f_random(5.0))) - 5.0)
func ev_col_53():
	if (not ((((GM.f_sound_isplaying(60.0)))) >= 0.5)):
		(GM.f_sound_play(60.0))
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 2.0), 45.0))))) >= 0.5:
		speed = (10.0 + (GM.f_random(5.0)))
		if (((GM.vb(7.0, "x") > x) and (hspeed > 0.0))):
			sprite_index = 268.0
			hspeed = (-hspeed)
		if (((GM.vb(7.0, "x") < x) and (hspeed < 0.0))):
			sprite_index = 266.0
			hspeed = (-hspeed)
	alarm[int(0.0)] = 50.0
	if (((hspeed > 0.0))):
		for _r397 in range(int((35.0))):
			for _w398 in GM.with_list((self.other), self):
				if _w398._dead:
					continue
				_w398.other = self
				(GM.f_instance_create((_w398.x + 0.0), (_w398.y + 0.0), 35.0))
	else:
		for _r399 in range(int((35.0))):
			for _w400 in GM.with_list((self.other), self):
				if _w400._dead:
					continue
				_w400.other = self
				(GM.f_instance_create((_w400.x + 0.0), (_w400.y + 0.0), 48.0))
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		if ((((GM.f_random(3.0)) < 1.0))):
			(self.script_adddamage(0.0, 0.0, 0.0, 0.0, 0.0))
		(GM.f_sound_play(61.0))
		GM.vset(285.0, "v_noobstokill", GM.vget(285.0, "v_noobstokill") + 1.0)
		GM.vset(288.0, "v_noobstokill", GM.vget(288.0, "v_noobstokill") + 1.0)
		(GM.f_sound_play(43.0))
		for _r401 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 33.0))
		for _r402 in range(int((5.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
		GM.G["deaths"] = GM.G["deaths"] + 1.0
		(GM.f_instance_destroy(self))
func ev_col_45():
	vspeed = 0.0
func ev_col_14():
	GM.vset(285.0, "v_noobstokill", GM.vget(285.0, "v_noobstokill") + 1.0)
	(GM.f_sound_play(43.0))
	for _r403 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 33.0))
	for _r404 in range(int((5.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
	GM.G["deaths"] = GM.G["deaths"] + 1.0
	(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (((hspeed > 0.0))):
		(GM.f_draw_sprite(266.0, (-1.0), (x + 0.0), (y + 0.0)))
	else:
		(GM.f_draw_sprite(268.0, (-1.0), (x + 0.0), (y + 0.0)))
