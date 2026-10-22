extends "res://games/jetzfusion/objects/o417.gd"
func ev_create():
	(GM.f_sound_play(60.0))
	gravity_direction = 270.0
	gravity = 0.5
	friction = 0.2
	v_go = 1.0
	v_mypower = 10.0
	direction = (180.0 + (GM.f_random(180.0)))
	speed = (1.0 + (GM.f_random(5.0)))
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
		for _r664 in range(int((35.0))):
			for _w665 in GM.with_list((self.other), self):
				if _w665._dead:
					continue
				_w665.other = self
				(GM.f_instance_create((_w665.x + 0.0), (_w665.y + 0.0), 35.0))
	else:
		for _r666 in range(int((35.0))):
			for _w667 in GM.with_list((self.other), self):
				if _w667._dead:
					continue
				_w667.other = self
				(GM.f_instance_create((_w667.x + 0.0), (_w667.y + 0.0), 48.0))
	if (((v_mypower < 1.0))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 416.0))
		(GM.f_instance_create((x + 0.0), (y + 15.0), 167.0))
		for _r668 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 33.0))
		for _r669 in range(int((25.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
		(GM.f_sound_play(1.0))
		(GM.f_instance_destroy(self))
	for _w670 in GM.with_list((self.other), self):
		if _w670._dead:
			continue
		_w670.other = self
		(GM.f_instance_destroy(_w670))
func ev_col_45():
	vspeed = 0.0
func ev_other_0():
	y = y - 10.0
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
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
