extends "res://gm/gm_inst.gd"
func script_Outside_Wrap(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((x < 0.0) and (hspeed < 0.0))):
		x = (GM.room_width + sprite_xoffset)
	if (((x > GM.room_width) and (hspeed > 0.0))):
		x = ((-sprite_width) + sprite_xoffset)
	if (((y < 0.0) and (vspeed < 0.0))):
		y = (GM.room_height + sprite_yoffset)
	if (((y > GM.room_height) and (vspeed > 0.0))):
		y = ((-sprite_height) + sprite_yoffset)
	return 0.0
func script_view_check(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if not (((GM.f_instance_exists(argument0))) >= 0.5):
		return 0.0
	else:
		if ((((GM.vb(argument0, "bbox_right") > GM.aget(GM.vget(self, "v_view_left"), 0.0)) and (GM.vb(argument0, "x") < GM.add(GM.aget(GM.vget(self, "v_view_left"), 0.0), GM.aget(GM.vget(self, "v_view_width"), 0.0)))) and (GM.vb(argument0, "bbox_bottom") > GM.aget(GM.vget(self, "v_view_top"), 0.0))) and (GM.vb(argument0, "y") < GM.add(GM.aget(GM.vget(self, "v_view_top"), 0.0), GM.aget(GM.vget(self, "v_view_height"), 0.0)))):
			return 1.0
		else:
			return 0.0
	return 0.0
func script_adddamage(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.G["warning"] + 0.3) < 100.0)):
		GM.G["warning"] = GM.G["warning"] + 0.3
	else:
		GM.G["warning"] = 100.0
	if (((GM.G["warning"] > 5.0) and (absf(GM.G["saylevel"] - 0.0) < 0.00001))):
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 10.0) and (absf(GM.G["saylevel"] - 1.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Disturbance detected")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 1.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 15.0) and (absf(GM.G["saylevel"] - 2.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Stay on the lookout!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 1.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 20.0) and (absf(GM.G["saylevel"] - 3.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Attack on sight!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 1.0)
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Move in!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 2.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 25.0) and (absf(GM.G["saylevel"] - 4.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Why won't this guy die?")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 2.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 30.0) and (absf(GM.G["saylevel"] - 5.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Lower it to 1 Shotgun Trooper")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 2.0)
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Attack him from the air!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 3.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 35.0) and (absf(GM.G["saylevel"] - 6.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Holy Shit!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 3.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 40.0) and (absf(GM.G["saylevel"] - 7.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Keep attacking him!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 3.0)
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Lets tear this guy up!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 4.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 45.0) and (absf(GM.G["saylevel"] - 8.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "That's strong armor!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 4.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 50.0) and (absf(GM.G["saylevel"] - 9.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Lower it to 1 Claw Trooper")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 4.0)
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Lets see how you like this!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 5.0)
		GM.vb(7.0, "alarm")[int(5.0)] = 75.0
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 55.0) and (absf(GM.G["saylevel"] - 10.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Our aim is shitty...")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 5.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 60.0) and (absf(GM.G["saylevel"] - 11.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Snipers back off!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 5.0)
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Weeehehehehe")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 6.0)
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
		(GM.f_sound_play(175.0))
	if (((GM.G["warning"] > 65.0) and (absf(GM.G["saylevel"] - 12.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "LIEK WTF OMG!?!?")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 6.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 70.0) and (absf(GM.G["saylevel"] - 13.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Special Forces move back!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 6.0)
		(GM.f_sound_play(175.0))
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "BURN HIM UP!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 8.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 75.0) and (absf(GM.G["saylevel"] - 14.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "This is insane!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 8.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 80.0) and (absf(GM.G["saylevel"] - 15.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "AHH MOVE BACK!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 8.0)
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Hope you are shocked! XD")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 7.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 85.0) and (absf(GM.G["saylevel"] - 16.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Blah! Bleh? woooo")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 7.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	if (((GM.G["warning"] > 90.0) and (absf(GM.G["saylevel"] - 17.0) < 0.00001))):
		GM.vset(self, "v_weezing", (GM.f_instance_create(0.0, GM.room_height, 769.0)))
		GM.vset(GM.vget(self, "v_weezing"), "v_texttoshow", "Kill him!")
		GM.vset(GM.vget(self, "v_weezing"), "v_color", 7.0)
		(GM.f_sound_play(175.0))
		GM.G["saylevel"] = GM.G["saylevel"] + 1.0
	return 0.0
func script_personscream(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(GM.vget(self, "v_persond") - 0.0) < 0.00001)):
		(GM.f_sound_play(150.0))
	if ((absf(GM.vget(self, "v_persond") - 1.0) < 0.00001)):
		(GM.f_sound_play(158.0))
	if ((absf(GM.vget(self, "v_persond") - 2.0) < 0.00001)):
		(GM.f_sound_play(159.0))
	if ((absf(GM.vget(self, "v_persond") - 3.0) < 0.00001)):
		(GM.f_sound_play(176.0))
	if ((absf(GM.vget(self, "v_persond") - 4.0) < 0.00001)):
		(GM.f_sound_play(177.0))
	if ((absf(GM.vget(self, "v_persond") - 5.0) < 0.00001)):
		(GM.f_sound_play(179.0))
	if ((absf(GM.vget(self, "v_persond") - 6.0) < 0.00001)):
		(GM.f_sound_play(180.0))
	if ((absf(GM.vget(self, "v_persond") - 7.0) < 0.00001)):
		(GM.f_sound_play(181.0))
	if ((absf(GM.vget(self, "v_persond") - 8.0) < 0.00001)):
		(GM.f_sound_play(185.0))
	if ((absf(GM.vget(self, "v_persond") - 9.0) < 0.00001)):
		(GM.f_sound_play(187.0))
	if ((absf(GM.vget(self, "v_persond") - 10.0) < 0.00001)):
		(GM.f_sound_play(188.0))
	if ((absf(GM.vget(self, "v_persond") - 11.0) < 0.00001)):
		(GM.f_sound_play(183.0))
	if ((absf(GM.vget(self, "v_persond") - 12.0) < 0.00001)):
		(GM.f_sound_play(184.0))
	if ((absf(GM.vget(self, "v_persond") - 13.0) < 0.00001)):
		(GM.f_sound_play(208.0))
	return 0.0
func script_addblue(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_shizzeds", (GM.f_instance_create((40.0 + (GM.f_random((GM.room_width - 80.0)))), 1080.0, 737.0)))
	GM.vset(GM.vget(self, "v_shizzeds"), "v_mypower", 5.0)
	return 0.0
func script_addgreen(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_shizzeds", (GM.f_instance_create((40.0 + (GM.f_random((GM.room_width - 80.0)))), 1080.0, 738.0)))
	GM.vset(GM.vget(self, "v_shizzeds"), "v_mypower", 5.0)
	return 0.0
func script_addred(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_instance_create((GM.f_random(GM.room_width)), (-60.0), 725.0))
	return 0.0
func script_copcreate(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((GM.G["warning"] <= 10.0)):
		if ((absf(GM.G["blue"] - 0.0) < 0.00001)):
			(self.script_addblue())
	if (((GM.G["warning"] > 10.0) and (GM.G["warning"] <= 20.0))):
		if ((absf(GM.G["blue"] - 0.0) < 0.00001)):
			(self.script_addblue())
	if (((GM.G["warning"] > 20.0) and (GM.G["warning"] <= 30.0))):
		if ((absf(GM.G["blue"] - 0.0) < 0.00001)):
			(self.script_addblue())
		if ((GM.G["green"] <= 1.0)):
			(self.script_addgreen())
	if (((GM.G["warning"] > 30.0) and (GM.G["warning"] <= 40.0))):
		if ((absf(GM.G["green"] - 0.0) < 0.00001)):
			(self.script_addgreen())
		if ((absf(GM.G["blue"] - 0.0) < 0.00001)):
			(self.script_addblue())
		if ((absf(GM.G["red"] - 0.0) < 0.00001)):
			(self.script_addred())
	if (((GM.G["warning"] > 40.0) and (GM.G["warning"] <= 50.0))):
		if ((GM.G["yellow"] <= 1.0)):
			(self.script_addyellow())
		if ((absf(GM.G["green"] - 0.0) < 0.00001)):
			(self.script_addgreen())
		if ((absf(GM.G["red"] - 0.0) < 0.00001)):
			(self.script_addred())
	if (((GM.G["warning"] > 50.0) and (GM.G["warning"] <= 60.0))):
		for _w940 in GM.with_list((725.0), self):
			if _w940._dead:
				continue
			_w940.other = self
			_w940.ev_user(5.0)
		if ((GM.G["silver"] <= 1.0)):
			(self.script_addsilver())
		if ((absf(GM.G["yellow"] - 0.0) < 0.00001)):
			(self.script_addyellow())
		if ((absf(GM.G["green"] - 0.0) < 0.00001)):
			(self.script_addgreen())
		if ((absf(GM.G["blue"] - 0.0) < 0.00001)):
			(self.script_addblue())
	if (((GM.G["warning"] > 60.0) and (GM.G["warning"] <= 70.0))):
		GM.vsetb(7.0, "friction", 0.1)
		for _w941 in GM.with_list((732.0), self):
			if _w941._dead:
				continue
			_w941.other = self
			_w941.ev_user(5.0)
		for _w942 in GM.with_list((733.0), self):
			if _w942._dead:
				continue
			_w942.other = self
			_w942.ev_user(5.0)
		for _r943 in range(int((3.0))):
			if ((GM.G["purple"] <= 4.0)):
				(self.script_addpurple())
	if (((GM.G["warning"] > 70.0) and (GM.G["warning"] <= 80.0))):
		for _w944 in GM.with_list((741.0), self):
			if _w944._dead:
				continue
			_w944.other = self
			_w944.ev_user(5.0)
		if ((GM.G["bluegreen"] <= 1.0)):
			(self.script_addbluegreen())
		if ((absf(GM.G["purple"] - 0.0) < 0.00001)):
			(self.script_addpurple())
		if ((absf(GM.G["blue"] - 0.0) < 0.00001)):
			(self.script_addblue())
	if (((GM.G["warning"] > 80.0) and (GM.G["warning"] <= 90.0))):
		for _w945 in GM.with_list((929.0), self):
			if _w945._dead:
				continue
			_w945.other = self
			_w945.ev_user(5.0)
		if ((absf(GM.G["bluegreen"] - 0.0) < 0.00001)):
			(self.script_addbluegreen())
		if ((GM.G["black"] <= 1.0)):
			(self.script_addblack())
		if ((absf(GM.G["blue"] - 0.0) < 0.00001)):
			(self.script_addblue())
	if ((GM.G["warning"] > 90.0)):
		for _w946 in GM.with_list((925.0), self):
			if _w946._dead:
				continue
			_w946.other = self
			_w946.ev_user(5.0)
		for _w947 in GM.with_list((757.0), self):
			if _w947._dead:
				continue
			_w947.other = self
			_w947.ev_user(5.0)
		for _w948 in GM.with_list((758.0), self):
			if _w948._dead:
				continue
			_w948.other = self
			_w948.ev_user(5.0)
		if (((absf((GM.f_instance_number(946.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(957.0)) - 0.0) < 0.00001))):
			(GM.f_sound_play(252.0))
			(GM.f_sound_loop(229.0))
			(GM.f_instance_create(((GM.room_width / 2.0) - 200.0), 530.0, 946.0))
	return 0.0
func script_addyellow(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_shizzeds", (GM.f_instance_create((40.0 + (GM.f_random((GM.room_width - 80.0)))), 1080.0, 739.0)))
	GM.vset(GM.vget(self, "v_shizzeds"), "v_mypower", 5.0)
	return 0.0
func script_copzapin(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_sound_volume(205.0, (1.0 - (((GM.f_distance_to_point(self, GM.add(GM.aget(GM.vget(self, "v_view_left"), 0.0), ((GM.aget(GM.vget(self, "v_view_width"), 0.0) / 2.0))), y)) / 5000.0)))))
	(GM.f_sound_pan(205.0, (0.5 - (((((GM.add(GM.aget(GM.vget(self, "v_view_left"), 0.0), ((GM.aget(GM.vget(self, "v_view_width"), 0.0) / 2.0)))) - x)) / 1000.0)))))
	(GM.f_sound_play(205.0))
	return 0.0
func script_addsilver(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(GM.room - 1.0) < 0.00001)):
		GM.vset(self, "v_wowzorz", (GM.f_round((GM.f_random(4.0)))))
		if ((absf(GM.vget(self, "v_wowzorz") - 0.0) < 0.00001)):
			GM.vset(self, "v_xxx", 360.0)
			GM.vset(self, "v_yyy", 40.0)
		if ((absf(GM.vget(self, "v_wowzorz") - 1.0) < 0.00001)):
			GM.vset(self, "v_xxx", 1640.0)
			GM.vset(self, "v_yyy", 40.0)
		if ((absf(GM.vget(self, "v_wowzorz") - 2.0) < 0.00001)):
			GM.vset(self, "v_xxx", 2160.0)
			GM.vset(self, "v_yyy", 40.0)
		if ((absf(GM.vget(self, "v_wowzorz") - 3.0) < 0.00001)):
			GM.vset(self, "v_xxx", 2720.0)
			GM.vset(self, "v_yyy", 240.0)
		if ((absf(GM.vget(self, "v_wowzorz") - 4.0) < 0.00001)):
			GM.vset(self, "v_xxx", 3200.0)
			GM.vset(self, "v_yyy", 240.0)
	if ((absf(GM.room - 16.0) < 0.00001)):
		GM.vset(self, "v_wowzorz", (GM.f_round((GM.f_random(3.0)))))
		if ((absf(GM.vget(self, "v_wowzorz") - 0.0) < 0.00001)):
			GM.vset(self, "v_xxx", 400.0)
			GM.vset(self, "v_yyy", 40.0)
		if ((absf(GM.vget(self, "v_wowzorz") - 1.0) < 0.00001)):
			GM.vset(self, "v_xxx", 1760.0)
			GM.vset(self, "v_yyy", 200.0)
		if ((absf(GM.vget(self, "v_wowzorz") - 2.0) < 0.00001)):
			GM.vset(self, "v_xxx", 2700.0)
			GM.vset(self, "v_yyy", 40.0)
		if ((absf(GM.vget(self, "v_wowzorz") - 3.0) < 0.00001)):
			GM.vset(self, "v_xxx", 3020.0)
			GM.vset(self, "v_yyy", 40.0)
	GM.vset(self, "v_shizzeds", (GM.f_instance_create(GM.vget(self, "v_xxx"), (GM.vget(self, "v_yyy") + 85.0), 740.0)))
	GM.vset(GM.vget(self, "v_shizzeds"), "v_mypower", 5.0)
	return 0.0
func script_addjetpack(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_wow1", (GM.f_round((GM.f_random(1.0)))))
	if ((absf(GM.vget(self, "v_wow1") - 0.0) < 0.00001)):
		if (((GM.view_yview[0] + 600.0) < 800.0)):
			GM.vset(self, "v_wow2", (GM.f_round((GM.f_random(1.0)))))
			if ((absf(GM.vget(self, "v_wow2") - 0.0) < 0.00001)):
				GM.vset(self, "v_xxx", (GM.view_xview[0] + (GM.f_random(765.0))))
				GM.vset(self, "v_yyy", (GM.view_yview[0] - 60.0))
			if ((absf(GM.vget(self, "v_wow2") - 1.0) < 0.00001)):
				GM.vset(self, "v_xxx", (GM.view_xview[0] + (GM.f_random(765.0))))
				GM.vset(self, "v_yyy", (GM.view_yview[0] + 600.0))
		else:
			GM.vset(self, "v_xxx", (GM.view_xview[0] + (GM.f_random(765.0))))
			GM.vset(self, "v_yyy", (GM.view_yview[0] - 60.0))
	if ((absf(GM.vget(self, "v_wow1") - 1.0) < 0.00001)):
		if (((GM.view_yview[0] + 600.0) < 800.0)):
			GM.vset(self, "v_wow2", (GM.f_round((GM.f_random(1.0)))))
			if ((absf(GM.vget(self, "v_wow2") - 0.0) < 0.00001)):
				GM.vset(self, "v_xxx", (GM.view_xview[0] - 35.0))
				GM.vset(self, "v_yyy", (GM.view_yview[0] + (GM.f_random(540.0))))
			if ((absf(GM.vget(self, "v_wow2") - 1.0) < 0.00001)):
				GM.vset(self, "v_xxx", (GM.view_xview[0] + 800.0))
				GM.vset(self, "v_yyy", (GM.view_yview[0] + (GM.f_random(540.0))))
		else:
			GM.vset(self, "v_wow2", (GM.f_round((GM.f_random(1.0)))))
			if ((absf(GM.vget(self, "v_wow2") - 0.0) < 0.00001)):
				GM.vset(self, "v_xxx", (GM.view_xview[0] - 35.0))
				GM.vset(self, "v_yyy", (GM.view_yview[0] + (GM.f_random(340.0))))
			if ((absf(GM.vget(self, "v_wow2") - 1.0) < 0.00001)):
				GM.vset(self, "v_xxx", (GM.view_xview[0] + 800.0))
				GM.vset(self, "v_yyy", (GM.view_yview[0] + (GM.f_random(340.0))))
	(GM.f_instance_create(GM.vget(self, "v_xxx"), GM.vget(self, "v_yyy"), 748.0))
	return 0.0
func script_addblack(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_shizzeds", (GM.f_instance_create((40.0 + (GM.f_random((GM.room_width - 80.0)))), 1080.0, 759.0)))
	GM.vset(GM.vget(self, "v_shizzeds"), "v_mypower", 10.0)
	return 0.0
func script_takedamagejetz(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	for _w949 in GM.with_list((7.0), self):
		if _w949._dead:
			continue
		_w949.other = self
		GM.vset(_w949, "v_myhealth", GM.vget(_w949, "v_myhealth") - 0.1)
		if ((GM.vget(_w949, "v_myhealth") < 1.0)):
			if ((absf((GM.f_instance_number(900.0)) - 0.0) < 0.00001)):
				(GM.f_instance_create(_w949.x, _w949.y, 900.0))
		if (((GM.vget(_w949, "v_myhealth") < 66.0) and (absf(GM.vget(_w949, "v_damagelevel") - 0.0) < 0.00001))):
			_w949.ev_user(1.0)
			GM.vset(_w949, "v_damagelevel", 1.0)
		if (((GM.vget(_w949, "v_myhealth") < 33.0) and (absf(GM.vget(_w949, "v_damagelevel") - 1.0) < 0.00001))):
			_w949.ev_user(1.0)
			GM.vset(_w949, "v_damagelevel", 2.0)
	return 0.0
func script_addbigcar(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.view_yview[0] + 600.0) < 800.0)):
		GM.vset(self, "v_wow2", (GM.f_round((GM.f_random(1.0)))))
		if ((absf(GM.vget(self, "v_wow2") - 0.0) < 0.00001)):
			GM.vset(self, "v_xxx", (GM.view_xview[0] - 125.0))
			GM.vset(self, "v_yyy", ((GM.view_yview[0] + 20.0) + (GM.f_random((600.0 - 38.0)))))
		if ((absf(GM.vget(self, "v_wow2") - 1.0) < 0.00001)):
			GM.vset(self, "v_xxx", (GM.view_xview[0] + 800.0))
			GM.vset(self, "v_yyy", ((GM.view_yview[0] + 20.0) + (GM.f_random((600.0 - 38.0)))))
	else:
		GM.vset(self, "v_wow2", (GM.f_round((GM.f_random(1.0)))))
		if ((absf(GM.vget(self, "v_wow2") - 0.0) < 0.00001)):
			GM.vset(self, "v_xxx", (GM.view_xview[0] - 125.0))
			GM.vset(self, "v_yyy", (GM.view_yview[0] + (GM.f_random(400.0))))
		if ((absf(GM.vget(self, "v_wow2") - 1.0) < 0.00001)):
			GM.vset(self, "v_xxx", (GM.view_xview[0] + 800.0))
			GM.vset(self, "v_yyy", (GM.view_yview[0] + (GM.f_random(400.0))))
	(GM.f_instance_create(GM.vget(self, "v_xxx"), GM.vget(self, "v_yyy"), 770.0))
	return 0.0
func script_mp3_list(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_b = 0.0
	var l_a = 0.0
	l_a = 0.0
	GM.aset(GM.G["music"], l_a, (-1.0))
	GM.aset(GM.G["musicName"], l_a, (-1.0))
	GM.G["total"] = 0.0
	l_b = (GM.f_file_find_first(("." + "\\music\\custom_music\\*.mp3"), 0.0))
	if ((l_b != "")):
		GM.aset(GM.G["music"], l_a, (GM.f_sound_add(GM.add("music\\custom_music\\", l_b), 1.0, 0.0, 1.0)))
		GM.aset(GM.G["musicName"], l_a, (GM.f_string_replace(l_b, ".mp3", "")))
		GM.aset(GM.G["music"], GM.add(l_a, 1.0), (-1.0))
		l_b = (GM.f_file_find_next())
		l_a = GM.add(l_a, 1.0)
		while ((l_b != "")):
			GM.aset(GM.G["music"], l_a, (GM.f_sound_add(GM.add("music\\custom_music\\", l_b), 1.0, 0.0, 1.0)))
			GM.aset(GM.G["musicName"], l_a, (GM.f_string_replace(l_b, ".mp3", "")))
			GM.aset(GM.G["music"], GM.add(l_a, 1.0), (-1.0))
			l_a = GM.add(l_a, 1.0)
			l_b = (GM.f_file_find_next())
		GM.G["total"] = l_a
		return 1.0
	else:
		return 0.0
	(GM.f_file_find_close())
	return 0.0
func script_mp3_play(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_sound_loop(GM.aget(GM.G["music"], GM.G["songc"])))
	return 0.0
func script_addbluegreen(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_instance_create((GM.f_random(GM.room_width)), (-60.0), 925.0))
	return 0.0
func script_addpurple(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_shizzeds", (GM.f_instance_create((40.0 + (GM.f_random((GM.room_width - 80.0)))), 1080.0, 930.0)))
	GM.vset(GM.vget(self, "v_shizzeds"), "v_mypower", 5.0)
	return 0.0
func script_copdestroy(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	for _r950 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 488.0))
	(GM.f_instance_destroy(self))
	return 0.0
func script_waydirection4(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	for _r951 in range(int((35.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
	for _r952 in range(int((35.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
	visible = 1.0
	GM.vset(self, "v_image_single", 0.0)
	gravity = 0.3
	gravity_direction = 270.0
	direction = (GM.f_random(360.0))
	speed = (1.0 + (GM.f_random(3.0)))
	return 0.0
func script_bosscrash(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((vspeed > 4.0)):
		for _r953 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 608.0))
		for _r954 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 637.0))
		(GM.f_sound_play(122.0))
	if ((vspeed > 1.0)):
		vspeed = ((-vspeed) / 2.0)
	else:
		vspeed = 0.0
	hspeed = (hspeed / 4.0)
	return 0.0
func script_scrollview(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if not (((((y + (sprite_height / 2.0)) + 300.0) > GM.room_height))):
		if not (((((y + (sprite_height / 2.0)) - 300.0) < 0.0))):
			GM.background_y[int(3.0)] = (200.0 + (y / 15.0))
			GM.background_y[int(2.0)] = (400.0 + (y / 20.0))
	if not (((((x + (sprite_width / 2.0)) + 400.0) > GM.room_width))):
		if not (((((x + (sprite_width / 2.0)) - 400.0) < 0.0))):
			GM.background_x[int(3.0)] = ((-200.0) + (x / 15.0))
			GM.background_x[int(2.0)] = ((-710.0) + (x / 20.0))
	return 0.0
func script_deletegame(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if not ((((GM.f_registry_exists("jetz4_data")))) >= 0.5):
		(GM.f_registry_write_real("jetz4_data", 1.0))
	if ((absf((GM.f_registry_read_real("jetz4_data")) - 1.0) < 0.00001)):
		(GM.f_registry_write_real("jetz4_data", 0.0))
		(GM.f_registry_write_real("jetz4_chainsaw", 0.0))
		(GM.f_registry_write_real("jetz4_bazooka", 0.0))
		(GM.f_registry_write_real("jetz4_flamethrower", 0.0))
		(GM.f_registry_write_real("jetz4_electricgun", 0.0))
		(GM.f_registry_write_real("jetz4_machinegun2", 0.0))
		(GM.f_registry_write_real("jetz4_machinegun3", 0.0))
		(GM.f_registry_write_real("jetz4_gravitygun", 0.0))
		(GM.f_registry_write_real("jetz4_sniper", 0.0))
		(GM.f_registry_write_real("jetz4_mace", 0.0))
		(GM.f_registry_write_real("jetz4_bazooka2", 0.0))
		(GM.f_registry_write_real("jetz4_money", 0.0))
		(GM.f_registry_write_real("jetz4_level2", 0.0))
		(GM.f_registry_write_real("jetz4_level3", 0.0))
		(GM.f_registry_write_real("jetz4_killsc1", 0.0))
		(GM.f_registry_write_real("jetz4_killsc2", 0.0))
		(GM.f_registry_write_real("jetz4_killsc3", 0.0))
		(GM.f_registry_write_real("jetz4_shotgun", 0.0))
		(GM.f_registry_write_real("jetz4_lasergun", 0.0))
		(GM.f_registry_write_real("jetz4_bazooka3", 0.0))
		(GM.f_registry_write_real("jetz4_firecannon", 0.0))
		(GM.f_registry_write_real("jetz4_grenade2", 0.0))
		(GM.f_registry_write_real("jetz4_megagun", 0.0))
		(GM.f_registry_write_real("jetz4_music", 0.0))
		(GM.f_registry_write_real("jetz4_p1wins", 0.0))
		(GM.f_registry_write_real("jetz4_p2wins", 0.0))
	GM.G["j4var1"] = (GM.f_registry_read_real("jetz4_chainsaw"))
	GM.G["j4var2"] = (GM.f_registry_read_real("jetz4_bazooka"))
	GM.G["j4var3"] = (GM.f_registry_read_real("jetz4_flamethrower"))
	GM.G["j4var4"] = (GM.f_registry_read_real("jetz4_electricgun"))
	GM.G["j4var5"] = (GM.f_registry_read_real("jetz4_machinegun2"))
	GM.G["j4var6"] = (GM.f_registry_read_real("jetz4_machinegun3"))
	GM.G["j4var7"] = (GM.f_registry_read_real("jetz4_gravitygun"))
	GM.G["j4var8"] = (GM.f_registry_read_real("jetz4_sniper"))
	GM.G["j4var9"] = (GM.f_registry_read_real("jetz4_mace"))
	GM.G["j4var10"] = (GM.f_registry_read_real("jetz4_bazooka2"))
	GM.G["j4var11"] = (GM.f_registry_read_real("jetz4_money"))
	GM.G["j4var12"] = (GM.f_registry_read_real("jetz4_level2"))
	GM.G["j4var13"] = (GM.f_registry_read_real("jetz4_level3"))
	GM.G["j4var14"] = (GM.f_registry_read_real("jetz4_killsc1"))
	GM.G["j4var15"] = (GM.f_registry_read_real("jetz4_killsc2"))
	GM.G["j4var16"] = (GM.f_registry_read_real("jetz4_killsc3"))
	GM.G["j4var17"] = (GM.f_registry_read_real("jetz4_shotgun"))
	GM.G["j4var18"] = (GM.f_registry_read_real("jetz4_lasergun"))
	GM.G["j4var19"] = (GM.f_registry_read_real("jetz4_bazooka3"))
	GM.G["j4var20"] = (GM.f_registry_read_real("jetz4_firecannon"))
	GM.G["j4var21"] = (GM.f_registry_read_real("jetz4_grenade2"))
	GM.G["j4var22"] = (GM.f_registry_read_real("jetz4_megagun"))
	GM.G["j4var23"] = (GM.f_registry_read_real("jetz4_music"))
	GM.G["j4var24"] = (GM.f_registry_read_real("jetz4_p1wins"))
	GM.G["j4var25"] = (GM.f_registry_read_real("jetz4_p2wins"))
	return 0.0
func script_checkcity1(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(GM.G["missionsx"] - 0.0) < 0.00001)):
		if (((((((((((((absf((GM.f_instance_number(674.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(675.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(669.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(676.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(677.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(984.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(787.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(814.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(798.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(989.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(997.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(988.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(1198.0, 1014.0, 999.0))
			(GM.f_instance_create(2704.0, 337.0, 1004.0))
			(GM.f_instance_create(1640.0, 140.0, 1007.0))
			(GM.f_instance_create(603.0, 1012.0, 1029.0))
			(GM.f_instance_create(3160.0, 336.0, 1033.0))
			(GM.f_instance_create(3081.0, 1022.0, 1030.0))
			GM.G["missionsx"] = 1.0
	if ((absf(GM.G["missionsx"] - 1.0) < 0.00001)):
		if (((((((((((((absf((GM.f_instance_number(999.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(1004.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1007.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1029.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1030.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1033.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1000.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1005.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1008.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1032.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1031.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1034.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(x, y, 1046.0))
			GM.G["missionsx"] = 2.0
	return 0.0
func script_mp3ingameplay(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((((self.script_mp3_list())) >= 0.5 and (absf(GM.G["j4var23"] - 1.0) < 0.00001))):
		(self.script_mp3_play())
	else:
		if ((absf(GM.room - 1.0) < 0.00001)):
			(GM.f_sound_loop(227.0))
		if ((absf(GM.room - 16.0) < 0.00001)):
			(GM.f_sound_loop(228.0))
	return 0.0
func script_checkcity2(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(GM.G["missionsx"] - 0.0) < 0.00001)):
		if (((((((((((((absf((GM.f_instance_number(918.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(1064.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1091.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1077.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1079.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1089.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1063.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1066.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1092.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1078.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1080.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1090.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(2540.0, 420.0, 1093.0))
			(GM.f_instance_create(1920.0, 1020.0, 1095.0))
			(GM.f_instance_create(3400.0, 1020.0, 1097.0))
			(GM.f_instance_create(760.0, 660.0, 1099.0))
			(GM.f_instance_create(2740.0, 1120.0, 1101.0))
			(GM.f_instance_create(100.0, 1120.0, 1103.0))
			GM.G["missionsx"] = 1.0
	if ((absf(GM.G["missionsx"] - 1.0) < 0.00001)):
		if (((((((((((((absf((GM.f_instance_number(1093.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(1095.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1097.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1099.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1101.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1103.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1094.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1096.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1098.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1100.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1102.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(1104.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create(x, y, 1046.0))
			GM.G["missionsx"] = 2.0
	return 0.0
