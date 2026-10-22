extends "res://games/bounty_hunter_sx/scripts.gd"
var v_brush_color = 0.0
var v_image_single = 0.0
var v_my_direction = 0.0
var v_my_missiles = 0.0
var v_myhealth = 0.0
var v_myhealths = 0.0
var v_mysheild = 0.0
var v_pen_color = 0.0
var v_shoot = 0.0
func ev_alarm_0():
	v_shoot = 1.0
func ev_step():
	if (((absf((GM.f_instance_number(1210.0)) - 1.0) < 0.00001))):
		(GM.f_instance_change(self, 1079.0, 0.0))
	if ((((GM.f_instance_number(1080.0)) > 1.0))):
		(GM.f_instance_change(self, 1079.0, 0.0))
	if (((absf((GM.f_instance_number(482.0)) - 0.0) < 0.00001))):
		(GM.f_instance_change(self, 1079.0, 0.0))
	for _r53 in range(int((5.0))):
		(GM.f_instance_create((x + 25.0), (y + 25.0), 1083.0))
	if (((absf((GM.f_instance_number(482.0)) - 1.0) < 0.00001))):
		v_my_direction = (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(482.0, "x") + (GM.vb(482.0, "sprite_width") / 2.0)), (GM.vb(482.0, "y") + (GM.vb(482.0, "sprite_height") / 2.0))))
		(GM.f_motion_add(self, v_my_direction, 0.5))
		speed = (GM.f_min(speed, 10.0))
		if (((GM.f_distance_to_object(self, 482.0)) > 510.0)):
			v_image_single = (direction / 11.25)
			(GM.f_instance_change(self, 1079.0, 0.0))
	if (((absf(v_shoot - 1.0) < 0.00001))):
		if ((((GM.f_random(15.0)) < 1.0))):
			(GM.f_sound_play(30.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 10.0), ((y + (sprite_height / 2.0)) - 10.0), 1081.0))
			alarm[int(0.0)] = 6.0
			v_shoot = 0.0
	if (((v_my_missiles > 0.0))):
		if ((((GM.f_random(500.0)) < 1.0))):
			v_my_missiles = v_my_missiles + (-1.0)
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 16.0), ((y + (sprite_height / 2.0)) - 16.0), 1175.0))
func ev_col_1219():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_1201():
	(GM.f_motion_add(self, (GM.f_random(360.0)), 6.0))
	(GM.f_sound_play(304.0))
	if ((absf(v_mysheild - 1.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1117.0))
	else:
		if ((absf(v_mysheild - 2.0) < 0.00001)):
			(GM.f_instance_create(x, y, 1118.0))
		else:
			if ((absf(v_mysheild - 3.0) < 0.00001)):
				(GM.f_instance_create(x, y, 1119.0))
	v_myhealth = v_myhealth - 40.0
	if ((v_myhealth < 1.0)):
		(GM.f_instance_create((x + 13.5), (y + 13.5), 1174.0))
		if ((absf(v_mysheild - 1.0) < 0.00001)):
			for _r54 in range(int((2.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 2.0) < 0.00001)):
			for _r55 in range(int((3.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 3.0) < 0.00001)):
			for _r56 in range(int((4.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		for _r57 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
		(GM.f_instance_create(x, y, 1110.0))
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1079.0))
		(GM.f_sound_play(293.0))
		(GM.f_instance_destroy(self))
func ev_col_1177():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 6.0))
	(GM.f_sound_play(304.0))
	if ((absf(v_mysheild - 1.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1117.0))
	else:
		if ((absf(v_mysheild - 2.0) < 0.00001)):
			(GM.f_instance_create(x, y, 1118.0))
		else:
			if ((absf(v_mysheild - 3.0) < 0.00001)):
				(GM.f_instance_create(x, y, 1119.0))
	v_myhealth = v_myhealth - 40.0
	if ((v_myhealth < 1.0)):
		(GM.f_instance_create((x + 13.5), (y + 13.5), 1174.0))
		if ((absf(v_mysheild - 1.0) < 0.00001)):
			for _r58 in range(int((2.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 2.0) < 0.00001)):
			for _r59 in range(int((3.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 3.0) < 0.00001)):
			for _r60 in range(int((4.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		for _r61 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
		(GM.f_instance_create(x, y, 1110.0))
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1079.0))
		(GM.f_sound_play(293.0))
		(GM.f_instance_destroy(self))
func ev_col_489():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 2.0))
	for _w62 in GM.with_list((self.other), self):
		if _w62._dead:
			continue
		_w62.other = self
		(GM.f_instance_destroy(_w62))
	(GM.f_sound_play(304.0))
	if ((absf(v_mysheild - 1.0) < 0.00001)):
		if ((absf(GM.vb(self.other, "sprite_index") - 487.0) < 0.00001)):
			v_myhealth = v_myhealth - 4.0
		if ((absf(GM.vb(self.other, "sprite_index") - 1053.0) < 0.00001)):
			v_myhealth = v_myhealth - 6.0
		if ((absf(GM.vb(self.other, "sprite_index") - 296.0) < 0.00001)):
			v_myhealth = v_myhealth - 8.0
		if ((absf(GM.vb(self.other, "sprite_index") - 1068.0) < 0.00001)):
			v_myhealth = v_myhealth - 6.0
		(GM.f_instance_create(x, y, 1117.0))
	else:
		if ((absf(v_mysheild - 2.0) < 0.00001)):
			if ((absf(GM.vb(self.other, "sprite_index") - 487.0) < 0.00001)):
				v_myhealth = v_myhealth - 2.0
			if ((absf(GM.vb(self.other, "sprite_index") - 1053.0) < 0.00001)):
				v_myhealth = v_myhealth - 4.0
			if ((absf(GM.vb(self.other, "sprite_index") - 296.0) < 0.00001)):
				v_myhealth = v_myhealth - 6.0
			if ((absf(GM.vb(self.other, "sprite_index") - 1068.0) < 0.00001)):
				v_myhealth = v_myhealth - 4.0
			(GM.f_instance_create(x, y, 1118.0))
		else:
			if ((absf(v_mysheild - 3.0) < 0.00001)):
				if ((absf(GM.vb(self.other, "sprite_index") - 487.0) < 0.00001)):
					v_myhealth = v_myhealth - 1.0
				if ((absf(GM.vb(self.other, "sprite_index") - 1053.0) < 0.00001)):
					v_myhealth = v_myhealth - 2.0
				if ((absf(GM.vb(self.other, "sprite_index") - 296.0) < 0.00001)):
					v_myhealth = v_myhealth - 4.0
				if ((absf(GM.vb(self.other, "sprite_index") - 1068.0) < 0.00001)):
					v_myhealth = v_myhealth - 2.0
				(GM.f_instance_create(x, y, 1119.0))
	if ((v_myhealth < 1.0)):
		(GM.f_instance_create((x + 13.5), (y + 13.5), 1174.0))
		if ((absf(v_mysheild - 1.0) < 0.00001)):
			for _r63 in range(int((2.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 2.0) < 0.00001)):
			for _r64 in range(int((3.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 3.0) < 0.00001)):
			for _r65 in range(int((4.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		for _r66 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
		(GM.f_instance_create(x, y, 1110.0))
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1079.0))
		(GM.f_sound_play(293.0))
		(GM.f_instance_destroy(self))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	(GM.f_draw_sprite(1065.0, (GM.f_floor(((fmod(((v_my_direction + 5.625)), 360.0)) / 11.25))), (x + 0.0), (y + 0.0)))
	v_pen_color = 0.0
	v_brush_color = 16711680.0
	(GM.f_draw_rectangle(x, (y - 10.0), (x + 52.0), y))
	v_brush_color = 255.0
	(GM.f_draw_rectangle(x, (y - 10.0), (x + ((52.0 / v_myhealths) * v_myhealth)), y))
