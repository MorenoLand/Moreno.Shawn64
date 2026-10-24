extends "res://games/jetzrampage2/scripts.gd"
var v_blab = 0.0
var v_bombpower = 0.0
var v_brush_color = 0.0
var v_cheat = 0.0
var v_currentmoney = 0.0
var v_finaltime = 0.0
var v_mission1beat = 0.0
var v_mission2beat = 0.0
var v_mission3beat = 0.0
var v_mytext = ""
var v_mytext2 = ""
var v_mytext3 = ""
var v_pen_color = 0.0
var v_poo = 0.0
var v_pooo = 0.0
var v_show = 0.0
var v_thrower = 0.0
var v_wow = 0.0
var v_wow2 = 0.0
var v_wow3 = 0.0
var v_wow4 = 0.0
var v_wow5 = 0.0
var v_wow6 = 0.0
var v_wow7 = 0.0
var v_wow9 = 0.0
func ev_create():
	GM.G["lives"] = 0.0
	v_mission1beat = 0.0
	v_mission2beat = 0.0
	v_mission3beat = 0.0
	v_cheat = 0.0
	v_finaltime = 0.0
	v_mytext = "Jetz Rampage 2"
	v_mytext2 = ""
	v_mytext3 = ""
	v_show = 0.0
	v_wow = 1.0
	v_wow2 = 1.0
	v_wow3 = 1.0
	v_wow4 = 1.0
	v_wow5 = 1.0
	v_wow6 = 1.0
	v_wow7 = 1.0
	v_wow9 = 1.0
	v_poo = 1.0
	v_blab = 1.0
	v_pooo = 1.0
	v_thrower = 5.0
	v_currentmoney = 0.0
