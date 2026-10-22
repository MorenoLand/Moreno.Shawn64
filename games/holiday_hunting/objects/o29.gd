extends "res://games/holiday_hunting/scripts.gd"
var v_image_single = 0.0
var v_what = 0.0
var v_who = 0.0
func ev_create():
	if (((GM.f_place_meeting(self, x, y, 29.0)))) >= 0.5:
		(GM.f_instance_destroy(self))
	v_what = (GM.f_round((GM.f_random(2.0))))
	if (GM.eq(v_what, 0.0)):
		depth = 10.0
		hspeed = 5.0
		v_image_single = 0.0
		y = 320.0
	if (GM.eq(v_what, 1.0)):
		depth = 25.0
		hspeed = 3.0
		v_image_single = 1.0
		y = 240.0
	if (GM.eq(v_what, 2.0)):
		depth = 45.0
		hspeed = 1.0
		v_image_single = 2.0
		y = 160.0
func ev_col_29():
	(GM.f_instance_destroy(self))
func ev_mouse_4():
	if (not ((((GM.f_sound_isplaying(0.0)))) >= 0.5)):
		(GM.f_sound_play(6.0))
		if ((GM.G["combotime"] > 0.0)):
			GM.G["combototal"] = GM.G["combototal"] + 1.0
		if ((absf(v_image_single - 0.0) < 0.00001)):
			(self.script_add100p())
			GM.G["currentscore"] = GM.G["currentscore"] + 100.0
		if ((absf(v_image_single - 1.0) < 0.00001)):
			(self.script_add200p())
			GM.G["currentscore"] = GM.G["currentscore"] + 200.0
		if ((absf(v_image_single - 2.0) < 0.00001)):
			(self.script_add300p())
			GM.G["currentscore"] = GM.G["currentscore"] + 300.0
		GM.G["combotime"] = 100.0
		for _r10 in range(int((50.0))):
			v_who = (GM.f_instance_create((x + (GM.f_random((sprite_width - 10.0)))), (y + (GM.f_random((sprite_height - 10.0)))), 34.0))
			GM.vsetb(v_who, "direction", (GM.f_random(180.0)))
			if ((absf(v_image_single - 0.0) < 0.00001)):
				GM.vsetb(v_who, "speed", (GM.f_random(15.0)))
				GM.vsetb(v_who, "sprite_index", 48.0)
			if ((absf(v_image_single - 1.0) < 0.00001)):
				GM.vsetb(v_who, "speed", (GM.f_random(10.0)))
				GM.vsetb(v_who, "sprite_index", 49.0)
			if ((absf(v_image_single - 2.0) < 0.00001)):
				GM.vsetb(v_who, "speed", (GM.f_random(5.0)))
				GM.vsetb(v_who, "sprite_index", 50.0)
			GM.vsetb(v_who, "hspeed", GM.vb(v_who, "hspeed") + hspeed)
			GM.vsetb(v_who, "vspeed", GM.vb(v_who, "vspeed") + vspeed)
		if ((absf(v_image_single - 0.0) < 0.00001)):
			(GM.f_sound_volume(8.0, 1.0))
		if ((absf(v_image_single - 1.0) < 0.00001)):
			(GM.f_sound_volume(8.0, 0.95))
		if ((absf(v_image_single - 2.0) < 0.00001)):
			(GM.f_sound_volume(8.0, 0.9))
		(GM.f_sound_play(8.0))
		(GM.f_instance_destroy(self))
func ev_other_0():
	if (((x > GM.room_width))):
		(GM.f_instance_destroy(self))
