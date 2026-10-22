extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_drawtext = ""
var v_saysound = 0.0
var v_wow = 0.0
func ev_create():
	v_drawtext = "I rigged up this awesome weapon that will allow you to hold any object in the air and allow you to carry them around.  See if you can go snag one of those flying cars out of the air and bring it back to me.  Get it all still as possible while it is touching me.  I'll give you 300 bucks!"
	v_saysound = 1.0
	image_speed = 0.16
func ev_destroy():
	GM.G["donemissions"] = GM.G["donemissions"] + 1.0
func ev_alarm_1():
	v_saysound = 1.0
func ev_col_770():
	if (((GM.f_instance_number(1040.0)) > 0.0)):
		if ((GM.vb(self.other, "speed") < 2.0)):
			for _w688 in GM.with_list((self.other), self):
				if _w688._dead:
					continue
				_w688.other = self
				(GM.f_instance_destroy(_w688))
			GM.G["j4var11"] = GM.G["j4var11"] + 300.0
			(GM.f_sound_play(224.0))
			for _w689 in GM.with_list((680.0), self):
				if _w689._dead:
					continue
				_w689.other = self
				_w689.ev_user(0.0)
			(GM.f_instance_create(x, y, 1034.0))
			(GM.f_instance_destroy(self))
func ev_col_7():
	if (((absf((GM.f_instance_number(774.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(680.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(x, y, 774.0))
	if ((absf(v_saysound - 1.0) < 0.00001)):
		(GM.f_sound_play(163.0))
	alarm[int(1.0)] = 2.0
	v_saysound = 0.0
func ev_keypress_13():
	if ((absf((GM.f_instance_number(680.0)) - 0.0) < 0.00001)):
		if (((GM.f_place_meeting(self, x, y, 7.0)))) >= 0.5:
			v_wow = (GM.f_instance_create(x, GM.room_height, 777.0))
			GM.vset(v_wow, "v_mission", 22.0)
			GM.vset(v_wow, "v_drawtext", v_drawtext)
