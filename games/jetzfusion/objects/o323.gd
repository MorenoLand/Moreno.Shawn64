extends "res://games/jetzfusion/scripts.gd"
var v_brush_color = 0.0
var v_go = 0.0
var v_mypower = 0.0
var v_pen_color = 0.0
var v_poom = 0.0
func ev_create():
	gravity_direction = 270.0
	gravity = 0.5
	friction = 0.2
	v_go = 1.0
	v_mypower = 10.0
	direction = (180.0 + (GM.f_random(180.0)))
	speed = (1.0 + (GM.f_random(5.0)))
	if (((absf((GM.f_instance_number(429.0)) - 1.0) < 0.00001))):
		v_mypower = 1.0
func ev_alarm_0():
	v_go = 1.0
func ev_step():
	image_speed = (speed / 15.0)
	if (((absf(vspeed - 0.0) < 0.00001))):
		if ((((GM.f_distance_to_object(self, 53.0)) < 150.0))):
			if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 45.0))))) >= 0.5:
				if ((absf(v_go - 1.0) < 0.00001)):
					v_poom = (GM.f_round((GM.f_random(1.0))))
					if ((absf(v_poom - 0.0) < 0.00001)):
						hspeed = ((-3.0) - (GM.f_random(15.0)))
					if ((absf(v_poom - 1.0) < 0.00001)):
						hspeed = (3.0 + (GM.f_random(15.0)))
					v_poom = (GM.f_round((GM.f_random(1.0))))
					if ((absf(v_poom - 0.0) < 0.00001)):
						(GM.f_motion_add(self, 90.0, (5.0 + (GM.f_random(5.0)))))
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
	if ((speed > 15.0)):
		speed = 15.0
	if ((((GM.f_random(25.0)) < 1.0))):
		(GM.f_instance_create(((x + (sprite_width / 2.0)) - 2.5), (y + 46.5), 57.0))
func ev_col_53():
	(GM.f_sound_play(49.0))
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 45.0))))) >= 0.5:
		if ((absf(vspeed - 0.0) < 0.00001)):
			vspeed = ((-5.0) - (GM.f_random(5.0)))
	v_mypower = v_mypower - 1.0
	if (((hspeed > 0.0))):
		for _r444 in range(int((35.0))):
			for _w445 in GM.with_list((self.other), self):
				if _w445._dead:
					continue
				_w445.other = self
				(GM.f_instance_create((_w445.x + 0.0), (_w445.y + 0.0), 35.0))
	else:
		for _r446 in range(int((35.0))):
			for _w447 in GM.with_list((self.other), self):
				if _w447._dead:
					continue
				_w447.other = self
				(GM.f_instance_create((_w447.x + 0.0), (_w447.y + 0.0), 48.0))
	if (((v_mypower < 1.0))):
		if (((absf((GM.f_instance_number(420.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(323.0)) - 1.0) < 0.00001))):
				for _w448 in GM.with_list((321.0), self):
					if _w448._dead:
						continue
					_w448.other = self
					(GM.f_instance_create((_w448.x + 0.0), (_w448.y + 0.0), 322.0))
				for _w449 in GM.with_list((321.0), self):
					if _w449._dead:
						continue
					_w449.other = self
					(GM.f_instance_destroy(_w449))
				GM.G["money"] = GM.G["money"] + 300.0
				(GM.f_sound_play(48.0))
				for _w450 in GM.with_list((170.0), self):
					if _w450._dead:
						continue
					_w450.other = self
					(GM.f_instance_destroy(_w450))
		GM.vset(429.0, "v_gays", GM.vget(429.0, "v_gays") - 1.0)
		(GM.f_instance_create((x + 0.0), (y + 15.0), 167.0))
		for _r451 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 33.0))
		for _r452 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
		(GM.f_sound_play(1.0))
		(GM.f_instance_destroy(self))
	for _w453 in GM.with_list((self.other), self):
		if _w453._dead:
			continue
		_w453.other = self
		(GM.f_instance_destroy(_w453))
func ev_col_45():
	vspeed = 0.0
func ev_other_0():
	y = y - 10.0
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
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
