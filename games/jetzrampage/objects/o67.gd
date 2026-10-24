extends "res://games/jetzrampage/scripts.gd"
var v_blab = 0.0
var v_brush_color = 0.0
var v_cheat = 0.0
var v_finaltime = 0.0
var v_pen_color = 0.0
var v_poo = 0.0
var v_pooo = 0.0
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
	v_cheat = 0.0
	v_finaltime = 0.0
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
func ev_step():
	v_finaltime = v_finaltime + 1.0
	if (((GM.G["lives"] > 100.0))):
		if (((absf(v_wow9 - 1.0) < 0.00001))):
			await GM.f_show_message((("Great Job!  Your time was: " + (GM.f_string(v_finaltime))) + "MS"))
			v_wow9 = 0.0
		GM.G["lives"] = 100.0
	if (((GM.G["lives"] > 10.0))):
		if (((absf(v_wow - 1.0) < 0.00001))):
			(GM.f_instance_create(0.0, 1249.0, 122.0))
			v_wow = 0.0
	if (((GM.G["lives"] > 60.0))):
		if (((absf(v_wow2 - 1.0) < 0.00001))):
			(GM.f_sound_play(39.0))
			for _w33 in GM.with_list((120.0), self):
				if _w33._dead:
					continue
				_w33.other = self
				GM.vset(_w33, "v_bombs", 1.0)
			v_wow2 = 0.0
	if (((GM.G["lives"] > 20.0))):
		if (((absf(v_wow3 - 1.0) < 0.00001))):
			(GM.f_sound_play(53.0))
			v_wow3 = 0.0
	if (((GM.G["lives"] > 40.0))):
		if (((absf(v_wow5 - 1.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 178.0))
			(GM.f_instance_create(GM.vb(0.0, "x"), (-79.0), 71.0))
			v_wow5 = 0.0
	if (((GM.G["lives"] > 80.0))):
		if (((absf(v_wow6 - 1.0) < 0.00001))):
			(GM.f_instance_create(0.0, 0.0, 178.0))
			(GM.f_instance_create(GM.vb(0.0, "x"), (-79.0), 71.0))
			v_wow6 = 0.0
	if (((GM.G["lives"] > 90.0))):
		if (((absf(v_wow7 - 1.0) < 0.00001))):
			(GM.f_instance_create(0.0, 1420.0, 142.0))
			v_wow7 = 0.0
func ev_other_4():
	GM.G["lives"] = 0.0
	GM.G["poo"] = 0.0
	GM.G["bombs"] = 5.0
func ev_draw():
	(GM.f_draw_sprite(183.0, (-1.0), (GM.view_xview[int(0.0)] + 720.0), GM.view_yview[int(0.0)]))
	if (((absf((GM.f_instance_number(2.0)) - 1.0) < 0.00001))):
		if (((absf(GM.vget(0.0, "v_weaponselect") - 1.0) < 0.00001))):
			(GM.f_draw_sprite(3.0, (-1.0), (GM.view_xview[int(0.0)] + 745.0), (GM.view_yview[int(0.0)] + 25.0)))
		else:
			if (((absf(GM.vget(0.0, "v_weaponselect") - 2.0) < 0.00001))):
				(GM.f_draw_sprite(153.0, (-1.0), (GM.view_xview[int(0.0)] + 745.0), (GM.view_yview[int(0.0)] + 25.0)))
			else:
				if (((absf(GM.vget(0.0, "v_weaponselect") - 3.0) < 0.00001))):
					(GM.f_draw_sprite(176.0, (-1.0), (GM.view_xview[int(0.0)] + 745.0), (GM.view_yview[int(0.0)] + 25.0)))
				else:
					if (((absf(GM.vget(0.0, "v_weaponselect") - 4.0) < 0.00001))):
						(GM.f_draw_sprite(174.0, (-1.0), (GM.view_xview[int(0.0)] + 745.0), (GM.view_yview[int(0.0)] + 25.0)))
					else:
						if (((absf(GM.vget(0.0, "v_weaponselect") - 5.0) < 0.00001))):
							(GM.f_draw_sprite(104.0, (-1.0), (GM.view_xview[int(0.0)] + 751.0), (GM.view_yview[int(0.0)] + 31.0)))
							(GM.f_action_draw_font("Times New Roman", 0.0, 0.0, 0.0))
							(GM.f_draw_set_color(0.0))
							(GM.f_draw_text((GM.view_xview[int(0.0)] + 728.0), (GM.view_yview[int(0.0)] + 53.0), ("Ammo: " + (GM.f_string(GM.G["bombs"])))))
						else:
							if (((absf(GM.vget(0.0, "v_weaponselect") - 6.0) < 0.00001))):
								(GM.f_draw_sprite(187.0, (-1.0), (GM.view_xview[int(0.0)] + 745.0), (GM.view_yview[int(0.0)] + 25.0)))
								(GM.f_action_draw_font("Times New Roman", 0.0, 0.0, 0.0))
								(GM.f_draw_set_color(0.0))
								(GM.f_draw_text((GM.view_xview[int(0.0)] + 728.0), (GM.view_yview[int(0.0)] + 53.0), ("Ammo: " + (GM.f_string(GM.G["bombs"])))))
	if (((absf(v_cheat - 1.0) < 0.00001))):
		(GM.f_action_draw_font("System", 0.0, 0.0, 0.0))
		(GM.f_draw_set_color(0.0))
		(GM.f_draw_text((GM.view_xview[int(0.0)] + 40.0), (GM.view_yview[int(0.0)] + 540.0), GM.add(GM.keyboard_string, "|")))
	v_pen_color = 0.0
	v_brush_color = 16711680.0
	(GM.f_draw_roundrect(GM.view_xview[int(0.0)], GM.view_yview[int(0.0)], (GM.view_xview[int(0.0)] + 201.0), (GM.view_yview[int(0.0)] + 20.0)))
	v_brush_color = 255.0
	(GM.f_draw_roundrect(GM.view_xview[int(0.0)], GM.view_yview[int(0.0)], (GM.view_xview[int(0.0)] + ((201.0 / 100.0) * GM.G["lives"])), (GM.view_yview[int(0.0)] + 20.0)))
	v_pen_color = 0.0
	v_brush_color = 16711680.0
	(GM.f_draw_roundrect(GM.view_xview[int(0.0)], (GM.view_yview[int(0.0)] + 25.0), (GM.view_xview[int(0.0)] + 201.0), (GM.view_yview[int(0.0)] + 45.0)))
	v_brush_color = 255.0
	(GM.f_draw_roundrect(GM.view_xview[int(0.0)], (GM.view_yview[int(0.0)] + 25.0), (GM.view_xview[int(0.0)] + ((201.0 / 100.0) * GM.G["poo"])), (GM.view_yview[int(0.0)] + 45.0)))
	(GM.f_action_draw_font("System", 0.0, 0.0, 0.0))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_text((GM.view_xview[int(0.0)] + 25.0), (GM.view_yview[int(0.0)] + 3.0), "Destruction Meter"))
	(GM.f_draw_text((GM.view_xview[int(0.0)] + 25.0), (GM.view_yview[int(0.0)] + 28.0), "Health"))
func ev_keypress_80():
	(GM.f_sound_play(7.0))
	(self.script_game_pause(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_keypress_27():
	(GM.f_sound_stop(9.0))
	(GM.f_sound_stop(10.0))
	(GM.f_sound_stop(36.0))
	(GM.f_sound_stop(37.0))
	(GM.f_sound_stop(39.0))
	(GM.f_sound_loop(35.0))
	(GM.f_room_goto(8.0))
func ev_keypress_13():
	pass
func ev_keyrelease_67():
	if (((absf(v_pooo - 1.0) < 0.00001))):
		(GM.f_sound_play(7.0))
		v_cheat = 1.0
		GM.keyboard_string = ""
		v_pooo = 0.0
