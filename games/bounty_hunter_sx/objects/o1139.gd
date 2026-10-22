extends "res://games/bounty_hunter_sx/scripts.gd"
var v_image_single = 0.0
var v_my_direction = 0.0
var v_myhealth = 0.0
var v_myhealths = 0.0
var v_mysheild = 0.0
var v_shoot = 0.0
func ev_create():
	v_my_direction = 0.0
	v_shoot = 1.0
	if ((absf(speed - 0.0) < 0.00001)):
		direction = (GM.f_random(360.0))
		speed = (5.0 + (GM.f_random(10.0)))
	if ((((GM.f_random(3.0)) < 1.0))):
		v_myhealth = 75.0
		v_mysheild = 3.0
		v_myhealths = 75.0
	else:
		if ((((GM.f_random(2.0)) < 1.0))):
			v_myhealth = 50.0
			v_mysheild = 2.0
			v_myhealths = 50.0
		else:
			v_myhealth = 25.0
			v_mysheild = 1.0
			v_myhealths = 25.0
func ev_col_1219():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_1201():
	(GM.f_motion_add(self, (GM.f_random(360.0)), 6.0))
	(GM.f_sound_play(304.0))
	if ((absf(v_mysheild - 1.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1170.0))
	else:
		if ((absf(v_mysheild - 2.0) < 0.00001)):
			(GM.f_instance_create(x, y, 1171.0))
		else:
			if ((absf(v_mysheild - 3.0) < 0.00001)):
				(GM.f_instance_create(x, y, 1172.0))
	v_myhealth = v_myhealth - 30.0
	if ((v_myhealth < 1.0)):
		(GM.f_instance_create((x + 13.5), (y + 13.5), 1174.0))
		if ((absf(v_mysheild - 1.0) < 0.00001)):
			for _r163 in range(int((10.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 2.0) < 0.00001)):
			for _r164 in range(int((20.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 3.0) < 0.00001)):
			for _r165 in range(int((30.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		for _r166 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
		(GM.f_instance_create(x, y, 1110.0))
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1139.0))
		(GM.f_sound_play(293.0))
		(GM.f_instance_destroy(self))
func ev_col_1177():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 6.0))
	(GM.f_sound_play(304.0))
	if ((absf(v_mysheild - 1.0) < 0.00001)):
		(GM.f_instance_create(x, y, 1170.0))
	else:
		if ((absf(v_mysheild - 2.0) < 0.00001)):
			(GM.f_instance_create(x, y, 1171.0))
		else:
			if ((absf(v_mysheild - 3.0) < 0.00001)):
				(GM.f_instance_create(x, y, 1172.0))
	v_myhealth = v_myhealth - 30.0
	if ((v_myhealth < 1.0)):
		(GM.f_instance_create((x + 13.5), (y + 13.5), 1174.0))
		if ((absf(v_mysheild - 1.0) < 0.00001)):
			for _r167 in range(int((10.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 2.0) < 0.00001)):
			for _r168 in range(int((20.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 3.0) < 0.00001)):
			for _r169 in range(int((30.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		for _r170 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
		(GM.f_instance_create(x, y, 1110.0))
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1139.0))
		(GM.f_sound_play(293.0))
		(GM.f_instance_destroy(self))
func ev_col_1087():
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(GM.room_height))
func ev_col_489():
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 2.0))
	for _w171 in GM.with_list((self.other), self):
		if _w171._dead:
			continue
		_w171.other = self
		(GM.f_instance_destroy(_w171))
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
		(GM.f_instance_create(x, y, 1170.0))
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
			(GM.f_instance_create(x, y, 1171.0))
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
				(GM.f_instance_create(x, y, 1172.0))
	if ((v_myhealth < 1.0)):
		(GM.f_instance_create((x + 13.5), (y + 13.5), 1174.0))
		if ((absf(v_mysheild - 1.0) < 0.00001)):
			for _r172 in range(int((10.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 2.0) < 0.00001)):
			for _r173 in range(int((20.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		if ((absf(v_mysheild - 3.0) < 0.00001)):
			for _r174 in range(int((30.0))):
				(GM.f_instance_create((x + 13.5), (y + 13.5), 1075.0))
		for _r175 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
		(GM.f_instance_create(x, y, 1110.0))
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 1139.0))
		(GM.f_sound_play(293.0))
		(GM.f_instance_destroy(self))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
	v_image_single = (direction / 11.25)
func ev_draw():
	(GM.f_draw_sprite(1057.0, (direction / 11.25), (x + 0.0), (y + 0.0)))
	(GM.f_draw_sprite(1087.0, (-1.0), (((x / 66.6) + GM.view_xview[0]) + 874.0), (((y / 66.6) + GM.view_yview[0]) + 618.0)))
