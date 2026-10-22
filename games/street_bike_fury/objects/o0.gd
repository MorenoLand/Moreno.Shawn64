extends "res://games/street_bike_fury/scripts.gd"
var v_above = 0.0
var v_accel = 0.0
var v_bikeon = 0.0
var v_chargeup = 0.0
var v_cracked = 0.0
var v_damaged = 0.0
var v_die = 0.0
var v_dir = 0.0
var v_firemode = 0.0
var v_flips = 0.0
var v_flipspeed = 0.0
var v_frictionset = 0.0
var v_go = 0.0
var v_holddown = 0.0
var v_holdleft = 0.0
var v_holdright = 0.0
var v_holdup = 0.0
var v_intro = 0.0
var v_intro2 = 0.0
var v_maxpower = 0.0
var v_maxspeed = 0.0
var v_minspeed = 0.0
var v_mypower = 0.0
var v_offsetx = 0.0
var v_offsety = 0.0
var v_rate = 0.0
var v_right = 0.0
var v_room0 = 0.0
var v_room1 = 0.0
var v_rot1 = 0.0
var v_rot2 = 0.0
var v_rotate = 0.0
var v_set = 0.0
var v_set1 = 0.0
var v_set2 = 0.0
var v_set3 = 0.0
var v_setshield = 0.0
var v_settemp = 0.0
var v_settemp2 = 0.0
var v_shocks = 0.0
var v_shotready = 0.0
var v_shotup = 0.0
var v_surfaceout1 = 0.0
var v_surfaceout2 = 0.0
var v_temp = 0.0
var v_temp1 = 0.0
var v_temp3 = 0.0
var v_tilt = 0.0
var v_trickkey = 0.0
var v_tricky = 0.0
var v_waterbike = 0.0
var v_weaponon = 0.0
var v_wee = 0.0
var v_wheel1speed = 0.0
var v_wheel2speed = 0.0
var v_wheelspeed = 0.0
var v_wheelstopspeed = 0.0
var v_wit = 0.0
var v_xxx = 0.0
var v_xxxend = 0.0
var v_yyy = 0.0
func ev_create():
	GM.G["level"] = 1.0
	GM.G["maxturbo"] = 1.0
	GM.G["flipmeter"] = 0.0
	GM.G["distance"] = 0.0
	v_chargeup = 30.0
	GM.G["baddies"] = 0.0
	GM.G["scenery"] = 0.0
	GM.G["crashes"] = 0.0
	GM.G["people"] = 0.0
	GM.G["smacked"] = 0.0
	GM.G["shortcuts"] = 0.0
	GM.G["stunts"] = 0.0
	v_frictionset = 0.2
	v_minspeed = 7.0
	GM.G["finished"] = 0.0
	v_wheelstopspeed = 0.1
	v_surfaceout1 = 3.0
	v_surfaceout2 = 5.0
	GM.G["cannons"] = 0.0
	v_bikeon = 1.0
	v_flipspeed = 6.0
	v_accel = 0.8
	v_setshield = 2.0
	GM.G["speedzone"] = 0.0
	v_die = 0.0
	v_rot1 = 0.0
	(GM.f_sound_loop(73.0))
	v_damaged = 0.0
	v_weaponon = 0.0
	GM.G["flipmeter"] = 0.0
	GM.G["levelcycle"] = 0.0
	v_intro2 = 0.0
	v_tricky = 0.0
	v_cracked = 0.0
	v_rot2 = 0.0
	v_intro = 1.0
	v_wheel1speed = 0.0
	v_wheel2speed = 0.0
	v_firemode = 0.0
	v_shotready = 1.0
	v_trickkey = 0.0
	if (((GM.f_instance_number(0.0)) > 1.0)):
		(GM.f_instance_destroy(self))
	v_dir = 0.0
	gravity_direction = 270.0
	v_rotate = 0.0
	v_xxxend = 200000.0
	v_shocks = 0.0
	v_go = 0.0
	v_rate = 0.0
	v_wheelspeed = 0.0
	v_maxspeed = 30.0
	v_maxpower = 10.0
	v_mypower = v_maxpower
	v_tilt = 0.0
	y = 50000.0
	x = 450.0
	v_offsetx = (x - 505.0)
	v_offsety = (y - 1295.0)
	GM.view_xview[0] = 100.0
	(self.script_room_set(v_offsetx, v_offsety, 64.0))
	v_offsetx = (v_offsetx + 6240.0)
	v_shotup = 0.0
	v_flips = 0.0
	v_waterbike = 0.0
	(GM.f_instance_create(x, y, 212.0))
	(self.script_setuplevels())
	GM.G["makewaternow"] = 10.0
	GM.G["levelmin"] = 0.0
	GM.G["levelrange"] = 11.0
func ev_alarm_11():
	(GM.f_room_goto(30.0))
