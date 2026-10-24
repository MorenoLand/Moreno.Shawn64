extends "res://gm/gm_inst.gd"
func script_hover(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_position_meeting(GM.vb(GM.vget(self, "v_orb"), "x"), GM.vb(GM.vget(self, "v_orb"), "y"), self)))) >= 0.5:
		image_single = 1.0
	else:
		image_single = 0.0
	return 0.0
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
func script_outsidestayin(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((bbox_top < 0.0) and (vspeed < 0.0))):
		vspeed = 0.0
		y = 0.0
	if (((bbox_bottom > GM.room_height) and (vspeed > 0.0))):
		vspeed = 0.0
		y = y - 1.0
	return 0.0
func script_adddamage(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if not (((absf(GM.room - 7.0) < 0.00001))):
		if not ((((GM.G["damage"] + 0.4) > 100.0))):
			GM.G["damage"] = GM.G["damage"] + 0.4
		if (((GM.G["damage"] > 12.5) and (absf(GM.G["saylevel"] - 0.0) < 0.00001))):
			(GM.f_instance_create(x, y, 75.0))
			GM.G["saylevel"] = GM.G["saylevel"] + 1.0
		if (((GM.G["damage"] > 25.0) and (absf(GM.G["saylevel"] - 1.0) < 0.00001))):
			(GM.f_instance_create(x, y, 75.0))
			GM.G["saylevel"] = GM.G["saylevel"] + 1.0
		if (((GM.G["damage"] > 37.5) and (absf(GM.G["saylevel"] - 2.0) < 0.00001))):
			(GM.f_instance_create(x, y, 75.0))
			GM.G["saylevel"] = GM.G["saylevel"] + 1.0
		if (((GM.G["damage"] > 50.0) and (absf(GM.G["saylevel"] - 3.0) < 0.00001))):
			(GM.f_instance_create(x, y, 75.0))
			GM.G["saylevel"] = GM.G["saylevel"] + 1.0
		if (((GM.G["damage"] > 62.5) and (absf(GM.G["saylevel"] - 4.0) < 0.00001))):
			(GM.f_instance_create(x, y, 75.0))
			GM.G["saylevel"] = GM.G["saylevel"] + 1.0
		if (((GM.G["damage"] > 75.0) and (absf(GM.G["saylevel"] - 5.0) < 0.00001))):
			(GM.f_instance_create(x, y, 75.0))
			GM.G["saylevel"] = GM.G["saylevel"] + 1.0
		if (((GM.G["damage"] > 87.5) and (absf(GM.G["saylevel"] - 6.0) < 0.00001))):
			pass
		(GM.f_instance_create(0.0, 0.0, 76.0))
	return 0.0
func script_dosound(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_sound_volume(argument0, (1.0 - (((GM.f_distance_to_point(self, (GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0))), y)) / 10000.0)))))
	(GM.f_sound_pan(argument0, (0.5 - ((((((GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0)))) - x)) / 1000.0)))))
	(GM.f_sound_play(argument0))
	return 0.0
func script_screamsscript(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_sound_volume(argument0, (1.0 - (((GM.f_distance_to_point(self, (GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0))), y)) / 10000.0)))))
	(GM.f_sound_pan(argument0, (0.5 - ((((((GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0)))) - x)) / 1000.0)))))
	if not ((((GM.f_sound_isplaying(argument0)))) >= 0.5):
		(GM.f_sound_play(argument0))
	return 0.0
func script_missionscript(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_instance_create(0.0, 0.0, 259.0))
	return 0.0
func script_missionscript2(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(GM.room - 3.0) < 0.00001)):
		(GM.f_instance_create(0.0, 0.0, 332.0))
	return 0.0
func script_missionscript3(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_instance_create(0.0, 0.0, 459.0))
	return 0.0
func tl_1_500():
	(GM.f_instance_create(0.0, 160.0, 317.0))
func tl_1_1000():
	(GM.f_instance_create(GM.room_width, 160.0, 318.0))
func tl_1_1500():
	(GM.f_instance_create(0.0, 160.0, 477.0))
