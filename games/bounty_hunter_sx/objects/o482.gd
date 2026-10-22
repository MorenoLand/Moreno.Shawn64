extends "res://games/bounty_hunter_sx/scripts.gd"
var v_bb = 0.0
var v_exploding = 0.0
var v_image_single = 0.0
var v_movement = 0.0
var v_myAcceleration = 0.0
var v_myArmor = 0.0
var v_myFriction = 0.0
var v_myTopSpeed = 0.0
var v_my_direction = 0.0
func ev_create():
	v_bb = 1.0
	v_image_single = GM.G["aaa"]
	v_my_direction = GM.G["bbb"]
	v_myAcceleration = 0.5
	v_myTopSpeed = 15.0
	v_myFriction = 0.02
	v_myArmor = 10.0
	v_exploding = 0.0
	visible = 1.0
	v_movement = 1.0
func ev_destroy():
	(GM.f_sound_volume(294.0, 0.0))
	if (((GM.health < 1.0))):
		(GM.f_sound_play(293.0))
		(GM.f_instance_create(0.0, 0.0, 1067.0))
		GM.lives = GM.lives + (-1.0)
func ev_alarm_1():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
func ev_alarm_0():
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	v_bb = 1.0
func ev_step():
	(GM.f_sound_stop(323.0))
	if (((absf((GM.f_instance_number(1232.0)) - 0.0) < 0.00001))):
		if (not ((((GM.f_sound_isplaying(299.0)))) >= 0.5)):
			(GM.f_sound_loop(299.0))
func ev_col_1219():
	(GM.f_move_bounce_solid(self, 0.0))
func ev_col_1204():
	if (((absf(GM.G["pearlgot"] - 0.0) < 0.00001))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 482.0))
		(GM.f_sound_play(307.0))
		(GM.f_instance_destroy(self))
	else:
		(GM.f_sound_loop(336.0))
		(GM.f_instance_create(0.0, 0.0, 1111.0))
		(GM.f_sound_play(293.0))
		for _w1 in GM.with_list((self.other), self):
			if _w1._dead:
				continue
			_w1.other = self
			(GM.f_instance_create((_w1.x + (_w1.sprite_width / 2.0)), (_w1.y + (_w1.sprite_height / 2.0)), 1248.0))
		(GM.f_motion_add(self, (GM.f_random(360.0)), 15.0))
		for _w2 in GM.with_list((self.other), self):
			if _w2._dead:
				continue
			_w2.other = self
			(GM.f_instance_destroy(_w2))