func ev_alarm_10():
	if ((GM.health < 1.0)):
		(GM.f_instance_create(x, y, 259.0))
		for _r1 in range(int((150.0))):
			v_set = (GM.f_instance_create(((x - 40.0) + (GM.f_random(80.0))), ((y - 40.0) + (GM.f_random(80.0))), 249.0))
			GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
			GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
		self.ev_user(3.0)
		GM.room_speed = 10.0
		alarm[int(11.0)] = 100.0
	if (((GM.health < 75.0) and (absf(v_cracked - 0.0) < 0.00001))):
		v_cracked = 2.0
		(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
		(GM.f_sound_play(40.0))
	if (((GM.health < 50.0) and (absf(v_cracked - 2.0) < 0.00001))):
		(GM.f_sound_play(40.0))
		(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
		(GM.f_instance_create((x + (GM.f_lengthdir_x(41.0, ((v_rotate + 80.0) + (v_temp3 / 10.0))))), (y + (GM.f_lengthdir_y(41.0, ((v_rotate + 80.0) + (v_temp3 / 10.0))))), 255.0))
		v_cracked = 4.0
	if (((GM.health < 25.0) and (absf(v_cracked - 4.0) < 0.00001))):
		v_cracked = 6.0
		(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
		(GM.f_sound_play(40.0))
	v_damaged = 0.0
func ev_alarm_9():
	v_setshield = 2.0
	(GM.f_sound_play(16.0))
func ev_alarm_8():
	v_trickkey = 0.0
func ev_alarm_7():
	if ((absf(v_tricky - 1.0) < 0.00001)):
		if ((v_rate < 0.0)):
			v_rate = v_rate + (0.12 * GM.G["gspeed"])
		alarm[int(7.0)] = 1.0
func ev_alarm_6():
	(GM.f_sound_stop(21.0))
func ev_alarm_5():
	v_shotup = 5.0
func ev_alarm_4():
	v_shotready = 1.0
	v_shotup = 0.0
	(GM.f_sound_stop(71.0))
func ev_alarm_3():
	x = GM.vb(21.0, "x")
	y = GM.vb(21.0, "y")
	if ((absf((1.0 if not ((GM.vb(21.0, "depth")) >= 0.5) else 0.0) - 5.0) < 0.00001)):
		depth = GM.vb(21.0, "depth")
	else:
		depth = (-18.0)
	v_offsetx = GM.vget(21.0, "v_offsetx")
	v_offsety = GM.vget(21.0, "v_offsety")
	speed = 0.0
	v_mypower = v_maxpower
	v_die = 0.0
	v_rotate = 0.0
	for _w2 in GM.with_list((21.0), self):
		if _w2._dead:
			continue
		_w2.other = self
		(GM.f_instance_destroy(_w2))
func ev_alarm_2():
	if ((v_shotup > 0.0)):
		v_shotup = v_shotup - 15.0
		alarm[int(2.0)] = 1.0
	else:
		if (((v_dir > 270.0) or (v_dir < 90.0))):
			v_xxx = (x + (GM.f_lengthdir_x(25.0, (v_rotate + 95.0))))
			v_yyy = (y + (GM.f_lengthdir_y(25.0, (v_rotate + 95.0))))
		if (((v_dir >= 90.0) and (v_dir <= 270.0))):
			v_xxx = (x + (GM.f_lengthdir_x(34.0, (v_rotate + 105.0))))
			v_yyy = (y + (GM.f_lengthdir_y(34.0, (v_rotate + 105.0))))
		for _r3 in range(int((10.0))):
			(GM.f_instance_create(v_xxx, v_yyy, 265.0))
		v_shotup = 0.0
func ev_alarm_1():
	v_go = 1.0
func ev_alarm_0():
	if (((v_shocks > 0.0) and (absf(v_waterbike - 0.0) < 0.00001))):
		v_shocks = v_shocks - 0.8
		alarm[int(0.0)] = 1.0
func ev_stepend():
	image_angle = v_rotate
	if (((absf(v_die - 0.0) < 0.00001) and (absf((GM.f_instance_number(44.0)) - 0.0) < 0.00001))):
		(self.script_createroom())
		GM.view_yview[0] = (((y - (GM.view_hview[0] / 2.0)) - 50.0) - (vspeed * 3.0))
		GM.background_y[int(2.0)] = ((GM.view_yview[0] + GM.view_hview[0]) - 410.0)
		GM.background_y[int(0.0)] = GM.view_yview[0]
		GM.background_hspeed[int(2.0)] = (hspeed / 1.08)
		GM.view_xview[0] = (x - (GM.view_wview[0] / 2.0))
		GM.background_hspeed[int(0.0)] = (hspeed / 1.01)
func ev_step():
	if ((hspeed > v_maxspeed)):
		hspeed = v_maxspeed
	v_dir = (GM.f_point_direction(x, y, GM.mouse_x, GM.mouse_y))
	if not ((((GM.f_place_meeting(self, x, (y + 50.0), 1.0)))) >= 0.5):
		if (not (((GM.f_sound_isplaying(3.0))) >= 0.5)):
			(GM.f_sound_loop(3.0))
		if (((absf(v_tricky - 0.0) < 0.00001) and (absf(v_intro2 - 0.0) < 0.00001))):
			v_rotate = v_rotate - 1.0
			v_flips = v_flips - 1.0
	else:
		if ((((GM.f_keyboard_check(39.0))) >= 0.5 or ((GM.f_keyboard_check((GM.f_ord("D"))))) >= 0.5)):
			v_holdright = 1.0
		else:
			v_holdright = 0.0
		if ((((GM.f_keyboard_check(40.0))) >= 0.5 or ((GM.f_keyboard_check((GM.f_ord("S"))))) >= 0.5)):
			v_holddown = 1.0
		else:
			v_holddown = 0.0
		if ((((GM.f_keyboard_check(37.0))) >= 0.5 or ((GM.f_keyboard_check((GM.f_ord("A"))))) >= 0.5)):
			v_holdleft = 1.0
		else:
			v_holdleft = 0.0
		if ((((GM.f_keyboard_check(38.0))) >= 0.5 or ((GM.f_keyboard_check((GM.f_ord("W"))))) >= 0.5)):
			v_holdup = 1.0
		else:
			v_holdup = 0.0
		if ((absf(v_tilt - 0.0) < 0.00001)):
			v_temp = 0.0
			if ((((GM.f_keyboard_check(39.0))) >= 0.5 or ((GM.f_keyboard_check(37.0))) >= 0.5)):
				v_temp = 1.0
			if ((v_rotate < 90.0)):
				if (((v_rotate - v_surfaceout1) > 0.0)):
					v_rotate = v_rotate - v_surfaceout1
				else:
					if (GM.eq(v_temp, 0.0)):
						v_rotate = 0.0
			if ((v_rotate > 270.0)):
				if (((v_rotate + v_surfaceout1) < 360.0)):
					v_rotate = v_rotate + v_surfaceout1
				else:
					if (GM.eq(v_temp, 0.0)):
						v_rotate = 0.0
		if (((v_tilt > 6.0) and (v_tilt < 90.0))):
			v_temp = 0.0
			if (((absf(v_holdright - 1.0) < 0.00001) or (absf(v_holdleft - 1.0) < 0.00001))):
				v_temp = 1.0
			if (((v_rotate < 90.0) and (v_rotate > v_tilt))):
				if (((v_rotate - v_surfaceout2) > (0.0 + v_tilt))):
					v_rotate = v_rotate - v_surfaceout2
				else:
					if (GM.eq(v_temp, 0.0)):
						v_rotate = v_tilt
			if (((v_rotate > 270.0) or (v_rotate < v_tilt))):
				if ((((v_rotate + v_surfaceout2) < v_tilt) or (v_rotate > 270.0))):
					v_rotate = v_rotate + v_surfaceout2
				else:
					if (GM.eq(v_temp, 0.0)):
						v_rotate = v_tilt
		if (((v_tilt > 270.0) and (v_tilt < 355.0))):
			v_temp = 0.0
			if (((absf(v_holdright - 1.0) < 0.00001) or (absf(v_holdleft - 1.0) < 0.00001))):
				v_temp = 1.0
			if (((v_rotate < 90.0) or (v_rotate > v_tilt))):
				if ((((v_rotate - v_surfaceout1) < 90.0) or ((v_rotate - v_surfaceout1) > v_tilt))):
					v_rotate = v_rotate - v_surfaceout1
				else:
					if (GM.eq(v_temp, 0.0)):
						v_rotate = v_tilt
			if (((v_rotate > 270.0) and (v_rotate < v_tilt))):
				if (((v_rotate + v_surfaceout1) < v_tilt)):
					v_rotate = v_rotate + v_surfaceout1
				else:
					if (GM.eq(v_temp, 0.0)):
						v_rotate = v_tilt
		if ((hspeed > v_frictionset)):
			hspeed = hspeed - v_frictionset
		if (((((hspeed < v_minspeed) and (absf(v_die - 0.0) < 0.00001)) and (absf(v_intro - 0.0) < 0.00001)) and (absf(v_intro2 - 0.0) < 0.00001))):
			GM.score = GM.score - 2.0
			hspeed = v_minspeed
			GM.G["crashes"] = GM.G["crashes"] - 2.0
		if (((absf(v_holdright - 0.0) < 0.00001) and (absf(v_holdleft - 0.0) < 0.00001))):
			if ((absf(v_tilt - 666.0) >= 0.00001)):
				v_rate = 0.0
		(GM.f_sound_stop(3.0))
	v_rotate = v_rotate + v_rate
	v_flips = v_flips + v_rate
	if ((v_rotate > 360.0)):
		v_rotate = 0.0
	if ((v_rotate < 0.0)):
		v_rotate = 360.0
	if ((((absf(v_go - 1.0) < 0.00001) and (absf(v_holdup - 1.0) < 0.00001)) and (absf(v_die - 0.0) < 0.00001))):
		(GM.f_sound_volume(2.0, 0.94))
	else:
		(GM.f_sound_volume(2.0, 0.0))
	if (((v_wheel1speed > 0.2) and (absf(v_holdup - 0.0) < 0.00001))):
		v_wheel1speed = v_wheel1speed - v_wheelstopspeed
	if ((v_wheel2speed > 0.2)):
		v_wheel2speed = v_wheel2speed - v_wheelstopspeed
	v_rot1 = v_rot1 - v_wheel1speed
	v_rot2 = v_rot2 - v_wheel2speed
func ev_col_279():
	(GM.f_instance_create(x, y, 217.0))
	for _w4 in GM.with_list((self.other), self):
		if _w4._dead:
			continue
		_w4.other = self
		(_w4.script_addmessage("Paint Panic!! +10", 65535.0, 10.0))
		GM.G["scenery"] = GM.G["scenery"] + 10.0
		(GM.f_instance_create(_w4.x, (_w4.y - 300.0), 278.0))
		GM.vset(_w4, "v_wit", (GM.f_instance_create(_w4.x, _w4.y, 280.0)))
		GM.vsetb(GM.vget(_w4, "v_wit"), "direction", (GM.vb(0.0, "direction") + 20.0))
		GM.vsetb(GM.vget(_w4, "v_wit"), "speed", (GM.vb(0.0, "speed") / 3.0))
		(GM.f_instance_destroy(_w4))
	for _r5 in range(int((50.0))):
		v_set = (GM.f_instance_create(((x - 40.0) + (GM.f_random(80.0))), ((y - 40.0) + (GM.f_random(80.0))), 249.0))
		GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
		GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
	for _r6 in range(int((50.0))):
		v_set = (GM.f_instance_create(((x - 40.0) + (GM.f_random(80.0))), ((y - 40.0) + (GM.f_random(80.0))), 285.0))
		GM.vsetb(v_set, "direction", ((-45.0) + (GM.f_random(90.0))))
		GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(15.0))))
	(GM.f_sound_play(89.0))
	(GM.f_instance_create(x, y, 261.0))
