extends "res://games/holiday_hunting/scripts.gd"
var v_image_single = 0.0
var v_weee = 0.0
var v_who = 0.0
var v_whoo = 0.0
var v_wow = 0.0
func ev_create():
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_sound_play(14.0))
	if (((GM.f_place_meeting(self, x, y, 32.0)))) >= 0.5:
		(GM.f_instance_destroy(self))
	v_wow = (GM.f_round((GM.f_random(2.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		x = (GM.f_random((GM.room_width - sprite_width)))
		y = 320.0
		depth = 7.0
		hspeed = 5.5
		sprite_index = 44.0
	if ((absf(v_wow - 1.0) < 0.00001)):
		x = (GM.f_random((GM.room_width - sprite_width)))
		y = 240.0
		depth = 23.0
		hspeed = 3.3
		sprite_index = 46.0
	if ((absf(v_wow - 2.0) < 0.00001)):
		x = (GM.f_random((GM.room_width - sprite_width)))
		y = 160.0
		depth = 43.0
		hspeed = 2.2
		sprite_index = 47.0
	(GM.f_sound_play(1.0))
func ev_mouse_4():
	if (not ((((GM.f_sound_isplaying(0.0)))) >= 0.5)):
		(GM.f_sound_play(6.0))
		for _r12 in range(int((100.0))):
			if ((absf(sprite_index - 44.0) < 0.00001)):
				(self.script_add100p())
				v_who = (GM.f_instance_create((x + (GM.f_random((sprite_width - 10.0)))), (y + (GM.f_random((sprite_height - 10.0)))), 35.0))
				GM.vsetb(v_who, "speed", (GM.f_random(10.0)))
				GM.vsetb(v_who, "sprite_index", 51.0)
			if ((absf(sprite_index - 46.0) < 0.00001)):
				(self.script_add200p())
				v_who = (GM.f_instance_create(((x + 16.0) + (GM.f_random(37.0))), ((y + 38.0) + (GM.f_random(43.0))), 35.0))
				GM.vsetb(v_who, "speed", (GM.f_random(7.0)))
				GM.vsetb(v_who, "sprite_index", 52.0)
			if ((absf(sprite_index - 47.0) < 0.00001)):
				(self.script_add300p())
				v_who = (GM.f_instance_create(((x + 28.0) + (GM.f_random(13.0))), ((y + 65.0) + (GM.f_random(16.0))), 35.0))
				GM.vsetb(v_who, "speed", (GM.f_random(4.0)))
				GM.vsetb(v_who, "sprite_index", 53.0)
			GM.vsetb(v_who, "direction", (GM.f_random(180.0)))
			GM.vsetb(v_who, "hspeed", GM.vb(v_who, "hspeed") + hspeed)
			GM.vsetb(v_who, "vspeed", GM.vb(v_who, "vspeed") + vspeed)
		if ((GM.G["combotime"] > 0.0)):
			GM.G["combototal"] = GM.G["combototal"] + 1.0
		if ((absf(v_image_single - 0.0) < 0.00001)):
			(GM.f_sound_volume(9.0, 1.0))
			(GM.f_sound_volume(11.0, 1.0))
			(GM.f_sound_volume(12.0, 1.0))
			(GM.f_sound_volume(13.0, 1.0))
			GM.G["currentscore"] = GM.G["currentscore"] + 100.0
		if ((absf(v_image_single - 1.0) < 0.00001)):
			(GM.f_sound_volume(9.0, 0.9))
			(GM.f_sound_volume(11.0, 0.9))
			(GM.f_sound_volume(12.0, 0.9))
			(GM.f_sound_volume(13.0, 0.9))
			GM.G["currentscore"] = GM.G["currentscore"] + 200.0
		if ((absf(v_image_single - 2.0) < 0.00001)):
			(GM.f_sound_volume(9.0, 0.8))
			(GM.f_sound_volume(11.0, 0.8))
			(GM.f_sound_volume(12.0, 0.8))
			(GM.f_sound_volume(13.0, 0.8))
			GM.G["currentscore"] = GM.G["currentscore"] + 300.0
		GM.G["combotime"] = 100.0
		v_whoo = (GM.f_round((GM.f_random(3.0))))
		if ((absf(v_whoo - 0.0) < 0.00001)):
			(GM.f_sound_play(9.0))
		if ((absf(v_whoo - 1.0) < 0.00001)):
			(GM.f_sound_play(11.0))
		if ((absf(v_whoo - 2.0) < 0.00001)):
			(GM.f_sound_play(12.0))
		if ((absf(v_whoo - 3.0) < 0.00001)):
			(GM.f_sound_play(13.0))
		(GM.f_instance_destroy(self))
func ev_other_7():
	for _r13 in range(int((60.0))):
		v_weee = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + sprite_height), 33.0))
		GM.vsetb(v_weee, "hspeed", GM.vb(v_weee, "hspeed") + hspeed)
		GM.vsetb(v_weee, "vspeed", GM.vb(v_weee, "vspeed") + vspeed)
	v_image_single = (image_number - 1.0)
func ev_other_0():
	if (((x > GM.room_width))):
		(GM.f_instance_destroy(self))
