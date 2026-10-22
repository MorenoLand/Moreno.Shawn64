extends "res://games/jetzfusion/scripts.gd"
var v_screens = 0.0
var v_selection = 0.0
func ev_create():
	(GM.f_sound_loop(5.0))
	v_selection = 1.0
	v_screens = 2.0
	if not ((((GM.f_file_exists("JETZ.JF")))) >= 0.5):
		GM.G["nitrounlocked"] = 0.0
		GM.G["orbitunlocked"] = 0.0
		GM.G["battleunlocked"] = 0.0
		GM.G["chainsaw"] = 0.0
		GM.G["doublepistols"] = 0.0
		GM.G["shotgun"] = 0.0
		GM.G["taser"] = 0.0
		GM.G["inferno"] = 0.0
		GM.G["lightsaber"] = 0.0
		GM.G["photoncannon"] = 0.0
		GM.G["boomerang"] = 0.0
func ev_step():
	if (not ((((GM.f_sound_isplaying(5.0)))) >= 0.5)):
		(GM.f_sound_loop(5.0))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Dot-Matrix", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16711680.0))
	if ((absf(v_selection - 1.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), 475.0, "Flare City"))
	if ((absf(v_selection - 2.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), 475.0, "Nitro City"))
	if ((absf(v_selection - 3.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), 475.0, "Orbit City"))
	if ((absf(v_selection - 4.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), 475.0, "Death Match"))
	if ((absf(v_selection - 5.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), 475.0, "Credits"))
	if ((absf(v_selection - 6.0) < 0.00001)):
		if ((absf(GM.G["colory"] - 16.0) < 0.00001)):
			(GM.f_draw_text((GM.room_width / 2.0), 475.0, "Switch to 32bit Color"))
		if ((absf(GM.G["colory"] - 32.0) < 0.00001)):
			(GM.f_draw_text((GM.room_width / 2.0), 475.0, "Switch to 16bit Color"))
	if ((absf(v_selection - 7.0) < 0.00001)):
		(GM.f_draw_text((GM.room_width / 2.0), 475.0, "Exit"))
func ev_keypress_40():
	if (not (((absf(v_selection - 7.0) < 0.00001)))):
		(GM.f_sound_play(46.0))
		v_selection = v_selection + 1.0
func ev_keypress_38():
	if (not (((absf(v_selection - 1.0) < 0.00001)))):
		(GM.f_sound_play(46.0))
		v_selection = v_selection + (-1.0)
func ev_keypress_27():
	(GM.f_game_end())
func ev_keypress_13():
	if (((absf(v_selection - 1.0) < 0.00001))):
		(GM.f_sound_stop(5.0))
		(GM.f_room_goto(0.0))
	if (((absf(v_selection - 2.0) < 0.00001))):
		if (((absf(GM.G["nitrounlocked"] - 1.0) < 0.00001))):
			(GM.f_sound_stop(5.0))
			(GM.f_room_goto(3.0))
		else:
			(GM.f_sound_play(33.0))
	if (((absf(v_selection - 3.0) < 0.00001))):
		if (((absf(GM.G["orbitunlocked"] - 1.0) < 0.00001))):
			(GM.f_sound_stop(5.0))
			(GM.f_room_goto(6.0))
		else:
			(GM.f_sound_play(33.0))
	if (((absf(v_selection - 6.0) < 0.00001))):
		if ((absf(GM.G["colory"] - 16.0) < 0.00001)):
			(GM.f_set_graphics_mode(1.0, 800.0, 32.0, 120.0, 1.0, 1.0, 1.0))
			GM.G["colory"] = 32.0
		else:
			if ((absf(GM.G["colory"] - 32.0) < 0.00001)):
				(GM.f_set_graphics_mode(1.0, 800.0, 16.0, 120.0, 1.0, 1.0, 1.0))
				GM.G["colory"] = 16.0
	if (((absf(v_selection - 5.0) < 0.00001))):
		(GM.f_sound_stop(5.0))
		(GM.f_room_goto(5.0))
	if (((absf(v_selection - 4.0) < 0.00001))):
		if (((absf(GM.G["battleunlocked"] - 1.0) < 0.00001))):
			(GM.f_sound_stop(5.0))
			(GM.f_room_goto(7.0))
		else:
			(GM.f_sound_play(33.0))
	if (((absf(v_selection - 7.0) < 0.00001))):
		(GM.f_game_end())