func ev_col_232():
	for _w7 in GM.with_list((self.other), self):
		if _w7._dead:
			continue
		_w7.other = self
		for _r8 in range(int((40.0))):
			GM.vset(_w7, "v_wee", (GM.f_instance_create(((_w7.x - 10.0) + (GM.f_random(20.0))), ((_w7.y - 20.0) + (GM.f_random(40.0))), 67.0)))
			GM.vsetb(GM.vget(_w7, "v_wee"), "direction", (GM.f_random(360.0)))
			GM.vsetb(GM.vget(_w7, "v_wee"), "speed", (1.0 + (GM.f_random(4.0))))
			GM.vsetb(GM.vget(_w7, "v_wee"), "hspeed", GM.vb(GM.vget(_w7, "v_wee"), "hspeed") + (GM.vb(0.0, "hspeed") / 1.3))
			GM.vsetb(GM.vget(_w7, "v_wee"), "vspeed", GM.vb(GM.vget(_w7, "v_wee"), "vspeed") + (GM.vb(0.0, "vspeed") / 1.3))
		if ((_w7.vspeed > 15.0)):
			(_w7.script_addmessage("Umbrella SMASH!!! +10", 65535.0, 30.0))
		else:
			(_w7.script_addmessage("PERSON DIED, HEHE!! +10", 65535.0, 10.0))
		(GM.f_sound_play(15.0))
		GM.G["people"] = GM.G["people"] + 10.0
		GM.vset(_w7, "v_wit", (GM.f_instance_create(_w7.x, _w7.y, 233.0)))
		GM.vsetb(GM.vget(_w7, "v_wit"), "direction", (GM.vb(0.0, "direction") + 20.0))
		GM.vsetb(GM.vget(_w7, "v_wit"), "speed", (GM.vb(0.0, "speed") / 1.5))
		GM.vset(_w7, "v_wit", (GM.f_instance_create(_w7.x, _w7.y, 234.0)))
		GM.vsetb(GM.vget(_w7, "v_wit"), "direction", (GM.vb(0.0, "direction") + 20.0))
		GM.vsetb(GM.vget(_w7, "v_wit"), "speed", (GM.vb(0.0, "speed") / 1.3))
		(GM.f_sound_play(12.0))
		(GM.f_instance_destroy(_w7))
func ev_col_201():
	v_tilt = 64.5
	self.ev_user(0.0)
	self.ev_user(2.0)
func ev_col_193():
	v_tilt = 0.0
	self.ev_user(2.0)
	self.ev_user(5.0)
	self.ev_user(9.0)
func ev_col_191():
	if ((absf((1.0 if not ((depth) >= 0.5) else 0.0) - (-18.0)) < 0.00001)):
		depth = (-18.0)
func ev_col_184():
	for _w9 in GM.with_list((self.other), self):
		if _w9._dead:
			continue
		_w9.other = self
		for _r10 in range(int((40.0))):
			GM.vset(_w9, "v_wee", (GM.f_instance_create(((_w9.x - 10.0) + (GM.f_random(20.0))), ((_w9.y - 20.0) + (GM.f_random(40.0))), 67.0)))
			GM.vsetb(GM.vget(_w9, "v_wee"), "direction", (GM.f_random(360.0)))
			GM.vsetb(GM.vget(_w9, "v_wee"), "speed", (1.0 + (GM.f_random(4.0))))
			GM.vsetb(GM.vget(_w9, "v_wee"), "hspeed", GM.vb(GM.vget(_w9, "v_wee"), "hspeed") + (GM.vb(0.0, "hspeed") / 1.3))
			GM.vsetb(GM.vget(_w9, "v_wee"), "vspeed", GM.vb(GM.vget(_w9, "v_wee"), "vspeed") + (GM.vb(0.0, "vspeed") / 1.3))
		if ((_w9.vspeed > 15.0)):
			(_w9.script_addmessage("WORKER SMASHED!!! +10", 65535.0, 30.0))
		else:
			(_w9.script_addmessage("WORKER SPLAT!! +10", 65535.0, 10.0))
		(GM.f_sound_play(15.0))
		GM.G["people"] = GM.G["people"] + 10.0
		GM.vset(_w9, "v_wit", (GM.f_instance_create(_w9.x, _w9.y, 185.0)))
		GM.vsetb(GM.vget(_w9, "v_wit"), "direction", (GM.vb(0.0, "direction") + 20.0))
		GM.vsetb(GM.vget(_w9, "v_wit"), "speed", (GM.vb(0.0, "speed") / 1.5))
		(GM.f_sound_play(12.0))
		(GM.f_instance_destroy(_w9))
func ev_col_171():
	v_tilt = 0.0
	depth = (-18.0)
	self.ev_user(2.0)
	self.ev_user(5.0)
	self.ev_user(9.0)
func ev_col_163():
	if ((absf(depth - (-18.0)) < 0.00001)):
		if ((vspeed > 15.0)):
			for _w11 in GM.with_list((self.other), self):
				if _w11._dead:
					continue
				_w11.other = self
				for _r12 in range(int((300.0))):
					GM.vset(_w11, "v_set", (GM.f_instance_create((_w11.x + (GM.f_random(_w11.sprite_width))), (_w11.y + (GM.f_random(_w11.sprite_height))), 72.0)))
					GM.vsetb(GM.vget(_w11, "v_set"), "direction", (GM.f_random(360.0)))
					GM.vsetb(GM.vget(_w11, "v_set"), "speed", (GM.f_random(5.0)))
				(GM.f_instance_destroy(_w11))
			(GM.f_sound_play(52.0))
			return
		v_tilt = 0.0
		self.ev_user(5.0)
		self.ev_user(2.0)
		self.ev_user(9.0)
func ev_col_162():
	depth = 6.0
func ev_col_161():
	v_tilt = 0.0
	self.ev_user(2.0)
	self.ev_user(5.0)
	self.ev_user(9.0)
func ev_col_121():
	for _w13 in GM.with_list((self.other), self):
		if _w13._dead:
			continue
		_w13.other = self
		(_w13.script_addmessage("Ladder Splatter!! +10", 65535.0, 10.0))
		GM.G["scenery"] = GM.G["scenery"] + 10.0
		GM.vset(_w13, "v_wit", (GM.f_instance_create(_w13.x, _w13.y, 135.0)))
		GM.vsetb(GM.vget(_w13, "v_wit"), "direction", (GM.vb(0.0, "direction") + 20.0))
		GM.vsetb(GM.vget(_w13, "v_wit"), "speed", (GM.vb(0.0, "speed") / 3.0))
		(GM.f_sound_play(36.0))
		(GM.f_instance_destroy(_w13))
func ev_col_87():
	(GM.f_instance_create((x + 500.0), y, 140.0))
	for _w14 in GM.with_list((self.other), self):
		if _w14._dead:
			continue
		_w14.other = self
		GM.vset(_w14, "v_wit", (GM.f_instance_create((_w14.x + 20.0), (_w14.y + 32.0), 89.0)))
		GM.vsetb(GM.vget(_w14, "v_wit"), "direction", (GM.vb(0.0, "direction") + 25.0))
		GM.vsetb(GM.vget(_w14, "v_wit"), "speed", (GM.vb(0.0, "speed") / 1.3))
		(GM.f_sound_play(27.0))
		(_w14.script_addmessage("Takin Out The Trash! +5", 65535.0, 5.0))
		GM.G["scenery"] = GM.G["scenery"] + 5.0
		(GM.f_instance_destroy(_w14))
