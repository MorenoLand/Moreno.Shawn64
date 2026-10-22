extends "res://games/jetzfusion/scripts.gd"
var v_shit = 0.0
var v_wow = 0.0
var v_xxx = 0.0
func ev_create():
	(GM.f_sound_play(41.0))
	alarm[int(0.0)] = 100.0
	v_shit = (GM.f_round((GM.f_random(2.0))))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	if (not (((GM.vget(49.0, "v_mytext") == "")))):
		(GM.f_draw_set_color(0.0))
		(GM.f_draw_rectangle((GM.view_xview[0] + 197.0), 60.0, (GM.view_xview[0] + 800.0), 120.0, (1.0 if not (((0.0)) >= 0.5) else 0.0)))
		(GM.f_action_draw_font("Arial", 12.0, 1.0, 0.0))
		(GM.f_draw_set_color(255.0))
		(GM.f_draw_sprite(161.0, 0.0, (GM.view_xview[0] + 200.0), 70.0))
		GM.font_align = 0.0
		v_wow = 80.0
		v_xxx = (GM.view_xview[0] + 245.0)
		if ((absf(GM.G["saylevel"] - 1.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Shoot on sight!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Target aquired!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Disturbance detected!"))
		if ((absf(GM.G["saylevel"] - 2.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "We need backup!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Regeneration activated!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Regeneration activated!"))
		if ((absf(GM.G["saylevel"] - 3.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Lets blow this fucker up!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Lets blow this bitch up!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Lets blow this bastard up!"))
		if ((absf(GM.G["saylevel"] - 4.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Release chainsaw drones!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Lets cut this son of a bitch up!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "MUST KILL! MUST KILL!"))
		if ((absf(GM.G["saylevel"] - 5.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Laser troopers in da house!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Laser troopers in da house!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Hope your suit is laser proof!"))
		if ((absf(GM.G["saylevel"] - 6.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Release machine gun drones!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Worthless human!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Worthless human!"))
		if ((absf(GM.G["saylevel"] - 7.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Blow the whole city up!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Evacuate the city!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Your a dead man!"))
		if ((absf(GM.G["saylevel"] - 8.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Blow the whole city up!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Evacuate the city!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Your a dead man!"))
	else:
		(GM.f_draw_set_color(0.0))
		(GM.f_draw_rectangle((GM.view_xview[0] + 197.0), 0.0, (GM.view_xview[0] + 800.0), 60.0, (1.0 if not (((0.0)) >= 0.5) else 0.0)))
		(GM.f_action_draw_font("Arial", 12.0, 1.0, 0.0))
		(GM.f_draw_set_color(255.0))
		(GM.f_draw_sprite(161.0, 0.0, (GM.view_xview[0] + 200.0), 10.0))
		GM.font_align = 0.0
		v_wow = 20.0
		v_xxx = (GM.view_xview[0] + 245.0)
		if ((absf(GM.G["saylevel"] - 1.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Shoot on sight!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Target aquired!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Disturbance detected!"))
		if ((absf(GM.G["saylevel"] - 2.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "We need backup!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Regeneration activated!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Regeneration activated!"))
		if ((absf(GM.G["saylevel"] - 3.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Lets blow this fucker up!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Lets blow this bitch up!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Lets blow this bastard up!"))
		if ((absf(GM.G["saylevel"] - 4.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Release chainsaw drones!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Lets cut this son of a bitch up!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "MUST KILL! MUST KILL!"))
		if ((absf(GM.G["saylevel"] - 5.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Laser troopers in da house!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Laser troopers in da house!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Hope your suit is laser proof!"))
		if ((absf(GM.G["saylevel"] - 6.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Release machine gun drones!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Worthless human!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Worthless human!"))
		if ((absf(GM.G["saylevel"] - 7.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Blow the whole city up!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Evacuate the city!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Your a dead man!"))
		if ((absf(GM.G["saylevel"] - 8.0) < 0.00001)):
			if ((absf(v_shit - 0.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Blow the whole city up!"))
			if ((absf(v_shit - 1.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Evacuate the city!"))
			if ((absf(v_shit - 2.0) < 0.00001)):
				(GM.f_draw_text(v_xxx, v_wow, "Your a dead man!"))
