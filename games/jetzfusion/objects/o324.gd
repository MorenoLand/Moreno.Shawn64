extends "res://games/jetzfusion/scripts.gd"
var v_brush_color = 0.0
var v_go = 0.0
var v_jump = 0.0
var v_mypower = 0.0
var v_pen_color = 0.0
var v_poom = 0.0
func ev_create():
	if (not (((absf(GM.room - 6.0) < 0.00001)))):
		(GM.f_instance_create(x, 0.0, 114.0))
	friction = 0.2
	gravity_direction = 270.0
	gravity = 0.5
	v_go = 1.0
	v_mypower = 10.0
	v_jump = 1.0
	if (((absf((GM.f_instance_number(429.0)) - 1.0) < 0.00001))):
		v_mypower = 1.0
func ev_alarm_0():
	v_go = 1.0
func ev_step():
	image_speed = (speed / 15.0)
	if (((absf(vspeed - 0.0) < 0.00001))):
		if (((absf(v_jump - 1.0) < 0.00001))):
			if ((((GM.f_distance_to_object(self, 53.0)) < 150.0))):
				if ((absf(v_go - 1.0) < 0.00001)):
					v_poom = (GM.f_round((GM.f_random(1.0))))
					if ((absf(v_poom - 0.0) < 0.00001)):
						hspeed = ((-5.0) - (GM.f_random(5.0)))
					if ((absf(v_poom - 1.0) < 0.00001)):
						hspeed = (5.0 + (GM.f_random(5.0)))
					v_poom = (GM.f_round((GM.f_random(1.0))))
					if ((absf(v_poom - 0.0) < 0.00001)):
						(GM.f_motion_add(self, 90.0, (10.0 + (GM.f_random(10.0)))))
						(GM.f_sound_play(50.0))
						v_jump = 0.0
					alarm[int(0.0)] = 10.0
					v_go = 0.0
		if ((((GM.f_distance_to_object(self, 7.0)) > 300.0))):
			if ((absf(v_go - 1.0) < 0.00001)):
				if ((GM.vb(7.0, "x") > x)):
					(GM.f_motion_add(self, 0.0, (1.0 + (GM.f_random(15.0)))))
				else:
					(GM.f_motion_add(self, 180.0, (1.0 + (GM.f_random(15.0)))))
				alarm[int(0.0)] = 15.0
				v_go = 0.0
		else:
			if ((GM.vb(7.0, "x") > x)):
				(GM.f_motion_add(self, 0.0, 0.1))
			else:
				(GM.f_motion_add(self, 180.0, 0.1))
	if ((hspeed > 15.0)):
		hspeed = 15.0
	if ((hspeed < (-15.0))):
		hspeed = (-15.0)
	if ((((GM.f_random(25.0)) < 1.0))):
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.5), (y + 46.5), 57.0))
	if (((vspeed < 0.0))):
		for _r454 in range(int((7.0))):
			(GM.f_instance_create((x + (sprite_width / 2.0)), ((y + (sprite_height / 2.0)) + 20.0), 198.0))
func ev_col_197():
	if (((vspeed > 0.0) and (y < ((GM.vb(self.other, "y") - sprite_height) + 20.0)))):
		v_jump = 1.0
		vspeed = 0.0
		y = (GM.vb(self.other, "y") - sprite_height)
func ev_col_53():
	(GM.f_sound_play(49.0))
	v_mypower = v_mypower - 1.0
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 45.0))))) >= 0.5:
		if ((absf(vspeed - 0.0) < 0.00001)):
			v_jump = 0.0
			vspeed = ((-10.0) - (GM.f_random(10.0)))
			(GM.f_sound_play(50.0))
	if (((hspeed > 0.0))):
		for _r455 in range(int((35.0))):
			for _w456 in GM.with_list((self.other), self):
				if _w456._dead:
					continue
				_w456.other = self
				(GM.f_instance_create((_w456.x + 0.0), (_w456.y + 0.0), 35.0))
	else:
		for _r457 in range(int((35.0))):
			for _w458 in GM.with_list((self.other), self):
				if _w458._dead:
					continue
				_w458.other = self
				(GM.f_instance_create((_w458.x + 0.0), (_w458.y + 0.0), 48.0))
	if (((v_mypower < 1.0))):
		if (((absf((GM.f_instance_number(421.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(324.0)) - 1.0) < 0.00001))):
				(self.script_missionscript2(0.0, 0.0, 0.0, 0.0, 0.0))
				for _w459 in GM.with_list((7.0), self):
					if _w459._dead:
						continue
					_w459.other = self
					(GM.f_instance_create((_w459.x + 0.0), (_w459.y + (-40.0)), 248.0))
				for _w460 in GM.with_list((322.0), self):
					if _w460._dead:
						continue
					_w460.other = self
					(GM.f_instance_destroy(_w460))
				for _w461 in GM.with_list((170.0), self):
					if _w461._dead:
						continue
					_w461.other = self
					(GM.f_instance_destroy(_w461))
				(GM.f_sound_play(48.0))
				GM.G["money"] = GM.G["money"] + 400.0
		GM.vset(431.0, "v_gays", GM.vget(431.0, "v_gays") - 1.0)
		(GM.f_instance_create((x + 0.0), (y + 15.0), 167.0))
		for _r462 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 33.0))
		for _r463 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
		(GM.f_sound_play(1.0))
		(GM.f_instance_destroy(self))
	for _w464 in GM.with_list((self.other), self):
		if _w464._dead:
			continue
		_w464.other = self
		(GM.f_instance_destroy(_w464))
func ev_col_45():
	v_jump = 1.0
	vspeed = 0.0
func ev_other_0():
	y = y - 10.0
	if (((x < 0.0) and (hspeed < 0.0))):
		x = (GM.room_width + sprite_xoffset)
	if (((x > GM.room_width) and (hspeed > 0.0))):
		x = ((-sprite_width) + sprite_xoffset)
func ev_draw():
	if (not (((absf(GM.room - 6.0) < 0.00001)))):
		v_pen_color = 0.0
		v_brush_color = 16711680.0
		(GM.f_draw_rectangle(x, (y - 10.0), (x + sprite_width), y))
		v_brush_color = 255.0
		(GM.f_draw_rectangle(x, (y - 10.0), (x + ((sprite_width / 10.0) * v_mypower)), y))
	if (((GM.vb(7.0, "x") > x))):
		(GM.f_draw_sprite(209.0, (-1.0), (x + 0.0), (y + 0.0)))
	else:
		(GM.f_draw_sprite(208.0, (-1.0), (x + 0.0), (y + 0.0)))
	if ((GM.vb(7.0, "x") > x)):
		(GM.f_draw_sprite(157.0, ((GM.f_point_direction((x + 20.0), (y + 30.0), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) / 10.0), (x - 2.0), (y + 30.0)))
	else:
		(GM.f_draw_sprite(158.0, ((GM.f_point_direction((x + 20.0), (y + 30.0), (GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)))) / 10.0), (x - 2.0), (y + 30.0)))