func ev_step():
	if (((GM.G["poo"] > 0.0))):
		GM.G["poo"] = GM.G["poo"] + (-0.03)
	v_finaltime = v_finaltime + 1.0
	if (((GM.G["lives"] > 10.0))):
		if (((absf(v_wow - 1.0) < 0.00001))):
			(GM.f_instance_create(0.0, 518.0, 122.0))
			v_wow = 0.0
	if (((absf((GM.f_instance_number(137.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(114.0)) - 0.0) < 0.00001))):
			if ((((GM.f_random(100.0)) < 1.0))):
				(GM.f_sound_play(32.0))
				(GM.f_instance_create(GM.vb(120.0, "x"), GM.vb(120.0, "y"), 137.0))
func ev_other_4():
	GM.G["lives"] = 0.0
	GM.G["poo"] = 0.0
	GM.G["bombs"] = 5.0
func ev_draw():
	if (((absf((GM.f_instance_number(2.0)) - 1.0) < 0.00001))):
		if (((v_bombpower > 5.0))):
			if (((GM.vb(0.0, "hspeed") > 0.0))):
				v_pen_color = 0.0
				v_brush_color = 32768.0
				(GM.f_draw_roundrect((GM.vb(0.0, "x") + 20.0), (GM.vb(0.0, "y") - 20.0), (GM.vb(0.0, "x") + 80.0), (GM.vb(0.0, "y") - 10.0)))
				v_brush_color = 255.0
				(GM.f_draw_roundrect((GM.vb(0.0, "x") + 20.0), (GM.vb(0.0, "y") - 20.0), (GM.vb(0.0, "x") + ((80.0 / 20.0) * GM.vget(3.0, "v_bombpower"))), (GM.vb(0.0, "y") - 10.0)))
			else:
				v_pen_color = 0.0
				v_brush_color = 32768.0
				(GM.f_draw_roundrect(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 20.0), (GM.vb(0.0, "x") + 60.0), (GM.vb(0.0, "y") - 10.0)))
				v_brush_color = 255.0
				(GM.f_draw_roundrect(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 20.0), (GM.vb(0.0, "x") + ((60.0 / 20.0) * GM.vget(3.0, "v_bombpower"))), (GM.vb(0.0, "y") - 10.0)))
	(GM.f_draw_sprite(238.0, (-1.0), GM.view_xview[int(0.0)], GM.view_yview[int(0.0)]))
	(GM.f_draw_sprite(268.0, (-1.0), (GM.view_xview[int(0.0)] + 133.0), (GM.view_yview[int(0.0)] + 2.0)))
	GM.font_align = 1.0
	if (((absf(v_show - 1.0) < 0.00001))):
		(GM.f_draw_set_color(0.0))
		(GM.f_draw_rectangle((GM.view_xview[0] + 270.0), GM.view_yview[0], (GM.view_xview[0] + 780.0), (GM.view_yview[0] + 50.0), (1.0 if not (((0.0)) >= 0.5) else 0.0)))
		(GM.f_action_draw_font("Courier", 10.0, 0.0, 0.0))
		(GM.f_draw_set_color(16777215.0))
		(GM.f_draw_text((GM.view_xview[0] + 500.0), (GM.view_yview[0] + 3.0), ("" + (GM.f_string(v_mytext)))))
		(GM.f_draw_text((GM.view_xview[0] + 500.0), (GM.view_yview[0] + 15.0), ("" + (GM.f_string(v_mytext2)))))
		(GM.f_draw_text((GM.view_xview[0] + 500.0), (GM.view_yview[0] + 27.0), ("" + (GM.f_string(v_mytext3)))))
	if (((absf((GM.f_instance_number(2.0)) - 1.0) < 0.00001))):
		if (((absf(GM.vget(0.0, "v_weaponselect") - 1.0) < 0.00001))):
			(GM.f_draw_sprite(3.0, (-1.0), (GM.view_xview[int(0.0)] + 220.0), (GM.view_yview[int(0.0)] + 10.0)))
		else:
			if (((absf(GM.vget(0.0, "v_weaponselect") - 2.0) < 0.00001))):
				(GM.f_draw_sprite(153.0, (-1.0), (GM.view_xview[int(0.0)] + 220.0), (GM.view_yview[int(0.0)] + 10.0)))
			else:
				if (((absf(GM.vget(0.0, "v_weaponselect") - 3.0) < 0.00001))):
					(GM.f_draw_sprite(176.0, (-1.0), (GM.view_xview[int(0.0)] + 220.0), (GM.view_yview[int(0.0)] + 10.0)))
				else:
					if (((absf(GM.vget(0.0, "v_weaponselect") - 4.0) < 0.00001))):
						(GM.f_draw_sprite(174.0, (-1.0), (GM.view_xview[int(0.0)] + 220.0), (GM.view_yview[int(0.0)] + 10.0)))
					else:
						if (((absf(GM.vget(0.0, "v_weaponselect") - 5.0) < 0.00001))):
							(GM.f_draw_sprite(104.0, (-1.0), (GM.view_xview[int(0.0)] + 230.0), (GM.view_yview[int(0.0)] + 20.0)))
							(GM.f_action_draw_font("Times New Roman", 0.0, 0.0, 0.0))
							(GM.f_draw_set_color(0.0))
							(GM.f_draw_text((GM.view_xview[int(0.0)] + 175.0), (GM.view_yview[int(0.0)] + 30.0), ("Ammo: " + (GM.f_string(GM.G["bombs"])))))
						else:
							if (((absf(GM.vget(0.0, "v_weaponselect") - 6.0) < 0.00001))):
								(GM.f_draw_sprite(187.0, (-1.0), (GM.view_xview[int(0.0)] + 220.0), (GM.view_yview[int(0.0)] + 10.0)))
								(GM.f_action_draw_font("Times New Roman", 0.0, 0.0, 0.0))
								(GM.f_draw_set_color(0.0))
								(GM.f_draw_text((GM.view_xview[int(0.0)] + 175.0), (GM.view_yview[int(0.0)] + 30.0), ("Ammo: " + (GM.f_string(GM.G["bombs"])))))
	if (((absf(v_cheat - 1.0) < 0.00001))):
		(GM.f_action_draw_font("System", 0.0, 0.0, 0.0))
		(GM.f_draw_set_color(0.0))
		(GM.f_draw_text((GM.view_xview[int(0.0)] + 40.0), (GM.view_yview[int(0.0)] + 540.0), GM.add(GM.keyboard_string, "|")))
	v_pen_color = 0.0
	v_brush_color = 16711680.0
	(GM.f_draw_rectangle((GM.view_xview[int(0.0)] + 2.0), (GM.view_yview[int(0.0)] + 1.0), (GM.view_xview[int(0.0)] + 128.0), (GM.view_yview[int(0.0)] + 24.0)))
	v_brush_color = 255.0
	(GM.f_draw_rectangle((GM.view_xview[int(0.0)] + 2.0), (GM.view_yview[int(0.0)] + 1.0), (GM.view_xview[int(0.0)] + ((128.0 / 100.0) * GM.G["lives"])), (GM.view_yview[int(0.0)] + 24.0)))
	v_pen_color = 0.0
	v_brush_color = 16711680.0
	(GM.f_draw_rectangle((GM.view_xview[int(0.0)] + 2.0), (GM.view_yview[int(0.0)] + 26.0), (GM.view_xview[int(0.0)] + 128.0), (GM.view_yview[int(0.0)] + 48.0)))
	v_brush_color = 255.0
	(GM.f_draw_rectangle((GM.view_xview[int(0.0)] + 2.0), (GM.view_yview[int(0.0)] + 26.0), (GM.view_xview[int(0.0)] + ((128.0 / 100.0) * GM.G["poo"])), (GM.view_yview[int(0.0)] + 48.0)))
	(GM.f_action_draw_font("System", 0.0, 0.0, 0.0))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_text((GM.view_xview[int(0.0)] + 65.0), (GM.view_yview[int(0.0)] + 3.0), "Destruction"))
	(GM.f_draw_text((GM.view_xview[int(0.0)] + 65.0), (GM.view_yview[int(0.0)] + 28.0), "Health"))
	(GM.f_action_draw_font("Courier", 15.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[int(0.0)] + 400.0), 580.0, ("Money - $" + (GM.f_string(v_currentmoney)))))
