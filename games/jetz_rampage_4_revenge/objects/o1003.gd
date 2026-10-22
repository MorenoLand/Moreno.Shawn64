extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_speach = ""
var v_wee = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_floor((GM.f_random(1.999))))
	if (GM.eq(v_wow, 0.0)):
		sprite_index = 997.0
		direction = 0.0
	if (GM.eq(v_wow, 1.0)):
		sprite_index = 998.0
		direction = 180.0
	if (((GM.f_instance_number(1005.0)) > 0.0)):
		speed = (8.0 + (GM.f_random(12.0)))
	else:
		speed = (4.0 + (GM.f_random(10.0)))
	gravity = 0.4
	gravity_direction = 270.0
	v_speach = ""
	alarm[int(0.0)] = (5.0 + (GM.f_random(15.0)))
func ev_alarm_0():
	v_wow = (GM.f_floor((GM.f_random(8.999))))
	if (GM.eq(v_wow, 0.0)):
		v_speach = "L33T"
	if (GM.eq(v_wow, 1.0)):
		v_speach = "OMG OMG!!!111"
	if (GM.eq(v_wow, 2.0)):
		v_speach = "LIEK WTF!1"
	if (GM.eq(v_wow, 3.0)):
		v_speach = "DOOD OMG"
	if (GM.eq(v_wow, 4.0)):
		v_speach = "LOLLLOL!!11"
	if (GM.eq(v_wow, 5.0)):
		v_speach = "IM ADAM!!!1"
	if (GM.eq(v_wow, 6.0)):
		v_speach = "LMFAO NUB!"
	if (GM.eq(v_wow, 7.0)):
		v_speach = "WTF OMG"
	if (GM.eq(v_wow, 8.0)):
		v_speach = "OMG WTF"
	alarm[int(0.0)] = (5.0 + (GM.f_random(15.0)))
func ev_step():
	if ((absf(vspeed - 0.0) < 0.00001)):
		v_wow = (GM.f_floor((GM.f_random(55.999))))
		if (GM.eq(v_wow, 0.0)):
			if (((GM.f_instance_number(1005.0)) > 0.0)):
				vspeed = ((-10.0) - (GM.f_random(25.0)))
			else:
				vspeed = ((-5.0) - (GM.f_random(15.0)))
			if (((self.script_view_check(self)))) >= 0.5:
				(GM.f_sound_play(220.0))
func ev_col_864():
	if (((vspeed > 0.0) and (y < ((GM.vb(self.other, "y") - sprite_height) + 20.0)))):
		vspeed = 0.0
		y = ((GM.vb(self.other, "y") + 150.0) - 52.0)
func ev_col_656():
	self.ev_user(0.0)
func ev_col_528():
	if ((vspeed > 0.0)):
		vspeed = 0.0
		y = ((GM.vb(self.other, "y") + 110.0) - 52.0)
func ev_col_502():
	self.ev_user(0.0)
func ev_col_489():
	vspeed = 0.0
func ev_other_10():
	for _r666 in range(int((25.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random((sprite_width - 2.0)))), (y + (GM.f_random((sprite_height - 2.0)))), 662.0))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		for _w667 in GM.with_list((v_wee), self):
			if _w667._dead:
				continue
			_w667.other = self
			(GM.f_motion_add(_w667, (GM.f_random(360.0)), (2.0 + (GM.f_random(15.0)))))
	for _r668 in range(int((45.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random((sprite_width - 2.0)))), (y + (GM.f_random((sprite_height - 2.0)))), 664.0))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		for _w669 in GM.with_list((v_wee), self):
			if _w669._dead:
				continue
			_w669.other = self
			(GM.f_motion_add(_w669, (GM.f_random(360.0)), (2.0 + (GM.f_random(15.0)))))
	for _r670 in range(int((15.0))):
		v_wee = (GM.f_instance_create((x + (GM.f_random((sprite_width - 2.0)))), (y + (GM.f_random((sprite_height - 2.0)))), 978.0))
		GM.vset(v_wee, "v_yyy", GM.room_height)
		for _w671 in GM.with_list((v_wee), self):
			if _w671._dead:
				continue
			_w671.other = self
			(GM.f_motion_add(_w671, (GM.f_random(360.0)), (2.0 + (GM.f_random(15.0)))))
	(GM.f_sound_play(190.0))
	(GM.f_instance_destroy(self))
	if (((GM.f_instance_number(1003.0)) <= 5.0)):
		if (((GM.f_instance_number(1005.0)) > 0.0)):
			for _w672 in GM.with_list((1005.0), self):
				if _w672._dead:
					continue
				_w672.other = self
				(GM.f_instance_destroy(_w672))
			GM.G["j4var11"] = GM.G["j4var11"] + 400.0
		if (((GM.f_instance_number(1004.0)) > 0.0)):
			for _w673 in GM.with_list((1004.0), self):
				if _w673._dead:
					continue
				_w673.other = self
				(GM.f_instance_create(_w673.x, _w673.y, 1005.0))
				(GM.f_instance_destroy(_w673))
			GM.G["j4var11"] = GM.G["j4var11"] + 300.0
		(GM.f_sound_play(224.0))
		for _w674 in GM.with_list((680.0), self):
			if _w674._dead:
				continue
			_w674.other = self
			_w674.ev_user(0.0)
func ev_other_0():
	if ((y > 200.0)):
		y = y - 20.0
	(self.script_Outside_Wrap())
