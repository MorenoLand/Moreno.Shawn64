extends "res://games/jetzfusion/scripts.gd"
var v_alive = 0.0
var v_burned = 0.0
var v_char = 0.0
var v_girl = 0.0
var v_mypower = 0.0
var v_poom = 0.0
var v_scream = 0.0
var v_whater = 0.0
var v_wow1 = 0.0
var v_wow2 = 0.0
var v_wowzee = 0.0
var v_xxx = 0.0
func ev_create():
	y = 480.0
	v_poom = (GM.f_round((GM.f_random(1.0))))
	v_char = (GM.f_round((GM.f_random(11.0))))
	v_mypower = 2.0
	v_girl = 0.0
	v_alive = 1.0
	if ((absf(v_poom - 0.0) < 0.00001)):
		(GM.f_motion_add(self, 0.0, (3.0 + (GM.f_random(2.0)))))
		if ((absf(v_char - 0.0) < 0.00001)):
			sprite_index = 90.0
			v_girl = 1.0
		if ((absf(v_char - 1.0) < 0.00001)):
			sprite_index = 95.0
			v_girl = 1.0
		if ((absf(v_char - 2.0) < 0.00001)):
			sprite_index = 102.0
		if ((absf(v_char - 3.0) < 0.00001)):
			sprite_index = 106.0
		if ((absf(v_char - 4.0) < 0.00001)):
			sprite_index = 110.0
		if ((absf(v_char - 5.0) < 0.00001)):
			sprite_index = 116.0
		if ((absf(v_char - 6.0) < 0.00001)):
			sprite_index = 120.0
		if ((absf(v_char - 7.0) < 0.00001)):
			sprite_index = 124.0
		if ((absf(v_char - 8.0) < 0.00001)):
			sprite_index = 130.0
		if ((absf(v_char - 9.0) < 0.00001)):
			sprite_index = 137.0
		if ((absf(v_char - 10.0) < 0.00001)):
			sprite_index = 140.0
			v_girl = 1.0
		if ((absf(v_char - 11.0) < 0.00001)):
			sprite_index = 144.0
	if ((absf(v_poom - 1.0) < 0.00001)):
		(GM.f_motion_add(self, 180.0, (3.0 + (GM.f_random(2.0)))))
		if ((absf(v_char - 0.0) < 0.00001)):
			sprite_index = 91.0
			v_girl = 1.0
		if ((absf(v_char - 1.0) < 0.00001)):
			sprite_index = 94.0
			v_girl = 1.0
		if ((absf(v_char - 2.0) < 0.00001)):
			sprite_index = 103.0
		if ((absf(v_char - 3.0) < 0.00001)):
			sprite_index = 107.0
		if ((absf(v_char - 4.0) < 0.00001)):
			sprite_index = 111.0
		if ((absf(v_char - 5.0) < 0.00001)):
			sprite_index = 117.0
		if ((absf(v_char - 6.0) < 0.00001)):
			sprite_index = 121.0
		if ((absf(v_char - 7.0) < 0.00001)):
			sprite_index = 125.0
		if ((absf(v_char - 8.0) < 0.00001)):
			sprite_index = 131.0
		if ((absf(v_char - 9.0) < 0.00001)):
			sprite_index = 136.0
		if ((absf(v_char - 10.0) < 0.00001)):
			sprite_index = 141.0
			v_girl = 1.0
		if ((absf(v_char - 11.0) < 0.00001)):
			sprite_index = 145.0
	if ((absf(v_girl - 0.0) < 0.00001)):
		v_scream = (GM.f_round((GM.f_random(6.0))))
	else:
		v_scream = (GM.f_round((GM.f_random(3.0))))
	image_speed = 0.5
	v_wowzee = 0.0
	v_whater = 0.0
	v_burned = 0.0
func ev_destroy():
	if (((absf(GM.room - 7.0) < 0.00001))):
		v_wow1 = (GM.f_round((GM.f_random(10.0))))
		if ((absf(v_wow1 - 0.0) < 0.00001)):
			v_wow2 = (GM.f_round((GM.f_random(2.0))))
			if ((absf(v_wow2 - 0.0) < 0.00001)):
				(GM.f_instance_create(x, y, 440.0))
			if ((absf(v_wow2 - 1.0) < 0.00001)):
				(GM.f_instance_create(x, y, 441.0))
			if ((absf(v_wow2 - 2.0) < 0.00001)):
				(GM.f_instance_create(x, y, 442.0))
	if (((absf(v_wowzee - 1.0) < 0.00001))):
		for _w59 in GM.with_list((168.0), self):
			if _w59._dead:
				continue
			_w59.other = self
			(GM.f_instance_destroy(_w59))
	if (not (((GM.G["damage"] > 87.5)))):
		if ((((GM.f_instance_number(66.0)) < 20.0))):
			while true:
				v_xxx = (GM.f_random(GM.room_width))
				if (((v_xxx < (GM.view_xview[int(0.0)] - 40.0)) or (v_xxx > (GM.view_xview[int(0.0)] + GM.view_wview[int(0.0)])))):
					break
			(GM.f_instance_create(v_xxx, 580.0, 66.0))