func ev_col_77():
	v_tilt = 0.0
	self.ev_user(9.0)
	if (((v_rotate >= 90.0) and (v_rotate <= 270.0))):
		v_mypower = v_mypower - 1.0
	if (((v_mypower < 0.0) and (absf(v_die - 0.0) < 0.00001))):
		self.ev_user(3.0)
	if ((vspeed > 0.0)):
		if ((vspeed > 6.0)):
			(GM.f_sound_play(20.0))
			for _r15 in range(int((30.0))):
				v_wee = (GM.f_instance_create(((x - 40.0) + (GM.f_random(80.0))), ((y + 20.0) + (GM.f_random(10.0))), 81.0))
				GM.vsetb(v_wee, "direction", (GM.f_random(180.0)))
				GM.vsetb(v_wee, "speed", (1.0 + (GM.f_random(16.0))))
				GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + (hspeed / 1.5))
				GM.vsetb(v_wee, "gravity", 0.4)
		if ((vspeed > 20.0)):
			pass
		vspeed = (vspeed / 2.0)
	vspeed = vspeed - 1.0
func ev_col_76():
	for _r16 in range(int(((speed / 4.0)))):
		v_wee = (GM.f_instance_create(((x - 30.0) + (GM.f_random(60.0))), ((y + 10.0) + (GM.f_random(20.0))), 81.0))
		GM.vsetb(v_wee, "direction", (90.0 + (GM.f_random(130.0))))
		GM.vsetb(v_wee, "speed", (1.0 + (GM.f_random(7.0))))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + (hspeed / 1.3))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + (vspeed / 2.0))
		GM.vsetb(v_wee, "gravity", 0.4)
	v_shocks = 12.0
	if ((absf((GM.f_sound_isplaying(21.0)) - 0.0) < 0.00001)):
		(GM.f_sound_loop(21.0))
	alarm[int(6.0)] = 2.0
func ev_col_63():
	for _w17 in GM.with_list((self.other), self):
		if _w17._dead:
			continue
		_w17.other = self
		for _r18 in range(int((40.0))):
			GM.vset(_w17, "v_wee", (GM.f_instance_create(((_w17.x - 10.0) + (GM.f_random(20.0))), ((_w17.y - 20.0) + (GM.f_random(40.0))), 67.0)))
			GM.vsetb(GM.vget(_w17, "v_wee"), "direction", (GM.f_random(360.0)))
			GM.vsetb(GM.vget(_w17, "v_wee"), "speed", (1.0 + (GM.f_random(4.0))))
			GM.vsetb(GM.vget(_w17, "v_wee"), "hspeed", GM.vb(GM.vget(_w17, "v_wee"), "hspeed") + (GM.vb(0.0, "hspeed") / 1.3))
			GM.vsetb(GM.vget(_w17, "v_wee"), "vspeed", GM.vb(GM.vget(_w17, "v_wee"), "vspeed") + (GM.vb(0.0, "vspeed") / 1.3))
		if ((_w17.vspeed > 15.0)):
			(_w17.script_addmessage("SMASHED!!! +10", 65535.0, 30.0))
		else:
			(_w17.script_addmessage("SPLAT!! +10", 65535.0, 10.0))
		(GM.f_sound_play(15.0))
		GM.G["people"] = GM.G["people"] + 10.0
		GM.vset(_w17, "v_wit", (GM.f_instance_create(_w17.x, _w17.y, 66.0)))
		GM.vsetb(GM.vget(_w17, "v_wit"), "direction", (GM.vb(0.0, "direction") + 20.0))
		GM.vsetb(GM.vget(_w17, "v_wit"), "speed", (GM.vb(0.0, "speed") / 1.5))
		(GM.f_sound_play(12.0))
		(GM.f_instance_destroy(_w17))
func ev_col_43():
	if ((absf(depth - (-18.0)) < 0.00001)):
		for _w19 in GM.with_list((self.other), self):
			if _w19._dead:
				continue
			_w19.other = self
			GM.vset(_w19, "v_wit", (GM.f_instance_create(_w19.x, _w19.y, 56.0)))
			GM.vsetb(GM.vget(_w19, "v_wit"), "direction", (GM.vb(0.0, "direction") + 35.0))
			GM.vsetb(GM.vget(_w19, "v_wit"), "speed", (GM.vb(0.0, "speed") / 1.3))
			(GM.f_sound_play(12.0))
			(_w19.script_addmessage("Cone Crazy! +5", 65535.0, 5.0))
			GM.G["scenery"] = GM.G["scenery"] + 5.0
			(GM.f_instance_destroy(_w19))
func ev_col_35():
	if (((y < (GM.vb(self.other, "y") + 60.0)) and (vspeed > (-1.0)))):
		v_tilt = 0.0
		self.ev_user(2.0)
		self.ev_user(5.0)
	else:
		v_tilt = 666.0
func ev_col_29():
	v_tilt = (360.0 - 45.0)
	self.ev_user(2.0)
	self.ev_user(1.0)
func ev_col_28():
	v_tilt = (360.0 - 38.0)
	self.ev_user(2.0)
	self.ev_user(1.0)
func ev_col_27():
	v_tilt = (360.0 - 15.0)
	self.ev_user(2.0)
	self.ev_user(1.0)
func ev_col_8():
	v_tilt = 42.0
	self.ev_user(2.0)
	self.ev_user(0.0)
func ev_col_7():
	v_tilt = 15.0
	self.ev_user(2.0)
	self.ev_user(0.0)
func ev_col_6():
	v_tilt = 333.0
	self.ev_user(2.0)
	self.ev_user(1.0)
func ev_col_5():
	v_tilt = 49.0
	self.ev_user(2.0)
	self.ev_user(0.0)
func ev_col_4():
	v_tilt = 30.0
	self.ev_user(2.0)
	self.ev_user(0.0)
func ev_col_1():
	v_tilt = 0.0
	depth = (-18.0)
	self.ev_user(2.0)
	self.ev_user(5.0)
	if ((vspeed > 1.0)):
		self.ev_user(9.0)
func ev_key_87():
	if ((((absf(v_intro2 - 0.0) < 0.00001) and (absf(v_intro - 0.0) < 0.00001)) and (absf(v_tricky - 0.0) < 0.00001))):
		self.ev_user(6.0)
func ev_key_68():
	if (((((absf(v_intro2 - 0.0) < 0.00001) and (absf(v_intro - 0.0) < 0.00001)) and (absf(v_tricky - 0.0) < 0.00001)) and not (((GM.f_keyboard_check(40.0))) >= 0.5))):
		self.ev_user(8.0)
func ev_key_65():
	if ((((((absf(v_intro2 - 0.0) < 0.00001) and (absf(v_intro - 0.0) < 0.00001)) and (absf(v_tricky - 0.0) < 0.00001)) and not (((GM.f_keyboard_check(40.0))) >= 0.5)) and (absf(v_die - 0.0) < 0.00001))):
		self.ev_user(7.0)
func ev_key_39():
	if (((((absf(v_intro2 - 0.0) < 0.00001) and (absf(v_intro - 0.0) < 0.00001)) and (absf(v_tricky - 0.0) < 0.00001)) and not (((GM.f_keyboard_check(40.0))) >= 0.5))):
		self.ev_user(8.0)
func ev_key_38():
	if ((((absf(v_intro2 - 0.0) < 0.00001) and (absf(v_intro - 0.0) < 0.00001)) and (absf(v_tricky - 0.0) < 0.00001))):
		self.ev_user(6.0)
func ev_key_37():
	if ((((((absf(v_intro2 - 0.0) < 0.00001) and (absf(v_intro - 0.0) < 0.00001)) and (absf(v_tricky - 0.0) < 0.00001)) and not (((GM.f_keyboard_check(40.0))) >= 0.5)) and (absf(v_die - 0.0) < 0.00001))):
		self.ev_user(7.0)
func ev_mouse_57():
	if ((absf((GM.f_instance_number(18.0)) - 1.0) < 0.00001)):
		if ((v_chargeup > 0.0)):
			if ((absf(v_weaponon - 0.0) < 0.00001)):
				v_weaponon = 4.0
			else:
				if ((absf(v_weaponon - 4.0) < 0.00001)):
					v_weaponon = 8.0
				else:
					if ((absf(v_weaponon - 8.0) < 0.00001)):
						v_weaponon = 0.0
			(GM.f_sound_play(53.0))
			(GM.f_sound_play(77.0))
