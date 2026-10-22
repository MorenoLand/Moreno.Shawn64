extends "res://games/jetzfusion/objects/o49.gd"
func ev_create():
	GM.G["money"] = 0.0
	GM.G["deaths"] = 0.0
	GM.G["saylevel"] = 0.0
	GM.G["jhealth"] = 0.0
	GM.G["damage"] = 0.0
	(GM.f_sound_loop(64.0))
	v_s0 = 1.0
	v_s1 = 1.0
	v_s2 = 1.0
	v_s3 = 1.0
	v_s4 = 1.0
	v_s5 = 1.0
	v_s6 = 1.0
	v_s7 = 1.0
	v_s8 = 1.0
	v_s9 = 1.0
	v_s10 = 1.0
	v_s11 = 1.0
	v_s12 = 1.0
	v_s13 = 1.0
	v_s14 = 1.0
	v_s15 = 1.0
	v_mytext = ""
	GM.G["helpvar1"] = 0.0
	GM.G["helpvar2"] = 0.0
func ev_alarm_0():
	v_mytext = ""
func ev_step():
	if (((absf((GM.f_instance_number(378.0)) - 0.0) < 0.00001))):
		if ((((GM.f_random(100.0)) < 1.0))):
			(GM.f_instance_create(0.0, 0.0, 378.0))
func ev_draw():
	(GM.f_action_draw_font("Arial", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(8421504.0))
	if (not (((v_mytext == "")))):
		(GM.f_draw_set_color(0.0))
		(GM.f_draw_rectangle((GM.view_xview[0] + 197.0), 0.0, (GM.view_xview[0] + 800.0), 60.0, (1.0 if not (((0.0)) >= 0.5) else 0.0)))
		GM.font_align = 1.0
		(GM.f_draw_text_ext((GM.view_xview[0] + 498.0), 3.0, ("" + (GM.f_string(v_mytext))), (-1.0), 550.0))
	if (((absf((GM.f_instance_number(348.0)) - 0.0) < 0.00001))):
		GM.font_align = 1.0
		(GM.f_draw_sprite(71.0, (-1.0), GM.view_xview[0], 0.0))
		(GM.f_draw_sprite(64.0, (-1.0), (GM.view_xview[0] + 2.0), 92.0))
		(GM.f_draw_text((GM.view_xview[0] + 48.0), 65.0, (("" + (GM.f_string(GM.G["money"]))) + "$")))
		(GM.f_draw_text((GM.view_xview[0] + 145.0), 65.0, ("Ammo: " + (GM.f_string(GM.G["grenades"])))))
		v_pen_color = 0.0
		v_brush_color = 255.0
		(GM.f_draw_rectangle((GM.view_xview[0] + 2.0), 2.0, ((GM.view_xview[0] + 2.0) + (((193.0 / 100.0) * GM.G["jhealth"]))), 28.0))
		(GM.f_draw_rectangle((GM.view_xview[0] + 2.0), 32.0, ((GM.view_xview[0] + 2.0) + (((193.0 / 100.0) * GM.G["damage"]))), 58.0))
		if (((GM.f_sound_isplaying(2.0)))) >= 0.5:
			(GM.f_draw_text((GM.view_xview[0] + 97.0), 97.0, "In The End"))
		else:
			if (((GM.f_sound_isplaying(55.0)))) >= 0.5:
				(GM.f_draw_text((GM.view_xview[0] + 97.0), 97.0, "Somewhere I Belong"))
			else:
				if (((GM.f_sound_isplaying(64.0)))) >= 0.5:
					(GM.f_draw_text((GM.view_xview[0] + 97.0), 97.0, "Runaway"))
func ev_keypress_27():
	(GM.f_sound_stop_all())
	(GM.f_room_goto(1.0))
func ev_keypress_13():
	if (((GM.keyboard_string == "ribit"))):
		(GM.f_instance_create(0.0, 0.0, 463.0))
		(GM.f_sound_play(48.0))
	if (((GM.keyboard_string == "poop"))):
		(GM.f_sound_play(77.0))
		(GM.f_instance_create((GM.vb(7.0, "x") + 17.0), (GM.vb(7.0, "y") + 20.0), 476.0))
	GM.keyboard_string = ""