func ev_col_1175():
	if (((absf((GM.f_instance_number(1207.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1209.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(1208.0)) - 0.0) < 0.00001))):
				self.ev_user(2.0)
				if ((GM.G["sheild"] == "Shield Level 1")):
					GM.health = GM.health - 15.0
					(GM.f_instance_create(x, y, 1088.0))
				else:
					if ((GM.G["sheild"] == "Shield Level 2")):
						GM.health = GM.health - 10.0
						(GM.f_instance_create(x, y, 1110.0))
					else:
						if ((GM.G["sheild"] == "Shield Level 3")):
							GM.health = GM.health - 5.0
							(GM.f_instance_create(x, y, 1111.0))
				(GM.f_motion_add(self, GM.vb(self.other, "direction"), 6.0))
				(GM.f_sound_play(304.0))
				if (((GM.health < 1.0))):
					(GM.f_instance_create(x, y, 1110.0))
					for _r3 in range(int((50.0))):
						(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
					(GM.f_sound_play(293.0))
					(GM.f_instance_destroy(self))
	if (((absf((GM.f_instance_number(1207.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(304.0))
		GM.G["fuel"] = GM.G["fuel"] - 10.0
		if ((GM.health < 96.0)):
			GM.health = GM.health + 10.0
	if (((absf((GM.f_instance_number(1209.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(302.0))
func ev_col_1133():
	self.ev_user(2.0)
	if (((absf((GM.f_instance_number(1207.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1209.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(1208.0)) - 0.0) < 0.00001))):
				self.ev_user(1.0)
	if (((absf((GM.f_instance_number(1207.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(302.0))
		GM.G["fuel"] = GM.G["fuel"] - 2.0
		if ((GM.health < 96.0)):
			GM.health = GM.health + 5.0
	if (((absf((GM.f_instance_number(1209.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(302.0))
func ev_col_1093():
	self.ev_user(2.0)
	if (((absf((GM.f_instance_number(1207.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1209.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(1208.0)) - 0.0) < 0.00001))):
				self.ev_user(1.0)
	if (((absf((GM.f_instance_number(1207.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(302.0))
		GM.G["fuel"] = GM.G["fuel"] - 2.0
		if ((GM.health < 96.0)):
			GM.health = GM.health + 5.0
	if (((absf((GM.f_instance_number(1209.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(302.0))
func ev_col_1082():
	self.ev_user(2.0)
	if (((absf((GM.f_instance_number(1207.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1209.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(1208.0)) - 0.0) < 0.00001))):
				self.ev_user(1.0)
	if (((absf((GM.f_instance_number(1207.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(302.0))
		GM.G["fuel"] = GM.G["fuel"] - 2.0
		if ((GM.health < 96.0)):
			GM.health = GM.health + 5.0
	if (((absf((GM.f_instance_number(1209.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(302.0))
func ev_col_1081():
	self.ev_user(2.0)
	if (((absf((GM.f_instance_number(1207.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1209.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(1208.0)) - 0.0) < 0.00001))):
				self.ev_user(1.0)
	if (((absf((GM.f_instance_number(1207.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(302.0))
		GM.G["fuel"] = GM.G["fuel"] - 2.0
		if ((GM.health < 96.0)):
			GM.health = GM.health + 5.0
	if (((absf((GM.f_instance_number(1209.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(302.0))
func ev_col_490():
	self.ev_user(2.0)
	self.ev_user(0.0)
func ev_col_487():
	self.ev_user(2.0)
	self.ev_user(0.0)
func ev_col_486():
	self.ev_user(2.0)
	self.ev_user(0.0)
func ev_key_40():
	if (((absf(GM.G["reverse"] - 1.0) < 0.00001))):
		if (((GM.G["fuel"] > 0.0))):
			if (((absf(v_movement - 1.0) < 0.00001))):
				if (((GM.G["fuel"] < 25.0))):
					if (((absf(GM.G["sound1"] - 1.0) < 0.00001))):
						(GM.f_sound_play(315.0))
						GM.G["sound1"] = 0.0
				if (not ((((GM.f_sound_isplaying(294.0)))) >= 0.5)):
					(GM.f_sound_play(294.0))
				if (((GM.G["ftank"] == "Fuel Tank 1"))):
					GM.G["fuel"] = GM.G["fuel"] + (-0.03)
				if (((GM.G["ftank"] == "Fuel Tank 2"))):
					GM.G["fuel"] = GM.G["fuel"] + (-0.01)
				for _r4 in range(int((5.0))):
					(GM.f_instance_create((x + 25.0), (y + 25.0), 1183.0))
				(GM.f_motion_add(self, (v_my_direction - 180.0), v_myAcceleration))
				speed = (GM.f_min(speed, v_myTopSpeed))
func ev_key_39():
	if (((absf(v_movement - 1.0) < 0.00001))):
		v_my_direction = fmod(((v_my_direction - 11.25)), 360.0)
		if (v_my_direction < 0.0):
			v_my_direction = v_my_direction + 360.0
		(self.script_SetShip1Sprite())
func ev_key_38():
	if (((GM.G["fuel"] > 0.0))):
		if (((absf(v_movement - 1.0) < 0.00001))):
			if (((GM.G["fuel"] < 25.0))):
				if (((absf(GM.G["sound1"] - 1.0) < 0.00001))):
					(GM.f_sound_play(315.0))
					GM.G["sound1"] = 0.0
			if (not ((((GM.f_sound_isplaying(294.0)))) >= 0.5)):
				(GM.f_sound_play(294.0))
			if (((GM.G["ftank"] == "Fuel Tank 1"))):
				GM.G["fuel"] = GM.G["fuel"] + (-0.03)
			if (((GM.G["ftank"] == "Fuel Tank 2"))):
				GM.G["fuel"] = GM.G["fuel"] + (-0.01)
			for _r5 in range(int((5.0))):
				(GM.f_instance_create((x + 25.0), (y + 25.0), 485.0))
			(GM.f_motion_add(self, v_my_direction, GM.G["accel"]))
			speed = (GM.f_min(speed, GM.G["topspeed"]))
func ev_key_37():
	if (((absf(v_movement - 1.0) < 0.00001))):
		v_my_direction = fmod(((v_my_direction + 11.25)), 360.0)
		(self.script_SetShip1Sprite())
func ev_key_32():
	if (((absf(v_bb - 1.0) < 0.00001))):
		if (((absf(GM.G["myweapon"] - 1.0) < 0.00001))):
			(GM.f_sound_play(30.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 10.0), ((y + (sprite_height / 2.0)) - 10.0), 489.0))
			alarm[int(0.0)] = (6.0 - GM.G["shotspeed"])
			(GM.f_screen_gamma(0.05, 0.05, 0.0))
			v_bb = 0.0
			alarm[int(1.0)] = 1.0
		if (((absf(GM.G["myweapon"] - 2.0) < 0.00001))):
			(GM.f_sound_play(295.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 15.0), ((y + (sprite_height / 2.0)) - 15.0), 1069.0))
			alarm[int(0.0)] = (6.0 - GM.G["shotspeed"])
			(GM.f_screen_gamma(0.0, 0.1, 0.0))
			v_bb = 0.0
			alarm[int(1.0)] = 1.0
		if (((absf(GM.G["myweapon"] - 3.0) < 0.00001))):
			(GM.f_sound_play(296.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 17.5), ((y + (sprite_height / 2.0)) - 17.5), 1070.0))
			alarm[int(0.0)] = (5.0 - GM.G["shotspeed"])
			(GM.f_screen_gamma(0.1, 0.1, 0.0))
			v_bb = 0.0
			alarm[int(1.0)] = 1.0
		if (((absf(GM.G["myweapon"] - 4.0) < 0.00001))):
			(GM.f_sound_play(303.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1178.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1179.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1078.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1077.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1076.0))
			alarm[int(0.0)] = (7.0 - GM.G["shotspeed"])
			(GM.f_screen_gamma(0.1, 0.0, 0.0))
			v_bb = 0.0
			alarm[int(1.0)] = 1.0
		if (((absf(GM.G["myweapon"] - 5.0) < 0.00001))):
			(GM.f_sound_play(338.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1258.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1259.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1260.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1261.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1262.0))
			alarm[int(0.0)] = (6.0 - GM.G["shotspeed"])
			(GM.f_screen_gamma(0.1, 0.0, 0.0))
			v_bb = 0.0
			alarm[int(1.0)] = 1.0
func ev_mouse_21():
	if (((absf(v_bb - 1.0) < 0.00001))):
		if (((absf(GM.G["myweapon"] - 1.0) < 0.00001))):
			(GM.f_sound_play(30.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 10.0), ((y + (sprite_height / 2.0)) - 10.0), 489.0))
			alarm[int(0.0)] = 5.0
			(GM.f_screen_gamma(0.05, 0.05, 0.0))
			v_bb = 0.0
			alarm[int(1.0)] = 1.0
		if (((absf(GM.G["myweapon"] - 2.0) < 0.00001))):
			(GM.f_sound_play(295.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 15.0), ((y + (sprite_height / 2.0)) - 15.0), 1069.0))
			alarm[int(0.0)] = 5.0
			(GM.f_screen_gamma(0.0, 0.1, 0.0))
			v_bb = 0.0
			alarm[int(1.0)] = 1.0
		if (((absf(GM.G["myweapon"] - 3.0) < 0.00001))):
			(GM.f_sound_play(296.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 17.5), ((y + (sprite_height / 2.0)) - 17.5), 1070.0))
			alarm[int(0.0)] = 4.0
			(GM.f_screen_gamma(0.1, 0.1, 0.0))
			v_bb = 0.0
			alarm[int(1.0)] = 1.0
		if (((absf(GM.G["myweapon"] - 4.0) < 0.00001))):
			(GM.f_sound_play(303.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1078.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1077.0))
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 4.5), ((y + (sprite_height / 2.0)) - 4.5), 1076.0))
			alarm[int(0.0)] = 6.0
			(GM.f_screen_gamma(0.1, 0.0, 0.0))
			v_bb = 0.0
			alarm[int(1.0)] = 1.0
func ev_mouse_18():
	if (((GM.G["fuel"] > 0.0))):
		if (((absf(v_movement - 1.0) < 0.00001))):
			if (not ((((GM.f_sound_isplaying(294.0)))) >= 0.5)):
				(GM.f_sound_play(294.0))
			if (((GM.G["ftank"] == "Fuel Tank 1"))):
				GM.G["fuel"] = GM.G["fuel"] + (-0.03)
			for _r6 in range(int((5.0))):
				(GM.f_instance_create((x + 25.0), (y + 25.0), 485.0))
			(GM.f_motion_add(self, v_my_direction, v_myAcceleration))
			speed = (GM.f_min(speed, v_myTopSpeed))
func ev_mouse_17():
	if (((absf(v_movement - 1.0) < 0.00001))):
		v_my_direction = fmod(((v_my_direction - 11.25)), 360.0)
		if (v_my_direction < 0.0):
			v_my_direction = v_my_direction + 360.0
		(self.script_SetShip1Sprite())
func ev_mouse_16():
	if (((absf(v_movement - 1.0) < 0.00001))):
		v_my_direction = fmod(((v_my_direction + 11.25)), 360.0)
		(self.script_SetShip1Sprite())
func ev_other_12():
	if (((GM.health < 25.0))):
		if (((absf(GM.G["sound2"] - 1.0) < 0.00001))):
			(GM.f_sound_play(316.0))
			GM.G["sound2"] = 0.0
func ev_other_11():
	for _w7 in GM.with_list((self.other), self):
		if _w7._dead:
			continue
		_w7.other = self
		(GM.f_instance_destroy(_w7))
	if ((GM.G["sheild"] == "Shield Level 1")):
		if ((absf(GM.vb(self.other, "sprite_index") - 487.0) < 0.00001)):
			GM.health = GM.health - 4.0
		if ((absf(GM.vb(self.other, "sprite_index") - 1053.0) < 0.00001)):
			GM.health = GM.health - 5.0
		if ((absf(GM.vb(self.other, "sprite_index") - 296.0) < 0.00001)):
			GM.health = GM.health - 6.0
		if ((absf(GM.vb(self.other, "sprite_index") - 1068.0) < 0.00001)):
			GM.health = GM.health - 5.0
		(GM.f_instance_create(x, y, 1088.0))
	else:
		if ((GM.G["sheild"] == "Shield Level 2")):
			if ((absf(GM.vb(self.other, "sprite_index") - 487.0) < 0.00001)):
				GM.health = GM.health - 2.0
			if ((absf(GM.vb(self.other, "sprite_index") - 1053.0) < 0.00001)):
				GM.health = GM.health - 3.0
			if ((absf(GM.vb(self.other, "sprite_index") - 296.0) < 0.00001)):
				GM.health = GM.health - 4.0
			if ((absf(GM.vb(self.other, "sprite_index") - 1068.0) < 0.00001)):
				GM.health = GM.health - 3.0
			(GM.f_instance_create(x, y, 1110.0))
		else:
			if ((GM.G["sheild"] == "Shield Level 3")):
				if ((absf(GM.vb(self.other, "sprite_index") - 487.0) < 0.00001)):
					GM.health = GM.health - 0.0
				if ((absf(GM.vb(self.other, "sprite_index") - 1053.0) < 0.00001)):
					GM.health = GM.health - 1.0
				if ((absf(GM.vb(self.other, "sprite_index") - 296.0) < 0.00001)):
					GM.health = GM.health - 2.0
				if ((absf(GM.vb(self.other, "sprite_index") - 1068.0) < 0.00001)):
					GM.health = GM.health - 1.0
				(GM.f_instance_create(x, y, 1111.0))
	(GM.f_motion_add(self, GM.vb(self.other, "direction"), 2.0))
	(GM.f_sound_play(304.0))
	if (((GM.health < 1.0))):
		(GM.f_instance_create(x, y, 1110.0))
		for _r8 in range(int((50.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
		(GM.f_sound_play(293.0))
		(GM.f_instance_destroy(self))
func ev_other_10():
	if (((absf((GM.f_instance_number(1207.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1209.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(1208.0)) - 0.0) < 0.00001))):
				if ((GM.G["sheild"] == "Shield Level 1")):
					(GM.f_instance_create(x, y, 1088.0))
					GM.health = GM.health - 3.0
				else:
					if ((GM.G["sheild"] == "Shield Level 2")):
						(GM.f_instance_create(x, y, 1110.0))
						GM.health = GM.health - 2.0
					else:
						if ((GM.G["sheild"] == "Shield Level 3")):
							(GM.f_instance_create(x, y, 1111.0))
							GM.health = GM.health - 1.0
				(GM.f_sound_play(304.0))
				(GM.f_sound_play(293.0))
				(GM.f_sound_play(301.0))
				(GM.f_move_bounce_all(self, 0.0))
				if (((GM.health < 1.0))):
					(GM.f_instance_create(x, y, 1110.0))
					for _r9 in range(int((50.0))):
						(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
					(GM.f_sound_play(293.0))
					(GM.f_instance_destroy(self))
			else:
				(GM.f_sound_play(304.0))
				(GM.f_sound_play(301.0))
				(GM.f_move_bounce_all(self, 0.0))
func ev_other_1():
	(self.script_outside_bounce(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	GM.background_hspeed[int(0.0)] = (hspeed / 1.2)
	GM.background_vspeed[int(0.0)] = (vspeed / 1.2)
	GM.background_hspeed[int(1.0)] = (hspeed / 2.0)
	GM.background_vspeed[int(1.0)] = (vspeed / 2.0)
	GM.background_hspeed[int(2.0)] = (hspeed / 4.0)
	GM.background_vspeed[int(2.0)] = (vspeed / 4.0)
	if ((GM.G["mycolor"] == "blue")):
		(GM.f_draw_sprite(482.0, v_image_single, x, y))
	else:
		if ((GM.G["mycolor"] == "yellow")):
			(GM.f_draw_sprite(1065.0, v_image_single, x, y))
		else:
			if ((GM.G["mycolor"] == "red")):
				(GM.f_draw_sprite(1064.0, v_image_single, x, y))
			else:
				if ((GM.G["mycolor"] == "silvery")):
					(GM.f_draw_sprite(1067.0, v_image_single, x, y))
				else:
					if ((GM.G["mycolor"] == "green")):
						(GM.f_draw_sprite(1066.0, v_image_single, x, y))
					else:
						if ((GM.G["mycolor"] == "purple")):
							(GM.f_draw_sprite(1141.0, v_image_single, x, y))
	if (((absf((GM.f_instance_number(1204.0)) - 1.0) < 0.00001))):
		if ((absf(GM.room - 30.0) < 0.00001)):
			if (((GM.f_distance_to_point(self, (GM.vb(1134.0, "x") + (GM.vb(1134.0, "sprite_width") / 2.0)), (GM.vb(1134.0, "y") + (GM.vb(1134.0, "sprite_height") / 2.0)))) < 768.0)):
				(GM.f_motion_add(self, (GM.f_point_direction((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), (GM.vb(1134.0, "x") + (GM.vb(1134.0, "sprite_width") / 2.0)), (GM.vb(1134.0, "y") + (GM.vb(1134.0, "sprite_height") / 2.0)))), (1.0 - ((GM.f_distance_to_point(self, (GM.vb(1134.0, "x") + (GM.vb(1134.0, "sprite_width") / 2.0)), (GM.vb(1134.0, "y") + GM.vb(1134.0, "sprite_height")))) / 768.0))))
func ev_keypress_90():
	if (((absf(GM.G["cloaking"] - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1210.0)) - 0.0) < 0.00001))):
			for _w10 in GM.with_list((1210.0), self):
				if _w10._dead:
					continue
				_w10.other = self
				(GM.f_instance_destroy(_w10))
			for _w11 in GM.with_list((1208.0), self):
				if _w11._dead:
					continue
				_w11.other = self
				(GM.f_instance_destroy(_w11))
			for _w12 in GM.with_list((1209.0), self):
				if _w12._dead:
					continue
				_w12.other = self
				(GM.f_instance_destroy(_w12))
			for _w13 in GM.with_list((1207.0), self):
				if _w13._dead:
					continue
				_w13.other = self
				(GM.f_instance_destroy(_w13))
			(GM.f_instance_create(0.0, 0.0, 1210.0))
func ev_keypress_88():
	if (((absf((GM.f_instance_number(1207.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["absorbing"] - 1.0) < 0.00001))):
			for _w14 in GM.with_list((1210.0), self):
				if _w14._dead:
					continue
				_w14.other = self
				(GM.f_instance_destroy(_w14))
			for _w15 in GM.with_list((1208.0), self):
				if _w15._dead:
					continue
				_w15.other = self
				(GM.f_instance_destroy(_w15))
			for _w16 in GM.with_list((1209.0), self):
				if _w16._dead:
					continue
				_w16.other = self
				(GM.f_instance_destroy(_w16))
			for _w17 in GM.with_list((1207.0), self):
				if _w17._dead:
					continue
				_w17.other = self
				(GM.f_instance_destroy(_w17))
			(GM.f_instance_create(0.0, 0.0, 1207.0))
func ev_keypress_86():
	if (((absf((GM.f_instance_number(1208.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["reflecting"] - 1.0) < 0.00001))):
			for _w18 in GM.with_list((1210.0), self):
				if _w18._dead:
					continue
				_w18.other = self
				(GM.f_instance_destroy(_w18))
			for _w19 in GM.with_list((1208.0), self):
				if _w19._dead:
					continue
				_w19.other = self
				(GM.f_instance_destroy(_w19))
			for _w20 in GM.with_list((1209.0), self):
				if _w20._dead:
					continue
				_w20.other = self
				(GM.f_instance_destroy(_w20))
			for _w21 in GM.with_list((1207.0), self):
				if _w21._dead:
					continue
				_w21.other = self
				(GM.f_instance_destroy(_w21))
			(GM.f_instance_create(0.0, 0.0, 1208.0))
func ev_keypress_83():
	if (((absf(GM.G["minelaunch"] - 1.0) < 0.00001))):
		if (((GM.G["mines"] > 0.0))):
			GM.G["mines"] = GM.G["mines"] + (-1.0)
			(GM.f_instance_create(((x + (sprite_width / 2.0)) - 11.0), ((y + (sprite_height / 2.0)) - 11.0), 1201.0))
func ev_keypress_68():
	if (((absf(GM.G["missilelaunch"] - 1.0) < 0.00001))):
		if (((GM.G["missiles"] > 0.0))):
			GM.G["missiles"] = GM.G["missiles"] + (-1.0)
			if (((absf((GM.f_instance_number(1080.0)) - 0.0) < 0.00001))):
				if (((absf((GM.f_instance_number(1085.0)) - 0.0) < 0.00001))):
					if (((absf((GM.f_instance_number(1091.0)) - 0.0) < 0.00001))):
						if (((absf((GM.f_instance_number(1131.0)) - 0.0) < 0.00001))):
							(GM.f_instance_create(((x + (sprite_width / 2.0)) - 16.0), ((y + (sprite_height / 2.0)) - 16.0), 1182.0))
						else:
							(GM.f_instance_create(((x + (sprite_width / 2.0)) - 16.0), ((y + (sprite_height / 2.0)) - 16.0), 1177.0))
func ev_keypress_67():
	if (((absf((GM.f_instance_number(1209.0)) - 0.0) < 0.00001))):
		if (((absf(GM.G["ftp"] - 1.0) < 0.00001))):
			for _w22 in GM.with_list((1210.0), self):
				if _w22._dead:
					continue
				_w22.other = self
				(GM.f_instance_destroy(_w22))
			for _w23 in GM.with_list((1208.0), self):
				if _w23._dead:
					continue
				_w23.other = self
				(GM.f_instance_destroy(_w23))
			for _w24 in GM.with_list((1209.0), self):
				if _w24._dead:
					continue
				_w24.other = self
				(GM.f_instance_destroy(_w24))
			for _w25 in GM.with_list((1207.0), self):
				if _w25._dead:
					continue
				_w25.other = self
				(GM.f_instance_destroy(_w25))
			(GM.f_instance_create(0.0, 0.0, 1209.0))
func ev_keyrelease_113():
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		GM.health = 100.0
func ev_keyrelease_112():
	if ((((GM.f_keyboard_check(13.0))))) >= 0.5:
		GM.G["zz"] = GM.G["zz"] + 1000.0
func ev_keyrelease_38():
	(GM.f_sound_stop(294.0))
