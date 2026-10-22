extends "res://games/holiday_hunting/scripts.gd"
var v_image_scale = 0.0
var v_who = 0.0
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_round((GM.f_random(5.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		sprite_index = 18.0
		v_image_scale = 1.0
		hspeed = 15.0
		y = 255.0
		depth = 15.0
		x = ((-sprite_width) - 800.0)
	if ((absf(v_wow - 1.0) < 0.00001)):
		sprite_index = 19.0
		v_image_scale = 0.6
		hspeed = 10.0
		y = 200.0
		depth = 30.0
		x = ((-sprite_width) - 800.0)
	if ((absf(v_wow - 2.0) < 0.00001)):
		sprite_index = 20.0
		v_image_scale = 0.2
		hspeed = 5.0
		y = 200.0
		depth = 50.0
		x = ((-sprite_width) - 800.0)
	if ((absf(v_wow - 3.0) < 0.00001)):
		sprite_index = 21.0
		v_image_scale = 1.0
		hspeed = (-10.0)
		y = 255.0
		depth = 15.0
		x = (GM.room_width + 800.0)
	if ((absf(v_wow - 4.0) < 0.00001)):
		sprite_index = 22.0
		v_image_scale = 0.6
		hspeed = (-7.0)
		y = 200.0
		depth = 30.0
		x = (GM.room_width + 800.0)
	if ((absf(v_wow - 5.0) < 0.00001)):
		sprite_index = 23.0
		v_image_scale = 0.2
		hspeed = (-4.0)
		y = 200.0
		depth = 50.0
		x = (GM.room_width + 800.0)
func ev_col_20():
	if (((absf(GM.vb(self.other, "direction") - direction) < 0.00001))):
		if (((absf(GM.vb(self.other, "speed") - speed) < 0.00001))):
			(GM.f_instance_destroy(self))
func ev_mouse_4():
	if (not ((((GM.f_sound_isplaying(0.0)))) >= 0.5)):
		(GM.f_sound_play(22.0))
		(GM.f_sound_play(6.0))
		if ((absf(v_image_scale - 1.0) < 0.00001)):
			(self.script_add100p())
		if ((absf(v_image_scale - 0.6) < 0.00001)):
			(self.script_add200p())
		if ((absf(v_image_scale - 0.2) < 0.00001)):
			(self.script_add300p())
		for _r5 in range(int((100.0))):
			if ((absf(v_image_scale - 1.0) < 0.00001)):
				v_who = (GM.f_instance_create((x + (GM.f_random((sprite_width - 10.0)))), (y + (GM.f_random((sprite_height - 10.0)))), 35.0))
				GM.vsetb(v_who, "speed", (GM.f_random(10.0)))
				GM.vsetb(v_who, "sprite_index", 51.0)
			if ((absf(v_image_scale - 0.6) < 0.00001)):
				v_who = (GM.f_instance_create((x + (GM.f_random((sprite_width - 10.0)))), (y + (GM.f_random((sprite_height - 10.0)))), 35.0))
				GM.vsetb(v_who, "speed", (GM.f_random(7.0)))
				GM.vsetb(v_who, "sprite_index", 52.0)
			if ((absf(v_image_scale - 0.2) < 0.00001)):
				v_who = (GM.f_instance_create((x + (GM.f_random((sprite_width - 10.0)))), (y + (GM.f_random((sprite_height - 10.0)))), 35.0))
				GM.vsetb(v_who, "speed", (GM.f_random(4.0)))
				GM.vsetb(v_who, "sprite_index", 53.0)
			GM.vsetb(v_who, "direction", (GM.f_random(180.0)))
			GM.vsetb(v_who, "hspeed", GM.vb(v_who, "hspeed") + hspeed)
			GM.vsetb(v_who, "vspeed", GM.vb(v_who, "vspeed") + vspeed)
		if ((GM.G["combotime"] > 0.0)):
			GM.G["combototal"] = GM.G["combototal"] + 1.0
		if ((absf(v_image_scale - 1.0) < 0.00001)):
			GM.G["currentscore"] = GM.G["currentscore"] + 100.0
		if ((absf(v_image_scale - 0.6) < 0.00001)):
			GM.G["currentscore"] = GM.G["currentscore"] + 200.0
		if ((absf(v_image_scale - 0.2) < 0.00001)):
			GM.G["currentscore"] = GM.G["currentscore"] + 300.0
		GM.G["combotime"] = 100.0
		(GM.f_instance_destroy(self))
func ev_other_0():
	if ((((x > GM.room_width) and (hspeed > 0.0)))):
		(GM.f_instance_destroy(self))
	if ((((x < (-sprite_width)) and (hspeed < 0.0)))):
		(GM.f_instance_destroy(self))