func ev_keypress_32():
	(self.script_game_pause(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_keypress_27():
	(GM.f_sound_stop(9.0))
	(GM.f_sound_stop(10.0))
	(GM.f_sound_stop(37.0))
	(GM.f_room_goto(31.0))
func ev_keypress_13():
	(GM.f_sound_play(188.0))
	if (((GM.keyboard_string == "s64000"))):
		GM.G["level2unlocked"] = 1.0
		GM.G["level3unlocked"] = 1.0
		GM.G["cheatsunlocked"] = 1.0
	if (((GM.keyboard_string == "pnt"))):
		GM.vset(0.0, "v_crimax", GM.vget(0.0, "v_crimax") + 1.0)
	if (((GM.keyboard_string == "amo"))):
		GM.G["bombs"] = 100.0
	if (((GM.keyboard_string == "flm"))):
		for _w31 in GM.with_list((0.0), self):
			if _w31._dead:
				continue
			_w31.other = self
			GM.vset(_w31, "v_flames", 1.0)
	if (((GM.keyboard_string == "elc"))):
		for _w32 in GM.with_list((0.0), self):
			if _w32._dead:
				continue
			_w32.other = self
			GM.vset(_w32, "v_elect", 1.0)
	if (((GM.keyboard_string == "wtr"))):
		for _w33 in GM.with_list((0.0), self):
			if _w33._dead:
				continue
			_w33.other = self
			GM.vset(_w33, "v_watergun", 1.0)
	GM.keyboard_string = ""
func ev_keyrelease_67():
	if (((absf(v_pooo - 1.0) < 0.00001))):
		(GM.f_sound_play(7.0))
		v_cheat = 1.0
		GM.keyboard_string = ""
		v_pooo = 0.0