func ev_alarm_5():
	(self.script_adddamage(0.0, 0.0, 0.0, 0.0, 0.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 167.0))
	for _r60 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 403.0))
	(GM.f_instance_destroy(self))
func ev_alarm_4():
	if (((absf(v_burned - 1.0) < 0.00001))):
		speed = speed - 0.1
		for _r61 in range(int((3.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 403.0))
		(GM.f_instance_create((x + (GM.f_random(12.0))), (y + (GM.f_random(12.0))), 402.0))
		alarm[int(4.0)] = 1.0
func ev_alarm_3():
	(self.script_adddamage(0.0, 0.0, 0.0, 0.0, 0.0))
	GM.G["deaths"] = GM.G["deaths"] + 1.0
	for _r62 in range(int((2.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 372.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 167.0))
	for _w63 in GM.with_list((168.0), self):
		if _w63._dead:
			continue
		_w63.other = self
		(GM.f_instance_destroy(_w63))
	(GM.f_instance_destroy(self))
func ev_alarm_2():
	(self.script_adddamage(0.0, 0.0, 0.0, 0.0, 0.0))
	GM.G["deaths"] = GM.G["deaths"] + 1.0
	if ((hspeed > 0.0)):
		if ((absf(sprite_index - 90.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 89.0))
		if ((absf(sprite_index - 95.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 90.0))
		if ((absf(sprite_index - 102.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 91.0))
		if ((absf(sprite_index - 106.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 92.0))
		if ((absf(sprite_index - 110.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 93.0))
		if ((absf(sprite_index - 116.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 94.0))
		if ((absf(sprite_index - 120.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 95.0))
		if ((absf(sprite_index - 124.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 96.0))
		if ((absf(sprite_index - 130.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 97.0))
		if ((absf(sprite_index - 137.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 98.0))
		if ((absf(sprite_index - 140.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 99.0))
		if ((absf(sprite_index - 144.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 100.0))
	if ((hspeed < 0.0)):
		if ((absf(sprite_index - 91.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 101.0))
		if ((absf(sprite_index - 94.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 102.0))
		if ((absf(sprite_index - 103.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 103.0))
		if ((absf(sprite_index - 107.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 104.0))
		if ((absf(sprite_index - 111.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 105.0))
		if ((absf(sprite_index - 117.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 106.0))
		if ((absf(sprite_index - 121.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 107.0))
		if ((absf(sprite_index - 125.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 108.0))
		if ((absf(sprite_index - 131.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 109.0))
		if ((absf(sprite_index - 136.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 110.0))
		if ((absf(sprite_index - 141.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 111.0))
		if ((absf(sprite_index - 145.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 112.0))
	for _w64 in GM.with_list((168.0), self):
		if _w64._dead:
			continue
		_w64.other = self
		(GM.f_instance_destroy(_w64))
	(GM.f_instance_destroy(self))
func ev_alarm_1():
	if ((hspeed > 0.0)):
		if ((absf(sprite_index - 90.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 89.0))
		if ((absf(sprite_index - 95.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 90.0))
		if ((absf(sprite_index - 102.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 91.0))
		if ((absf(sprite_index - 106.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 92.0))
		if ((absf(sprite_index - 110.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 93.0))
		if ((absf(sprite_index - 116.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 94.0))
		if ((absf(sprite_index - 120.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 95.0))
		if ((absf(sprite_index - 124.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 96.0))
		if ((absf(sprite_index - 130.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 97.0))
		if ((absf(sprite_index - 137.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 98.0))
		if ((absf(sprite_index - 140.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 99.0))
		if ((absf(sprite_index - 144.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 100.0))
	if ((hspeed < 0.0)):
		if ((absf(sprite_index - 91.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 101.0))
		if ((absf(sprite_index - 94.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 102.0))
		if ((absf(sprite_index - 103.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 103.0))
		if ((absf(sprite_index - 107.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 104.0))
		if ((absf(sprite_index - 111.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 105.0))
		if ((absf(sprite_index - 117.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 106.0))
		if ((absf(sprite_index - 121.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 107.0))
		if ((absf(sprite_index - 125.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 108.0))
		if ((absf(sprite_index - 131.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 109.0))
		if ((absf(sprite_index - 136.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 110.0))
		if ((absf(sprite_index - 141.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 111.0))
		if ((absf(sprite_index - 145.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 112.0))
func ev_alarm_0():
	speed = (3.0 + (GM.f_random(2.0)))
func ev_col_401():
	if (((absf(v_burned - 0.0) < 0.00001))):
		(GM.f_sound_play(71.0))
		alarm[int(5.0)] = 40.0
		if ((absf(v_char - 0.0) < 0.00001)):
			(self.script_screamsscript(15.0))
		if ((absf(v_char - 1.0) < 0.00001)):
			(self.script_screamsscript(16.0))
		if ((absf(v_char - 2.0) < 0.00001)):
			(self.script_screamsscript(12.0))
		if ((absf(v_char - 3.0) < 0.00001)):
			(self.script_screamsscript(1.0))
		if ((absf(v_char - 4.0) < 0.00001)):
			(self.script_screamsscript(7.0))
		if ((absf(v_char - 5.0) < 0.00001)):
			(self.script_screamsscript(13.0))
		if ((absf(v_char - 6.0) < 0.00001)):
			(self.script_screamsscript(10.0))
		if ((absf(v_char - 7.0) < 0.00001)):
			(self.script_screamsscript(9.0))
		if ((absf(v_char - 8.0) < 0.00001)):
			(self.script_screamsscript(11.0))
		if ((absf(v_char - 9.0) < 0.00001)):
			(self.script_screamsscript(17.0))
		if ((absf(v_char - 10.0) < 0.00001)):
			(self.script_screamsscript(14.0))
		if ((absf(v_char - 11.0) < 0.00001)):
			(self.script_screamsscript(8.0))
		speed = (5.0 + (GM.f_random(3.0)))
		alarm[int(4.0)] = 1.0
		v_burned = 1.0
func ev_col_384():
	if ((absf(v_char - 0.0) < 0.00001)):
		(self.script_screamsscript(15.0))
	if ((absf(v_char - 1.0) < 0.00001)):
		(self.script_screamsscript(16.0))
	if ((absf(v_char - 2.0) < 0.00001)):
		(self.script_screamsscript(12.0))
	if ((absf(v_char - 3.0) < 0.00001)):
		(self.script_screamsscript(1.0))
	if ((absf(v_char - 4.0) < 0.00001)):
		(self.script_screamsscript(7.0))
	if ((absf(v_char - 5.0) < 0.00001)):
		(self.script_screamsscript(13.0))
	if ((absf(v_char - 6.0) < 0.00001)):
		(self.script_screamsscript(10.0))
	if ((absf(v_char - 7.0) < 0.00001)):
		(self.script_screamsscript(9.0))
	if ((absf(v_char - 8.0) < 0.00001)):
		(self.script_screamsscript(11.0))
	if ((absf(v_char - 9.0) < 0.00001)):
		(self.script_screamsscript(17.0))
	if ((absf(v_char - 10.0) < 0.00001)):
		(self.script_screamsscript(14.0))
	if ((absf(v_char - 11.0) < 0.00001)):
		(self.script_screamsscript(8.0))
	v_mypower = v_mypower + (-1.0)
	for _r65 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 33.0))
	for _r66 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 31.0))
	if (((v_mypower < 1.0))):
		if (((absf(v_whater - 0.0) < 0.00001))):
			if ((((GM.f_instance_number(181.0)) > 0.0))):
				for _w67 in GM.with_list((182.0), self):
					if _w67._dead:
						continue
					_w67.other = self
					(GM.f_instance_destroy(_w67))
				(GM.f_sound_play(44.0))
				for _w68 in GM.with_list((170.0), self):
					if _w68._dead:
						continue
					_w68.other = self
					(GM.f_instance_destroy(_w68))
				for _w69 in GM.with_list((181.0), self):
					if _w69._dead:
						continue
					_w69.other = self
					(GM.f_instance_destroy(_w69))
			else:
				(self.script_adddamage())
		GM.G["deaths"] = GM.G["deaths"] + 1.0
		if ((hspeed > 0.0)):
			if ((absf(sprite_index - 90.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 89.0))
			if ((absf(sprite_index - 95.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 90.0))
			if ((absf(sprite_index - 102.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 91.0))
			if ((absf(sprite_index - 106.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 92.0))
			if ((absf(sprite_index - 110.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 93.0))
			if ((absf(sprite_index - 116.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 94.0))
			if ((absf(sprite_index - 120.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 95.0))
			if ((absf(sprite_index - 124.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 96.0))
			if ((absf(sprite_index - 130.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 97.0))
			if ((absf(sprite_index - 137.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 98.0))
			if ((absf(sprite_index - 140.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 99.0))
			if ((absf(sprite_index - 144.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 100.0))
		if ((hspeed < 0.0)):
			if ((absf(sprite_index - 91.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 101.0))
			if ((absf(sprite_index - 94.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 102.0))
			if ((absf(sprite_index - 103.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 103.0))
			if ((absf(sprite_index - 107.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 104.0))
			if ((absf(sprite_index - 111.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 105.0))
			if ((absf(sprite_index - 117.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 106.0))
			if ((absf(sprite_index - 121.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 107.0))
			if ((absf(sprite_index - 125.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 108.0))
			if ((absf(sprite_index - 131.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 109.0))
			if ((absf(sprite_index - 136.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 110.0))
			if ((absf(sprite_index - 141.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 111.0))
			if ((absf(sprite_index - 145.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 112.0))
		(GM.f_instance_destroy(self))
func ev_col_353():
	if (((x < (GM.vb(self.other, "x") + 41.0)))):
		if (((x > (GM.vb(self.other, "x") + 39.0)))):
			if ((((GM.f_random(3.0)) < 1.0))):
				for _w70 in GM.with_list((self.other), self):
					if _w70._dead:
						continue
					_w70.other = self
					(GM.f_instance_create((_w70.x + 40.0), (_w70.y + 20.0), 143.0))
				(GM.f_instance_destroy(self))
func ev_col_310():
	if (((speed < 7.0))):
		if ((absf(v_char - 0.0) < 0.00001)):
			(self.script_screamsscript(15.0))
		if ((absf(v_char - 1.0) < 0.00001)):
			(self.script_screamsscript(16.0))
		if ((absf(v_char - 2.0) < 0.00001)):
			(self.script_screamsscript(12.0))
		if ((absf(v_char - 3.0) < 0.00001)):
			(self.script_screamsscript(1.0))
		if ((absf(v_char - 4.0) < 0.00001)):
			(self.script_screamsscript(7.0))
		if ((absf(v_char - 5.0) < 0.00001)):
			(self.script_screamsscript(13.0))
		if ((absf(v_char - 6.0) < 0.00001)):
			(self.script_screamsscript(10.0))
		if ((absf(v_char - 7.0) < 0.00001)):
			(self.script_screamsscript(9.0))
		if ((absf(v_char - 8.0) < 0.00001)):
			(self.script_screamsscript(11.0))
		if ((absf(v_char - 9.0) < 0.00001)):
			(self.script_screamsscript(17.0))
		if ((absf(v_char - 10.0) < 0.00001)):
			(self.script_screamsscript(14.0))
		if ((absf(v_char - 11.0) < 0.00001)):
			(self.script_screamsscript(8.0))
		speed = (7.0 + (GM.f_random(3.0)))
		if (((GM.vb(7.0, "x") > x) and (hspeed > 0.0))):
			if ((absf(sprite_index - 90.0) < 0.00001)):
				sprite_index = 91.0
			if ((absf(sprite_index - 95.0) < 0.00001)):
				sprite_index = 94.0
			if ((absf(sprite_index - 102.0) < 0.00001)):
				sprite_index = 103.0
			if ((absf(sprite_index - 106.0) < 0.00001)):
				sprite_index = 107.0
			if ((absf(sprite_index - 110.0) < 0.00001)):
				sprite_index = 111.0
			if ((absf(sprite_index - 116.0) < 0.00001)):
				sprite_index = 117.0
			if ((absf(sprite_index - 120.0) < 0.00001)):
				sprite_index = 121.0
			if ((absf(sprite_index - 124.0) < 0.00001)):
				sprite_index = 125.0
			if ((absf(sprite_index - 130.0) < 0.00001)):
				sprite_index = 131.0
			if ((absf(sprite_index - 137.0) < 0.00001)):
				sprite_index = 136.0
			if ((absf(sprite_index - 140.0) < 0.00001)):
				sprite_index = 141.0
			if ((absf(sprite_index - 144.0) < 0.00001)):
				sprite_index = 145.0
			hspeed = (-hspeed)
		if (((GM.vb(7.0, "x") < x) and (hspeed < 0.0))):
			if ((absf(sprite_index - 91.0) < 0.00001)):
				sprite_index = 90.0
			if ((absf(sprite_index - 94.0) < 0.00001)):
				sprite_index = 95.0
			if ((absf(sprite_index - 103.0) < 0.00001)):
				sprite_index = 102.0
			if ((absf(sprite_index - 107.0) < 0.00001)):
				sprite_index = 106.0
			if ((absf(sprite_index - 111.0) < 0.00001)):
				sprite_index = 110.0
			if ((absf(sprite_index - 117.0) < 0.00001)):
				sprite_index = 116.0
			if ((absf(sprite_index - 121.0) < 0.00001)):
				sprite_index = 120.0
			if ((absf(sprite_index - 125.0) < 0.00001)):
				sprite_index = 124.0
			if ((absf(sprite_index - 131.0) < 0.00001)):
				sprite_index = 130.0
			if ((absf(sprite_index - 136.0) < 0.00001)):
				sprite_index = 137.0
			if ((absf(sprite_index - 141.0) < 0.00001)):
				sprite_index = 140.0
			if ((absf(sprite_index - 145.0) < 0.00001)):
				sprite_index = 144.0
			hspeed = (-hspeed)
		alarm[int(0.0)] = 50.0
		v_mypower = v_mypower + (-0.3)
func ev_col_302():
	(self.script_adddamage(0.0, 0.0, 0.0, 0.0, 0.0))
	GM.G["deaths"] = GM.G["deaths"] + 1.0
	if ((hspeed > 0.0)):
		if ((absf(sprite_index - 90.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 89.0))
		if ((absf(sprite_index - 95.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 90.0))
		if ((absf(sprite_index - 102.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 91.0))
		if ((absf(sprite_index - 106.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 92.0))
		if ((absf(sprite_index - 110.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 93.0))
		if ((absf(sprite_index - 116.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 94.0))
		if ((absf(sprite_index - 120.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 95.0))
		if ((absf(sprite_index - 124.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 96.0))
		if ((absf(sprite_index - 130.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 97.0))
		if ((absf(sprite_index - 137.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 98.0))
		if ((absf(sprite_index - 140.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 99.0))
		if ((absf(sprite_index - 144.0) < 0.00001)):
			(GM.f_instance_create((x + 5.0), y, 100.0))
	if ((hspeed < 0.0)):
		if ((absf(sprite_index - 91.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 101.0))
		if ((absf(sprite_index - 94.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 102.0))
		if ((absf(sprite_index - 103.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 103.0))
		if ((absf(sprite_index - 107.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 104.0))
		if ((absf(sprite_index - 111.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 105.0))
		if ((absf(sprite_index - 117.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 106.0))
		if ((absf(sprite_index - 121.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 107.0))
		if ((absf(sprite_index - 125.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 108.0))
		if ((absf(sprite_index - 131.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 109.0))
		if ((absf(sprite_index - 136.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 110.0))
		if ((absf(sprite_index - 141.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 111.0))
		if ((absf(sprite_index - 145.0) < 0.00001)):
			(GM.f_instance_create((x - 15.0), y, 112.0))
	if ((absf(v_char - 0.0) < 0.00001)):
		(self.script_screamsscript(15.0))
	if ((absf(v_char - 1.0) < 0.00001)):
		(self.script_screamsscript(16.0))
	if ((absf(v_char - 2.0) < 0.00001)):
		(self.script_screamsscript(12.0))
	if ((absf(v_char - 3.0) < 0.00001)):
		(self.script_screamsscript(1.0))
	if ((absf(v_char - 4.0) < 0.00001)):
		(self.script_screamsscript(7.0))
	if ((absf(v_char - 5.0) < 0.00001)):
		(self.script_screamsscript(13.0))
	if ((absf(v_char - 6.0) < 0.00001)):
		(self.script_screamsscript(10.0))
	if ((absf(v_char - 7.0) < 0.00001)):
		(self.script_screamsscript(9.0))
	if ((absf(v_char - 8.0) < 0.00001)):
		(self.script_screamsscript(11.0))
	if ((absf(v_char - 9.0) < 0.00001)):
		(self.script_screamsscript(17.0))
	if ((absf(v_char - 10.0) < 0.00001)):
		(self.script_screamsscript(14.0))
	if ((absf(v_char - 11.0) < 0.00001)):
		(self.script_screamsscript(8.0))
	(GM.f_instance_destroy(self))
func ev_col_292():
	if (((x < (GM.vb(self.other, "x") + 41.0)))):
		if (((x > (GM.vb(self.other, "x") + 39.0)))):
			if ((((GM.f_random(3.0)) < 1.0))):
				for _w71 in GM.with_list((self.other), self):
					if _w71._dead:
						continue
					_w71.other = self
					(GM.f_instance_create((_w71.x + 0.0), (_w71.y + (-20.0)), 143.0))
				for _w72 in GM.with_list((self.other), self):
					if _w72._dead:
						continue
					_w72.other = self
					(GM.f_instance_create((_w72.x + 0.0), (_w72.y + 0.0), 6.0))
				(GM.f_instance_destroy(self))
func ev_col_279():
	if (((absf((GM.f_instance_number(168.0)) - 0.0) < 0.00001))):
		v_wowzee = 1.0
		(GM.f_instance_create(0.0, 0.0, 168.0))
	if (((absf(v_wowzee - 1.0) < 0.00001))):
		if (((absf(v_alive - 1.0) < 0.00001))):
			if ((hspeed > 0.0)):
				if ((absf(sprite_index - 90.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
				if ((absf(sprite_index - 95.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
				if ((absf(sprite_index - 102.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
				if ((absf(sprite_index - 106.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
				if ((absf(sprite_index - 110.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
				if ((absf(sprite_index - 116.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
				if ((absf(sprite_index - 120.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
				if ((absf(sprite_index - 124.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
				if ((absf(sprite_index - 130.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
				if ((absf(sprite_index - 137.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
				if ((absf(sprite_index - 140.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
				if ((absf(sprite_index - 144.0) < 0.00001)):
					(GM.f_instance_create(x, y, 280.0))
			if ((hspeed < 0.0)):
				if ((absf(sprite_index - 91.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
				if ((absf(sprite_index - 94.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
				if ((absf(sprite_index - 103.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
				if ((absf(sprite_index - 107.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
				if ((absf(sprite_index - 111.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
				if ((absf(sprite_index - 117.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
				if ((absf(sprite_index - 121.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
				if ((absf(sprite_index - 125.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
				if ((absf(sprite_index - 131.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
				if ((absf(sprite_index - 136.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
				if ((absf(sprite_index - 141.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
				if ((absf(sprite_index - 145.0) < 0.00001)):
					(GM.f_instance_create(x, y, 281.0))
			visible = 0.0
			if ((absf(v_char - 0.0) < 0.00001)):
				(self.script_screamsscript(15.0))
			if ((absf(v_char - 1.0) < 0.00001)):
				(self.script_screamsscript(16.0))
			if ((absf(v_char - 2.0) < 0.00001)):
				(self.script_screamsscript(12.0))
			if ((absf(v_char - 3.0) < 0.00001)):
				(self.script_screamsscript(1.0))
			if ((absf(v_char - 4.0) < 0.00001)):
				(self.script_screamsscript(7.0))
			if ((absf(v_char - 5.0) < 0.00001)):
				(self.script_screamsscript(13.0))
			if ((absf(v_char - 6.0) < 0.00001)):
				(self.script_screamsscript(10.0))
			if ((absf(v_char - 7.0) < 0.00001)):
				(self.script_screamsscript(9.0))
			if ((absf(v_char - 8.0) < 0.00001)):
				(self.script_screamsscript(11.0))
			if ((absf(v_char - 9.0) < 0.00001)):
				(self.script_screamsscript(17.0))
			if ((absf(v_char - 10.0) < 0.00001)):
				(self.script_screamsscript(14.0))
			if ((absf(v_char - 11.0) < 0.00001)):
				(self.script_screamsscript(8.0))
			image_single = 1.0
			speed = 0.1
			alarm[int(2.0)] = 20.0
			v_alive = 0.0
func ev_col_166():
	if ((absf(v_char - 0.0) < 0.00001)):
		(self.script_screamsscript(15.0))
	if ((absf(v_char - 1.0) < 0.00001)):
		(self.script_screamsscript(16.0))
	if ((absf(v_char - 2.0) < 0.00001)):
		(self.script_screamsscript(12.0))
	if ((absf(v_char - 3.0) < 0.00001)):
		(self.script_screamsscript(1.0))
	if ((absf(v_char - 4.0) < 0.00001)):
		(self.script_screamsscript(7.0))
	if ((absf(v_char - 5.0) < 0.00001)):
		(self.script_screamsscript(13.0))
	if ((absf(v_char - 6.0) < 0.00001)):
		(self.script_screamsscript(10.0))
	if ((absf(v_char - 7.0) < 0.00001)):
		(self.script_screamsscript(9.0))
	if ((absf(v_char - 8.0) < 0.00001)):
		(self.script_screamsscript(11.0))
	if ((absf(v_char - 9.0) < 0.00001)):
		(self.script_screamsscript(17.0))
	if ((absf(v_char - 10.0) < 0.00001)):
		(self.script_screamsscript(14.0))
	if ((absf(v_char - 11.0) < 0.00001)):
		(self.script_screamsscript(8.0))
	if (((absf((GM.f_instance_number(168.0)) - 0.0) < 0.00001))):
		v_wowzee = 1.0
		(GM.f_instance_create(0.0, 0.0, 168.0))
	if (((absf(v_wowzee - 1.0) < 0.00001))):
		GM.vset(219.0, "v_sawed", GM.vget(219.0, "v_sawed") + 0.5)
		if (((absf(v_whater - 0.0) < 0.00001))):
			if ((((GM.f_instance_number(181.0)) > 0.0))):
				for _w73 in GM.with_list((182.0), self):
					if _w73._dead:
						continue
					_w73.other = self
					(GM.f_instance_destroy(_w73))
				(GM.f_sound_play(44.0))
				for _w74 in GM.with_list((170.0), self):
					if _w74._dead:
						continue
					_w74.other = self
					(GM.f_instance_destroy(_w74))
				for _w75 in GM.with_list((181.0), self):
					if _w75._dead:
						continue
					_w75.other = self
					(GM.f_instance_destroy(_w75))
		(GM.f_sound_play(28.0))
		for _r76 in range(int((4.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 33.0))
		for _r77 in range(int((10.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 46.0))
		image_single = 1.0
		speed = 0.1
		alarm[int(2.0)] = 5.0
		if (((absf(v_alive - 1.0) < 0.00001))):
			alarm[int(3.0)] = 35.0
			v_alive = 0.0
func ev_col_59():
	speed = (7.0 + (GM.f_random(3.0)))
	if (((GM.vb(7.0, "x") > x) and (hspeed > 0.0))):
		if ((absf(sprite_index - 90.0) < 0.00001)):
			sprite_index = 91.0
		if ((absf(sprite_index - 95.0) < 0.00001)):
			sprite_index = 94.0
		if ((absf(sprite_index - 102.0) < 0.00001)):
			sprite_index = 103.0
		if ((absf(sprite_index - 106.0) < 0.00001)):
			sprite_index = 107.0
		if ((absf(sprite_index - 110.0) < 0.00001)):
			sprite_index = 111.0
		if ((absf(sprite_index - 116.0) < 0.00001)):
			sprite_index = 117.0
		if ((absf(sprite_index - 120.0) < 0.00001)):
			sprite_index = 121.0
		if ((absf(sprite_index - 124.0) < 0.00001)):
			sprite_index = 125.0
		if ((absf(sprite_index - 130.0) < 0.00001)):
			sprite_index = 131.0
		if ((absf(sprite_index - 137.0) < 0.00001)):
			sprite_index = 136.0
		if ((absf(sprite_index - 140.0) < 0.00001)):
			sprite_index = 141.0
		if ((absf(sprite_index - 144.0) < 0.00001)):
			sprite_index = 145.0
		hspeed = (-hspeed)
	if (((GM.vb(7.0, "x") < x) and (hspeed < 0.0))):
		if ((absf(sprite_index - 91.0) < 0.00001)):
			sprite_index = 90.0
		if ((absf(sprite_index - 94.0) < 0.00001)):
			sprite_index = 95.0
		if ((absf(sprite_index - 103.0) < 0.00001)):
			sprite_index = 102.0
		if ((absf(sprite_index - 107.0) < 0.00001)):
			sprite_index = 106.0
		if ((absf(sprite_index - 111.0) < 0.00001)):
			sprite_index = 110.0
		if ((absf(sprite_index - 117.0) < 0.00001)):
			sprite_index = 116.0
		if ((absf(sprite_index - 121.0) < 0.00001)):
			sprite_index = 120.0
		if ((absf(sprite_index - 125.0) < 0.00001)):
			sprite_index = 124.0
		if ((absf(sprite_index - 131.0) < 0.00001)):
			sprite_index = 130.0
		if ((absf(sprite_index - 136.0) < 0.00001)):
			sprite_index = 137.0
		if ((absf(sprite_index - 141.0) < 0.00001)):
			sprite_index = 140.0
		if ((absf(sprite_index - 145.0) < 0.00001)):
			sprite_index = 144.0
		hspeed = (-hspeed)
	alarm[int(0.0)] = 50.0
func ev_col_53():
	if ((absf(v_char - 0.0) < 0.00001)):
		(self.script_screamsscript(15.0))
	if ((absf(v_char - 1.0) < 0.00001)):
		(self.script_screamsscript(16.0))
	if ((absf(v_char - 2.0) < 0.00001)):
		(self.script_screamsscript(12.0))
	if ((absf(v_char - 3.0) < 0.00001)):
		(self.script_screamsscript(1.0))
	if ((absf(v_char - 4.0) < 0.00001)):
		(self.script_screamsscript(7.0))
	if ((absf(v_char - 5.0) < 0.00001)):
		(self.script_screamsscript(13.0))
	if ((absf(v_char - 6.0) < 0.00001)):
		(self.script_screamsscript(10.0))
	if ((absf(v_char - 7.0) < 0.00001)):
		(self.script_screamsscript(9.0))
	if ((absf(v_char - 8.0) < 0.00001)):
		(self.script_screamsscript(11.0))
	if ((absf(v_char - 9.0) < 0.00001)):
		(self.script_screamsscript(17.0))
	if ((absf(v_char - 10.0) < 0.00001)):
		(self.script_screamsscript(14.0))
	if ((absf(v_char - 11.0) < 0.00001)):
		(self.script_screamsscript(8.0))
	if (((hspeed > 0.0))):
		for _r78 in range(int((35.0))):
			for _w79 in GM.with_list((self.other), self):
				if _w79._dead:
					continue
				_w79.other = self
				(GM.f_instance_create((_w79.x + 0.0), (_w79.y + 0.0), 35.0))
	else:
		for _r80 in range(int((35.0))):
			for _w81 in GM.with_list((self.other), self):
				if _w81._dead:
					continue
				_w81.other = self
				(GM.f_instance_create((_w81.x + 0.0), (_w81.y + 0.0), 48.0))
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		if (((absf(v_whater - 0.0) < 0.00001))):
			if ((((GM.f_instance_number(181.0)) > 0.0))):
				for _w82 in GM.with_list((182.0), self):
					if _w82._dead:
						continue
					_w82.other = self
					(GM.f_instance_destroy(_w82))
				(GM.f_sound_play(44.0))
				for _w83 in GM.with_list((170.0), self):
					if _w83._dead:
						continue
					_w83.other = self
					(GM.f_instance_destroy(_w83))
				for _w84 in GM.with_list((181.0), self):
					if _w84._dead:
						continue
					_w84.other = self
					(GM.f_instance_destroy(_w84))
			else:
				(self.script_adddamage())
		GM.G["deaths"] = GM.G["deaths"] + 1.0
		if ((hspeed > 0.0)):
			if ((absf(sprite_index - 90.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 89.0))
			if ((absf(sprite_index - 95.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 90.0))
			if ((absf(sprite_index - 102.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 91.0))
			if ((absf(sprite_index - 106.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 92.0))
			if ((absf(sprite_index - 110.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 93.0))
			if ((absf(sprite_index - 116.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 94.0))
			if ((absf(sprite_index - 120.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 95.0))
			if ((absf(sprite_index - 124.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 96.0))
			if ((absf(sprite_index - 130.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 97.0))
			if ((absf(sprite_index - 137.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 98.0))
			if ((absf(sprite_index - 140.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 99.0))
			if ((absf(sprite_index - 144.0) < 0.00001)):
				(GM.f_instance_create((x + 5.0), y, 100.0))
		if ((hspeed < 0.0)):
			if ((absf(sprite_index - 91.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 101.0))
			if ((absf(sprite_index - 94.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 102.0))
			if ((absf(sprite_index - 103.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 103.0))
			if ((absf(sprite_index - 107.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 104.0))
			if ((absf(sprite_index - 111.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 105.0))
			if ((absf(sprite_index - 117.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 106.0))
			if ((absf(sprite_index - 121.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 107.0))
			if ((absf(sprite_index - 125.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 108.0))
			if ((absf(sprite_index - 131.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 109.0))
			if ((absf(sprite_index - 136.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 110.0))
			if ((absf(sprite_index - 141.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 111.0))
			if ((absf(sprite_index - 145.0) < 0.00001)):
				(GM.f_instance_create((x - 15.0), y, 112.0))
		(GM.f_instance_destroy(self))
func ev_col_14():
	if ((((GM.f_instance_number(136.0)) < 2.0))):
		if ((((GM.f_distance_to_point(self, (GM.vb(self.other, "x") + (GM.vb(self.other, "sprite_width") / 2.0)), (GM.vb(self.other, "y") + (GM.vb(self.other, "sprite_width") / 2.0)))) < 100.0))):
			if (((absf(v_whater - 0.0) < 0.00001))):
				if ((((GM.f_instance_number(181.0)) > 0.0))):
					for _w85 in GM.with_list((182.0), self):
						if _w85._dead:
							continue
						_w85.other = self
						(GM.f_instance_destroy(_w85))
					(GM.f_sound_play(44.0))
					for _w86 in GM.with_list((170.0), self):
						if _w86._dead:
							continue
						_w86.other = self
						(GM.f_instance_destroy(_w86))
					for _w87 in GM.with_list((181.0), self):
						if _w87._dead:
							continue
						_w87.other = self
						(GM.f_instance_destroy(_w87))
			(GM.f_instance_create(0.0, 0.0, 136.0))
			(self.script_adddamage())
			(GM.f_sound_play(43.0))
			for _r88 in range(int((2.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 372.0))
			for _r89 in range(int((50.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random((sprite_height - 10.0)))), 33.0))
			for _r90 in range(int((25.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random((sprite_height - 10.0)))), 46.0))
			(GM.f_instance_create((x + 0.0), (y + 0.0), 137.0))
			(GM.f_instance_destroy(self))
func ev_col_3():
	if (((x < (GM.vb(self.other, "x") + 41.0)))):
		if (((x > (GM.vb(self.other, "x") + 39.0)))):
			if ((((GM.f_random(3.0)) < 1.0))):
				for _w91 in GM.with_list((self.other), self):
					if _w91._dead:
						continue
					_w91.other = self
					(GM.f_instance_create((_w91.x + 40.0), (_w91.y + 20.0), 143.0))
				for _w92 in GM.with_list((self.other), self):
					if _w92._dead:
						continue
					_w92.other = self
					(GM.f_instance_create((_w92.x + 40.0), (_w92.y + 40.0), 6.0))
				(GM.f_instance_destroy(self))
func ev_other_4():
	x = (GM.f_random((GM.room_width - 80.0)))
func ev_other_0():
	if (((GM.G["damage"] > 87.5))):
		(GM.f_instance_destroy(self))
	if ((((GM.f_instance_number(66.0)) > 30.0))):
		(GM.f_instance_destroy(self))
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