func ev_mouse_54():
	v_chargeup = 30.0
func ev_mouse_51():
	if ((absf((GM.f_instance_number(18.0)) - 1.0) < 0.00001)):
		v_chargeup = v_chargeup - 1.0
		if ((absf(v_chargeup - 0.0) < 0.00001)):
			if ((absf((GM.f_instance_number(99.0)) - 0.0) < 0.00001)):
				if (((absf(v_die - 0.0) < 0.00001) and (GM.vget(18.0, "v_powerups") > 0.0))):
					(self.script_addmessage("FLAME ON +35", 32768.0, 3.0))
					GM.vset(18.0, "v_powerups", GM.vget(18.0, "v_powerups") - 1.0)
					for _w20 in GM.with_list((99.0), self):
						if _w20._dead:
							continue
						_w20.other = self
						(GM.f_instance_destroy(_w20))
					(GM.f_instance_create((x + 10000000.0), y, 99.0))
func ev_mouse_50():
	if (((absf(v_die - 0.0) < 0.00001) and (absf(v_tricky - 0.0) < 0.00001))):
		if ((absf(v_shotready - 1.0) < 0.00001)):
			if (((absf(v_intro2 - 0.0) < 0.00001) and (absf(v_intro - 0.0) < 0.00001))):
				if (((GM.mouse_y > (GM.view_yview[0] + 61.0)) or (GM.mouse_x < ((GM.view_xview[0] + GM.view_wview[0]) - 260.0)))):
					if (((v_dir > 270.0) or (v_dir < 90.0))):
						v_xxx = (x + (GM.f_lengthdir_x(25.0, (v_rotate + 95.0))))
						v_yyy = (y + (GM.f_lengthdir_y(25.0, (v_rotate + 95.0))))
					if (((v_dir >= 90.0) and (v_dir <= 270.0))):
						v_xxx = (x + (GM.f_lengthdir_x(34.0, (v_rotate + 105.0))))
						v_yyy = (y + (GM.f_lengthdir_y(34.0, (v_rotate + 105.0))))
					if ((absf(v_weaponon - 0.0) < 0.00001)):
						v_set = (GM.f_instance_create(v_xxx, v_yyy, 263.0))
						GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
						GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
						for _w21 in GM.with_list((v_set), self):
							if _w21._dead:
								continue
							_w21.other = self
							(GM.f_motion_add(_w21, (((GM.f_point_direction(_w21.x, _w21.y, GM.mouse_x, GM.mouse_y)) - 15.0) + (GM.f_random(30.0))), (GM.f_random(20.0))))
						v_set = (GM.f_instance_create(v_xxx, v_yyy, 20.0))
						GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
						GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
						GM.vsetb(v_set, "depth", (depth - 1.0))
						for _w22 in GM.with_list((v_set), self):
							if _w22._dead:
								continue
							_w22.other = self
							(GM.f_motion_add(_w22, (GM.f_point_direction(_w22.x, _w22.y, GM.mouse_x, GM.mouse_y)), (25.0 * GM.G["gspeed"])))
						v_shotready = 0.0
						alarm[int(4.0)] = 5.0
						v_shotup = 10.0
						alarm[int(5.0)] = 3.0
					if ((absf(v_weaponon - 4.0) < 0.00001)):
						(GM.f_sound_play(55.0))
						for _r23 in range(int((4.0))):
							v_set = (GM.f_instance_create(v_xxx, v_yyy, 263.0))
							GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
							GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
							for _w24 in GM.with_list((v_set), self):
								if _w24._dead:
									continue
								_w24.other = self
								(GM.f_motion_add(_w24, (((GM.f_point_direction(_w24.x, _w24.y, GM.mouse_x, GM.mouse_y)) - 15.0) + (GM.f_random(30.0))), (GM.f_random(15.0))))
						(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
						for _r25 in range(int((5.0))):
							v_set = (GM.f_instance_create(v_xxx, v_yyy, 254.0))
							GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
							GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
							GM.vsetb(v_set, "depth", (depth - 1.0))
							for _w26 in GM.with_list((v_set), self):
								if _w26._dead:
									continue
								_w26.other = self
								(GM.f_motion_add(_w26, (((GM.f_point_direction(_w26.x, _w26.y, GM.mouse_x, GM.mouse_y)) - 15.0) + (GM.f_random(30.0))), (25.0 + (GM.f_random(5.0)))))
						v_shotready = 0.0
						alarm[int(4.0)] = 25.0
						v_shotup = 20.0
						alarm[int(5.0)] = 20.0
					if ((absf(v_weaponon - 8.0) < 0.00001)):
						if ((GM.G["bombs"] > 0.0)):
							GM.G["bombs"] = GM.G["bombs"] - 1.0
							(GM.f_sound_play(83.0))
							for _r27 in range(int((25.0))):
								v_set = (GM.f_instance_create(v_xxx, v_yyy, 263.0))
								GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
								GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
								for _w28 in GM.with_list((v_set), self):
									if _w28._dead:
										continue
									_w28.other = self
									(GM.f_motion_add(_w28, (((GM.f_point_direction(_w28.x, _w28.y, GM.mouse_x, GM.mouse_y)) - 15.0) + (GM.f_random(30.0))), (GM.f_random(20.0))))
							(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
							v_set = (GM.f_instance_create(v_xxx, v_yyy, 264.0))
							GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
							GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
							GM.vsetb(v_set, "depth", (depth - 1.0))
							for _w29 in GM.with_list((v_set), self):
								if _w29._dead:
									continue
								_w29.other = self
								(GM.f_motion_add(_w29, (((GM.f_point_direction(_w29.x, _w29.y, GM.mouse_x, GM.mouse_y)) - 15.0) + (GM.f_random(30.0))), 25.0))
							v_shotready = 0.0
							alarm[int(4.0)] = 40.0
							v_shotup = 30.0
							alarm[int(5.0)] = 30.0
						else:
							if ((absf((GM.f_instance_number(236.0)) - 0.0) < 0.00001)):
								(self.script_addtrick("OUT OF AMMO", 0.0, 0.0))
					if ((absf(v_weaponon - 2.0) < 0.00001)):
						v_set = (GM.f_instance_create(v_xxx, v_yyy, 240.0))
						GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
						GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
						GM.vsetb(v_set, "depth", (depth - 1.0))
						if not ((((GM.f_sound_isplaying(71.0)))) >= 0.5):
							(GM.f_sound_play(71.0))
						for _w30 in GM.with_list((v_set), self):
							if _w30._dead:
								continue
							_w30.other = self
							(GM.f_motion_add(_w30, (((GM.f_point_direction(_w30.x, _w30.y, GM.mouse_x, GM.mouse_y)) - 5.0) + (GM.f_random(10.0))), (15.0 + (GM.f_random(10.0)))))
						alarm[int(4.0)] = 2.0
func ev_other_21():
	v_bikeon = 1.0
	for _r31 in range(int((20.0))):
		(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
func ev_other_20():
	v_bikeon = 2.0
	v_shocks = 12.0
	for _r32 in range(int((20.0))):
		(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
func ev_other_19():
	if ((v_flips > ((((360.0 * 9.0)) - 90.0)))):
		(self.script_addtrick("9 Backflips, +15HP", 15.0, 10.0))
		(self.script_addmessage("9 Backflips! +800", 16711680.0, 800.0))
		GM.G["stunts"] = GM.G["stunts"] + 800.0
	else:
		if ((v_flips < (-((((360.0 * 9.0)) - 90.0))))):
			(self.script_addtrick("9 Frontflips, +15HP", 15.0, 10.0))
			(self.script_addmessage("9 Frontflips! +800", 16711680.0, 800.0))
			GM.G["stunts"] = GM.G["stunts"] + 800.0
		else:
			if ((v_flips > ((((360.0 * 8.0)) - 90.0)))):
				(self.script_addtrick("8 Backflips, +15HP", 14.0, 10.0))
				(self.script_addmessage("8 Backflips! +600", 16711680.0, 600.0))
				GM.G["stunts"] = GM.G["stunts"] + 600.0
			else:
				if ((v_flips < (-((((360.0 * 8.0)) - 90.0))))):
					(self.script_addtrick("8 Frontflips, +15HP", 14.0, 10.0))
					(self.script_addmessage("8 Frontflips! +600", 16711680.0, 600.0))
					GM.G["stunts"] = GM.G["stunts"] + 600.0
				else:
					if ((v_flips > ((((360.0 * 7.0)) - 90.0)))):
						(self.script_addtrick("7 Backflips, +15HP", 13.0, 10.0))
						(self.script_addmessage("7 Backflips! +400", 16711680.0, 400.0))
						GM.G["stunts"] = GM.G["stunts"] + 400.0
					else:
						if ((v_flips < (-((((360.0 * 7.0)) - 90.0))))):
							(self.script_addtrick("7 Frontflips, +15HP", 13.0, 10.0))
							(self.script_addmessage("7 Frontflips! +400", 16711680.0, 400.0))
							GM.G["stunts"] = GM.G["stunts"] + 400.0
						else:
							if ((v_flips > ((((360.0 * 6.0)) - 90.0)))):
								(self.script_addtrick("6 Backflips, +10HP", 12.0, 10.0))
								(self.script_addmessage("6 Backflips! +300", 16711680.0, 300.0))
								GM.G["stunts"] = GM.G["stunts"] + 300.0
							else:
								if ((v_flips < (-((((360.0 * 6.0)) - 90.0))))):
									(self.script_addtrick("6 Frontflips, +10HP", 12.0, 10.0))
									(self.script_addmessage("6 Frontflips! +300", 16711680.0, 300.0))
									GM.G["stunts"] = GM.G["stunts"] + 300.0
								else:
									if ((v_flips > ((((360.0 * 5.0)) - 90.0)))):
										(self.script_addtrick("5 Backflips, +5HP", 11.0, 5.0))
										(self.script_addmessage("5 Backflips! +160", 16711680.0, 160.0))
										GM.G["stunts"] = GM.G["stunts"] + 160.0
									else:
										if ((v_flips < (-((((360.0 * 5.0)) - 90.0))))):
											(self.script_addtrick("5 Frontflips, +5HP", 11.0, 5.0))
											(self.script_addmessage("5 Frontflips! +160", 16711680.0, 160.0))
											GM.G["stunts"] = GM.G["stunts"] + 160.0
										else:
											if ((v_flips > ((((360.0 * 4.0)) - 90.0)))):
												(self.script_addtrick("4 Backflips, +5HP", 10.0, 5.0))
												(self.script_addmessage("4 Backflips! +80", 16711680.0, 80.0))
												GM.G["stunts"] = GM.G["stunts"] + 80.0
											else:
												if ((v_flips < (-((((360.0 * 4.0)) - 90.0))))):
													(self.script_addtrick("4 Frontflips, +5HP", 10.0, 5.0))
													(self.script_addmessage("4 Frontflips! +80", 16711680.0, 80.0))
													GM.G["stunts"] = GM.G["stunts"] + 80.0
												else:
													if ((v_flips > ((((360.0 * 3.0)) - 90.0)))):
														(self.script_addtrick("Tripple Backflip, +5HP", 9.0, 5.0))
														(self.script_addmessage("Tripple Backflip! +40", 16711680.0, 40.0))
														GM.G["stunts"] = GM.G["stunts"] + 40.0
													else:
														if ((v_flips < (-((((360.0 * 3.0)) - 90.0))))):
															(self.script_addtrick("Tripple Frontflip, +5HP", 9.0, 5.0))
															(self.script_addmessage("Tripple Frontflip! +40", 16711680.0, 40.0))
															GM.G["stunts"] = GM.G["stunts"] + 40.0
														else:
															if ((v_flips > ((((360.0 * 2.0)) - 90.0)))):
																(self.script_addtrick("Double Backflip, +5HP", 8.0, 5.0))
																(self.script_addmessage("Double Backflip! +20", 16711680.0, 20.0))
																GM.G["stunts"] = GM.G["stunts"] + 20.0
															else:
																if ((v_flips < (-((((360.0 * 2.0)) - 90.0))))):
																	(self.script_addtrick("Double Frontflip, +5HP", 8.0, 5.0))
																	(self.script_addmessage("Double Frontflip! +20", 16711680.0, 20.0))
																	GM.G["stunts"] = GM.G["stunts"] + 20.0
																else:
																	if ((v_flips > ((((360.0 * 1.0)) - 90.0)))):
																		(self.script_addtrick("Backflip, +2HP", 7.0, 2.0))
																		(self.script_addmessage("Backflip! +10", 16711680.0, 10.0))
																		GM.G["stunts"] = GM.G["stunts"] + 10.0
																	else:
																		if ((v_flips < (-((((360.0 * 1.0)) - 90.0))))):
																			(self.script_addtrick("Frontflip, +2HP", 7.0, 2.0))
																			(self.script_addmessage("Frontflip! +10", 16711680.0, 10.0))
																			GM.G["stunts"] = GM.G["stunts"] + 10.0
	if ((GM.G["flipmeter"] > 99.0)):
		(GM.f_instance_create(x, y, 238.0))
	v_flips = 0.0
	if ((GM.health > 100.0)):
		GM.health = 100.0
	if ((absf(v_tricky - 1.0) < 0.00001)):
		self.ev_user(3.0)
	for _w33 in GM.with_list((228.0), self):
		if _w33._dead:
			continue
		_w33.other = self
		(GM.f_instance_destroy(_w33))
func ev_other_18():
	if ((absf(v_die - 0.0) < 0.00001)):
		if ((not (((GM.f_place_meeting(self, x, (y + 8.0), 1.0))) >= 0.5) or (absf(v_tilt - 666.0) < 0.00001))):
			v_rate = v_rate - 0.5
			if ((v_rate < (-v_flipspeed))):
				v_rate = (-v_flipspeed)
		else:
			if not ((((GM.f_place_meeting(self, x, (y + 8.0), 76.0)))) >= 0.5):
				v_rate = (-6.0)
			else:
				v_rate = (-4.0)
func ev_other_17():
	if ((absf(v_die - 0.0) < 0.00001)):
		if ((not (((GM.f_place_meeting(self, x, (y + 8.0), 1.0))) >= 0.5) or (absf(v_tilt - 666.0) < 0.00001))):
			v_rate = v_rate + 0.5
			if ((v_rate > v_flipspeed)):
				v_rate = v_flipspeed
		else:
			if not ((((GM.f_place_meeting(self, x, (y + 8.0), 76.0)))) >= 0.5):
				v_rate = 6.0
			else:
				v_rate = 4.0
func ev_other_16():
	if ((absf(v_die - 0.0) < 0.00001)):
		v_set = 0.0
		if ((v_tilt > 270.0)):
			if (((v_rotate < 90.0) or (v_rotate > (v_tilt - 15.0)))):
				v_set = 1.0
		if ((v_tilt < 90.0)):
			if (((v_rotate < 90.0) and (v_rotate > (v_tilt - 15.0)))):
				v_set = 1.0
	if not ((((GM.f_place_meeting(self, x, (y + 50.0), 1.0)))) >= 0.5):
		v_set = 0.0
	if (GM.eq(v_set, 1.0)):
		(GM.f_motion_add(self, direction, v_accel))
		if (((v_rotate < 90.0) or (v_rotate > 270.0))):
			if (((((speed < (v_maxspeed - 10.0)) and not (((GM.f_sound_isplaying(1.0))) >= 0.5)) and (absf(v_die - 0.0) < 0.00001)) and (absf(v_tricky - 0.0) < 0.00001))):
				v_go = 0.0
				alarm[int(1.0)] = 110.0
				(GM.f_sound_play(1.0))
		if ((((GM.f_sound_isplaying(1.0))) >= 0.5 and not (((GM.f_place_meeting(self, x, (y + 20.0), 77.0))) >= 0.5))):
			v_set = (GM.f_instance_create((x + (GM.f_lengthdir_x((45.0 - (v_shocks / 2.0)), ((v_rotate + 199.0) - v_shocks)))), (y + (GM.f_lengthdir_y((45.0 - (v_shocks / 2.0)), ((v_rotate + 199.0) - v_shocks)))), 96.0))
			GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + (vspeed / 2.0))
			GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + (hspeed / 2.0))
			GM.vsetb(v_set, "depth", (depth - 1.0))
	v_wheel1speed = v_wheel1speed + 0.1
func ev_other_15():
	if ((vspeed > 0.0)):
		if ((vspeed > (10.0 * GM.G["gspeed"]))):
			for _r34 in range(int((5.0))):
				(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
		if ((vspeed > (20.0 * GM.G["gspeed"]))):
			(GM.f_instance_create((x + 500.0), y, 140.0))
			(GM.f_sound_play(9.0))
			(GM.f_sound_play(10.0))
			for _r35 in range(int((20.0))):
				(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
		if ((vspeed > (4.0 * GM.G["gspeed"]))):
			v_shocks = 12.0
			alarm[int(0.0)] = 1.0
		vspeed = (vspeed / 1.5)
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 1.0
func ev_other_14():
	v_settemp = (x - GM.background_x[int(0.0)])
	v_settemp2 = (y - GM.background_y[int(0.0)])
	x = (GM.view_wview[0] / 2.0)
	GM.background_x[int(0.0)] = (x - v_settemp)
	GM.background_y[int(0.0)] = (y - v_settemp2)
	if (GM.eq(GM.room, v_room0)):
		(GM.f_room_goto(v_room1))
	else:
		if (GM.eq(GM.room, v_room1)):
			(GM.f_room_goto(v_room0))
func ev_other_13():
	GM.health = GM.health - 10.0
	v_temp1 = (GM.f_floor((GM.f_random(2.999999))))
	if ((absf(v_temp1 - 0.0) < 0.00001)):
		(self.script_addmessage("YOU SUCK -50", 255.0, (-50.0)))
	if ((absf(v_temp1 - 1.0) < 0.00001)):
		(self.script_addmessage("Way to DIE! -50", 255.0, (-50.0)))
	if ((absf(v_temp1 - 2.0) < 0.00001)):
		(self.script_addmessage("Learn to Ride! -50", 255.0, (-50.0)))
	GM.G["crashes"] = GM.G["crashes"] - 50.0
	v_die = 1.0
	if ((absf((GM.f_instance_number(95.0)) - 0.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 21.0))
	else:
		v_wee = (GM.f_instance_create(GM.vb(95.0, "x"), GM.vb(95.0, "y"), 21.0))
	(GM.f_motion_add(self, (GM.f_random(360.0)), (5.0 + (GM.f_random(3.0)))))
	if ((absf((GM.f_instance_number(95.0)) - 0.0) < 0.00001)):
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + hspeed)
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + vspeed)
		GM.vsetb(v_wee, "depth", depth)
	else:
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + GM.vb(0.0, "hspeed"))
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + GM.vb(0.0, "vspeed"))
		GM.vsetb(v_wee, "depth", GM.vb(0.0, "depth"))
	GM.vset(v_wee, "v_offsetx", v_offsetx)
	GM.vset(v_wee, "v_offsety", v_offsety)
	if ((absf((GM.f_instance_number(95.0)) - 0.0) < 0.00001)):
		for _w36 in GM.with_list((v_wee), self):
			if _w36._dead:
				continue
			_w36.other = self
			(GM.f_motion_add(_w36, (GM.f_random(360.0)), (10.0 + (GM.f_random(3.0)))))
	else:
		for _w37 in GM.with_list((95.0), self):
			if _w37._dead:
				continue
			_w37.other = self
			(GM.f_instance_destroy(_w37))
		v_tricky = 0.0
	for _r38 in range(int((50.0))):
		v_set = (GM.f_instance_create(((x - 40.0) + (GM.f_random(80.0))), ((y - 40.0) + (GM.f_random(80.0))), 249.0))
		GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
		GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
	v_wit = (GM.f_instance_create(x, y, 152.0))
	GM.vsetb(v_wit, "direction", GM.vb(21.0, "direction"))
	GM.vsetb(v_wit, "speed", (GM.vb(21.0, "speed") / 1.3))
	GM.vsetb(v_wit, "depth", depth)
	(GM.f_instance_create(x, y, 224.0))
	alarm[int(3.0)] = 120.0
func ev_other_12():
	if ((vspeed > 1.0)):
		self.ev_user(9.0)
	if (((v_rotate >= 90.0) and (v_rotate <= 270.0))):
		v_mypower = v_mypower - 1.0
		(GM.f_effect_create_above(4.0, x, y, (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
		if ((not (((GM.f_sound_isplaying(4.0))) >= 0.5) and (speed > 1.0))):
			(GM.f_sound_play(4.0))
		if (((v_mypower < 0.0) and (absf(v_die - 0.0) < 0.00001))):
			self.ev_user(3.0)
	if (((v_rotate < 90.0) or (v_rotate > 355.0))):
		v_wheel1speed = speed
	if (((v_rotate > 270.0) or (v_rotate < 5.0))):
		v_wheel2speed = speed
	if (((vspeed > 5.0) and not (((GM.f_sound_isplaying(6.0))) >= 0.5))):
		(GM.f_sound_play(6.0))
func ev_other_11():
	if ((vspeed > 1.0)):
		if ((vspeed > 6.0)):
			v_shocks = 8.0
			alarm[int(0.0)] = 1.0
		direction = v_tilt
		while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
			y = y - 3.0
func ev_other_10():
	if ((absf(v_die - 0.0) < 0.00001)):
		if (((((v_tilt > 0.0) and (direction > 90.0)) and (v_tilt < 90.0)) and (direction < (360.0 - 15.0)))):
			(GM.f_sound_play(9.0))
			(GM.f_instance_create((x + 500.0), y, 138.0))
			for _r39 in range(int((20.0))):
				(GM.f_effect_create_above(4.0, ((x - 20.0) + (GM.f_random(40.0))), ((y - 20.0) + (GM.f_random(40.0))), (GM.f_floor((GM.f_random(2.99999999)))), 8421504.0))
			speed = (speed / 1.5)
	if ((vspeed > 6.0)):
		v_shocks = 8.0
		alarm[int(0.0)] = 1.0
	direction = v_tilt
	while (((GM.f_place_meeting(self, x, y, self.other)))) >= 0.5:
		y = y - 6.0
func ev_other_4():
	GM.view_hborder[0] = ((GM.view_wview[0] / 2.0) - (sprite_width / 2.0))
func ev_draw():
	v_right = ((((GM.mouse_x - x)) * (GM.f_cos(((v_rotate * 3.141592653589793) / 180.0)))) - (((GM.mouse_y - y)) * (GM.f_sin(((v_rotate * 3.141592653589793) / 180.0)))))
	v_above = (((-((GM.mouse_x - x))) * (GM.f_sin(((v_rotate * 3.141592653589793) / 180.0)))) - (((GM.mouse_y - y)) * (GM.f_cos(((v_rotate * 3.141592653589793) / 180.0)))))
	v_temp3 = v_dir
	(GM.f_texture_set_interpolation(1.0))
	if ((((absf(v_die - 0.0) < 0.00001) and (absf(v_tricky - 0.0) < 0.00001)) and (absf(v_intro - 0.0) < 0.00001))):
		(GM.f_draw_sprite_ext(4.0, 0.0, (x + (GM.f_lengthdir_x(26.0, (v_rotate + 95.0)))), (y + (GM.f_lengthdir_y(26.0, (v_rotate + 95.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(70.0, 0.0, (x + (GM.f_lengthdir_x((35.0 - (v_shocks / 2.0)), ((v_rotate + 199.0) - v_shocks)))), (y + (GM.f_lengthdir_y((35.0 - (v_shocks / 2.0)), ((v_rotate + 199.0) - v_shocks)))), 1.0, 1.0, (v_rot1 + v_rotate), 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(1.0, 0.0, (x + (GM.f_lengthdir_x((50.0 - (v_shocks / 2.0)), ((v_rotate - 15.0) + v_shocks)))), (y + (GM.f_lengthdir_y((50.0 - (v_shocks / 2.0)), ((v_rotate - 15.0) + v_shocks)))), 1.0, 1.0, (v_rot2 + v_rotate), 16777215.0, 1.0))
	if (((absf(v_bikeon - 1.0) < 0.00001) and (absf(GM.G["newbike"] - 0.0) < 0.00001))):
		(GM.f_draw_sprite_ext(0.0, v_damaged, x, y, 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	if (((absf(v_bikeon - 1.0) < 0.00001) and (absf(GM.G["newbike"] - 1.0) < 0.00001))):
		(GM.f_draw_sprite_ext(216.0, v_damaged, x, y, 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	if ((absf(v_bikeon - 2.0) < 0.00001)):
		(GM.f_draw_sprite_ext(69.0, v_damaged, x, y, 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	if ((absf(v_bikeon - 3.0) < 0.00001)):
		(GM.f_draw_sprite_ext(188.0, v_damaged, x, y, 1.0, 1.0, v_rotate, 16777215.0, 1.0))
	if ((((absf(v_die - 0.0) < 0.00001) and (absf(v_tricky - 0.0) < 0.00001)) and (absf(v_intro - 0.0) < 0.00001))):
		if ((v_right > 0.0)):
			v_set1 = (x + (GM.f_lengthdir_x(25.0, (v_rotate + 95.0))))
			v_set2 = (y + (GM.f_lengthdir_y(25.0, (v_rotate + 95.0))))
			v_set3 = (GM.f_point_direction(v_set1, v_set2, GM.mouse_x, GM.mouse_y))
			(GM.f_draw_sprite_ext(2.0, 0.0, (x + (GM.f_lengthdir_x(15.0, (v_rotate + 80.0)))), (y + (GM.f_lengthdir_y(15.0, (v_rotate + 80.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
			if ((v_above > 0.0)):
				if ((v_temp3 > 90.0)):
					v_temp3 = 0.0
				(GM.f_draw_sprite_ext(3.0, v_cracked, (x + (GM.f_lengthdir_x(40.0, ((v_rotate + 78.0) + (v_temp3 / 10.0))))), (y + (GM.f_lengthdir_y(40.0, ((v_rotate + 78.0) + (v_temp3 / 10.0))))), 1.0, 1.0, ((v_temp3 / 1.5) + v_rotate), 16777215.0, 1.0))
			if ((v_above < 0.0)):
				if ((v_temp3 < 270.0)):
					v_temp3 = 360.0
				(GM.f_draw_sprite_ext(3.0, v_cracked, (x + (GM.f_lengthdir_x((40.0 - (((360.0 - v_temp3)) / 10.0)), ((v_rotate + 78.0) - (((360.0 - v_temp3)) / 10.0))))), (y + (GM.f_lengthdir_y((40.0 - (((360.0 - v_temp3)) / 10.0)), ((v_rotate + 78.0) - (((360.0 - v_temp3)) / 10.0))))), 1.0, 1.0, (((-((360.0 - v_temp3))) / 1.5) + v_rotate), 16777215.0, 1.0))
			(GM.f_draw_sprite_ext(5.0, (0.0 + v_weaponon), v_set1, v_set2, 1.0, 1.0, (v_set3 + v_shotup), 16777215.0, 1.0))
		if ((v_right < 0.0)):
			v_set1 = (x + (GM.f_lengthdir_x((34.0 - (v_temp3 / 60.0)), ((v_rotate + 105.0) + (v_temp3 / 15.0)))))
			v_set2 = (y + (GM.f_lengthdir_y((34.0 - (v_temp3 / 60.0)), ((v_rotate + 105.0) + (v_temp3 / 15.0)))))
			v_set3 = (GM.f_point_direction(v_set1, v_set2, GM.mouse_x, GM.mouse_y))
			if (((v_temp3 < 90.0) or (v_temp3 > 270.0))):
				v_temp3 = 180.0
			(GM.f_draw_sprite_ext(2.0, 1.0, (x + (GM.f_lengthdir_x(15.0, (v_rotate + 80.0)))), (y + (GM.f_lengthdir_y(15.0, (v_rotate + 80.0)))), 1.0, 1.0, v_rotate, 16777215.0, 1.0))
			(GM.f_draw_sprite_ext(3.0, (1.0 + v_cracked), (x + (GM.f_lengthdir_x(41.0, ((v_rotate + 80.0) + (v_temp3 / 10.0))))), (y + (GM.f_lengthdir_y(41.0, ((v_rotate + 80.0) + (v_temp3 / 10.0))))), 1.0, 1.0, (((v_temp3 / 2.0) + v_rotate) + 90.0), 16777215.0, 1.0))
			(GM.f_draw_sprite_ext(5.0, (1.0 + v_weaponon), v_set1, v_set2, 1.0, 1.0, (v_set3 - v_shotup), 16777215.0, 1.0))
	(GM.f_texture_set_interpolation(0.0))
func ev_keypress_90():
	pass
func ev_keypress_83():
	if (((absf(v_die - 0.0) < 0.00001) and (absf(v_tricky - 0.0) < 0.00001))):
		if ((absf(v_shotready - 1.0) < 0.00001)):
			if (((absf(v_intro2 - 0.0) < 0.00001) and (absf(v_intro - 0.0) < 0.00001))):
				if (((GM.mouse_y > (GM.view_yview[0] + 61.0)) or (GM.mouse_x < ((GM.view_xview[0] + GM.view_wview[0]) - 260.0)))):
					(GM.f_sound_play(85.0))
					v_shotready = 0.0
					alarm[int(4.0)] = 70.0
					v_shotup = 75.0
					alarm[int(2.0)] = 1.0
func ev_keypress_81():
	(GM.f_screen_save((await GM.f_get_string("Save As?", ""))))
func ev_keypress_76():
	(GM.f_game_restart())
func ev_keypress_68():
	if (not (((GM.f_place_meeting(self, x, (y + 20.0), 1.0))) >= 0.5)):
		if (((GM.f_keyboard_check((GM.f_ord("S")))))) >= 0.5:
			if (((absf(v_die - 0.0) < 0.00001) and (absf(v_tricky - 0.0) < 0.00001))):
				(GM.f_sound_play(31.0))
				(GM.f_instance_create(x, y, 217.0))
				v_wee = (GM.f_instance_create(x, y, 95.0))
				GM.vset(v_wee, "v_seti", (v_rotate - 90.0))
				v_tricky = 1.0
				v_rate = (-10.0)
				alarm[int(7.0)] = 1.0
func ev_keypress_40():
	if (((absf(v_die - 0.0) < 0.00001) and (absf(v_tricky - 0.0) < 0.00001))):
		if ((absf(v_shotready - 1.0) < 0.00001)):
			if (((absf(v_intro2 - 0.0) < 0.00001) and (absf(v_intro - 0.0) < 0.00001))):
				if (((GM.mouse_y > (GM.view_yview[0] + 61.0)) or (GM.mouse_x < ((GM.view_xview[0] + GM.view_wview[0]) - 260.0)))):
					(GM.f_sound_play(85.0))
					v_shotready = 0.0
					alarm[int(4.0)] = 30.0
					v_shotup = 90.0
					alarm[int(2.0)] = 1.0
func ev_keypress_39():
	if (not (((GM.f_place_meeting(self, x, (y + 20.0), 1.0))) >= 0.5)):
		if ((absf(v_holddown - 1.0) < 0.00001)):
			if (((absf(v_die - 0.0) < 0.00001) and (absf(v_tricky - 0.0) < 0.00001))):
				(GM.f_sound_play(31.0))
				(GM.f_instance_create(x, y, 217.0))
				v_wee = (GM.f_instance_create(x, y, 95.0))
				GM.vset(v_wee, "v_seti", (v_rotate - 90.0))
				v_tricky = 1.0
				v_rate = (-10.0)
				alarm[int(7.0)] = 1.0
func ev_keypress_27():
	if ((((await GM.f_show_question("Do you want to go to the Menu?"))))) >= 0.5:
		(GM.f_sound_stop_all())
		(GM.f_sound_play(16.0))
		(GM.f_game_restart())
func ev_keyrelease_38():
	if ((absf(v_intro2 - 0.0) < 0.00001)):
		(GM.f_sound_stop(1.0))
