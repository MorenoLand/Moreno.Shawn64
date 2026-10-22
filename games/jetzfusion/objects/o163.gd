extends "res://games/jetzfusion/scripts.gd"
var v_aend = 0.0
var v_foooo = 0.0
var v_girl = 0.0
var v_pow = 0.0
var v_what = 0.0
func ev_create():
	v_what = (GM.f_round((GM.f_random(4.0))))
	v_girl = 0.0
	if ((absf(v_what - 0.0) < 0.00001)):
		sprite_index = 98.0
		v_girl = 1.0
	if ((absf(v_what - 1.0) < 0.00001)):
		sprite_index = 104.0
	if ((absf(v_what - 2.0) < 0.00001)):
		sprite_index = 114.0
	if ((absf(v_what - 3.0) < 0.00001)):
		sprite_index = 128.0
	if ((absf(v_what - 4.0) < 0.00001)):
		sprite_index = 134.0
	alarm[int(0.0)] = (1.0 + (GM.f_random(200.0)))
	v_aend = 0.0
func ev_alarm_0():
	self.ev_user(0.0)
func ev_col_53():
	if (((absf(vspeed - 0.0) < 0.00001))):
		if (((hspeed > 0.0))):
			for _r159 in range(int((35.0))):
				for _w160 in GM.with_list((self.other), self):
					if _w160._dead:
						continue
					_w160.other = self
					(GM.f_instance_create((_w160.x + 0.0), (_w160.y + 0.0), 35.0))
		else:
			for _r161 in range(int((35.0))):
				for _w162 in GM.with_list((self.other), self):
					if _w162._dead:
						continue
					_w162.other = self
					(GM.f_instance_create((_w162.x + 0.0), (_w162.y + 0.0), 48.0))
		self.ev_user(0.0)
func ev_col_45():
	(GM.f_sound_play(43.0))
	for _r163 in range(int((75.0))):
		(GM.f_instance_create((x + (GM.f_random(38.0))), ((y + 32.0) + (GM.f_random(20.0))), 31.0))
	(self.script_adddamage(0.0, 0.0, 0.0, 0.0, 0.0))
	if ((absf(sprite_index - 99.0) < 0.00001)):
		(GM.f_instance_create(x, y, 233.0))
	if ((absf(sprite_index - 105.0) < 0.00001)):
		(GM.f_instance_create(x, y, 234.0))
	if ((absf(sprite_index - 115.0) < 0.00001)):
		(GM.f_instance_create(x, y, 235.0))
	if ((absf(sprite_index - 129.0) < 0.00001)):
		(GM.f_instance_create(x, y, 236.0))
	if ((absf(sprite_index - 135.0) < 0.00001)):
		(GM.f_instance_create(x, y, 237.0))
	(GM.f_instance_destroy(self))
func ev_col_7():
	if (((absf((GM.f_instance_number(425.0)) - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(426.0)) - 0.0) < 0.00001))):
			if ((absf(v_girl - 1.0) < 0.00001)):
				v_pow = (GM.f_round((GM.f_random(1.0))))
				if ((absf(v_pow - 0.0) < 0.00001)):
					(self.script_screamsscript(15.0))
				if ((absf(v_pow - 1.0) < 0.00001)):
					(self.script_screamsscript(16.0))
			if ((absf(v_girl - 0.0) < 0.00001)):
				v_pow = (GM.f_round((GM.f_random(9.0))))
				if ((absf(v_pow - 0.0) < 0.00001)):
					(self.script_screamsscript(12.0))
				if ((absf(v_pow - 1.0) < 0.00001)):
					(self.script_screamsscript(1.0))
				if ((absf(v_pow - 2.0) < 0.00001)):
					(self.script_screamsscript(7.0))
				if ((absf(v_pow - 3.0) < 0.00001)):
					(self.script_screamsscript(13.0))
				if ((absf(v_pow - 4.0) < 0.00001)):
					(self.script_screamsscript(10.0))
				if ((absf(v_pow - 5.0) < 0.00001)):
					(self.script_screamsscript(9.0))
				if ((absf(v_pow - 6.0) < 0.00001)):
					(self.script_screamsscript(11.0))
				if ((absf(v_pow - 7.0) < 0.00001)):
					(self.script_screamsscript(17.0))
				if ((absf(v_pow - 8.0) < 0.00001)):
					(self.script_screamsscript(14.0))
				if ((absf(v_pow - 9.0) < 0.00001)):
					(self.script_screamsscript(8.0))
			v_foooo = (GM.f_instance_create(0.0, 0.0, 426.0))
			GM.vset(v_foooo, "v_what", v_what)
			(GM.f_instance_destroy(self))
func ev_other_10():
	gravity_direction = 270.0
	gravity = 0.5
	(self.script_adddamage())
	if ((absf(v_girl - 1.0) < 0.00001)):
		v_pow = (GM.f_round((GM.f_random(1.0))))
		if ((absf(v_pow - 0.0) < 0.00001)):
			(self.script_screamsscript(15.0))
		if ((absf(v_pow - 1.0) < 0.00001)):
			(self.script_screamsscript(16.0))
	if ((absf(v_girl - 0.0) < 0.00001)):
		v_pow = (GM.f_round((GM.f_random(9.0))))
		if ((absf(v_pow - 0.0) < 0.00001)):
			(self.script_screamsscript(12.0))
		if ((absf(v_pow - 1.0) < 0.00001)):
			(self.script_screamsscript(1.0))
		if ((absf(v_pow - 2.0) < 0.00001)):
			(self.script_screamsscript(7.0))
		if ((absf(v_pow - 3.0) < 0.00001)):
			(self.script_screamsscript(13.0))
		if ((absf(v_pow - 4.0) < 0.00001)):
			(self.script_screamsscript(10.0))
		if ((absf(v_pow - 5.0) < 0.00001)):
			(self.script_screamsscript(9.0))
		if ((absf(v_pow - 6.0) < 0.00001)):
			(self.script_screamsscript(11.0))
		if ((absf(v_pow - 7.0) < 0.00001)):
			(self.script_screamsscript(17.0))
		if ((absf(v_pow - 8.0) < 0.00001)):
			(self.script_screamsscript(14.0))
		if ((absf(v_pow - 9.0) < 0.00001)):
			(self.script_screamsscript(8.0))
	if ((absf(sprite_index - 98.0) < 0.00001)):
		sprite_index = 99.0
	if ((absf(sprite_index - 104.0) < 0.00001)):
		sprite_index = 105.0
	if ((absf(sprite_index - 114.0) < 0.00001)):
		sprite_index = 115.0
	if ((absf(sprite_index - 128.0) < 0.00001)):
		sprite_index = 129.0
	if ((absf(sprite_index - 134.0) < 0.00001)):
		sprite_index = 135.0
