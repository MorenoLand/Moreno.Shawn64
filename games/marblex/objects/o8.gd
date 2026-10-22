extends "res://games/marblex/scripts.gd"
var v_color = 0.0
var v_colorstart = 0.0
var v_ham = 0.0
var v_what = 0.0
func ev_create():
	v_ham = 1.0
	v_color = 0.1
	v_colorstart = 0.0
	v_what = 1.0
	if (((absf(GM.room - 1.0) < 0.00001) and not (((GM.f_sound_isplaying(0.0))) >= 0.5))):
		(GM.f_sound_loop(0.0))
	if (((absf(GM.room - 3.0) < 0.00001) and not (((GM.f_sound_isplaying(6.0))) >= 0.5))):
		(GM.f_sound_loop(6.0))
	if (((absf(GM.room - 6.0) < 0.00001) and not (((GM.f_sound_isplaying(7.0))) >= 0.5))):
		(GM.f_sound_loop(7.0))
	if (((absf(GM.room - 7.0) < 0.00001) and not (((GM.f_sound_isplaying(8.0))) >= 0.5))):
		(GM.f_sound_loop(8.0))
	if (((absf(GM.room - 9.0) < 0.00001) and not (((GM.f_sound_isplaying(11.0))) >= 0.5))):
		(GM.f_sound_loop(11.0))
	if (((absf(GM.room - 10.0) < 0.00001) and not (((GM.f_sound_isplaying(13.0))) >= 0.5))):
		(GM.f_sound_loop(13.0))
	if (((absf(GM.room - 11.0) < 0.00001) and not (((GM.f_sound_isplaying(9.0))) >= 0.5))):
		(GM.f_sound_loop(9.0))
	if (((absf(GM.room - 14.0) < 0.00001) and not (((GM.f_sound_isplaying(6.0))) >= 0.5))):
		(GM.f_sound_loop(6.0))
	if (((absf(GM.room - 15.0) < 0.00001) and not (((GM.f_sound_isplaying(11.0))) >= 0.5))):
		(GM.f_sound_loop(11.0))
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	v_ham = 0.0
func ev_draw():
	(GM.f_action_draw_font("System", 0.0, 0.0, 0.0))
	(GM.f_draw_set_color(0.0))
	if (((absf((GM.f_instance_number(0.0)) - 1.0) < 0.00001))):
		GM.font_align = 1.0
		if ((absf(v_ham - 2.0) < 0.00001)):
			(GM.f_draw_text((GM.vb(23.0, "x") + (GM.vb(23.0, "sprite_width") / 2.0)), (GM.vb(23.0, "y") - 18.0), "Need blue key"))
		if ((absf(v_ham - 3.0) < 0.00001)):
			(GM.f_draw_text((GM.vb(23.0, "x") + (GM.vb(23.0, "sprite_width") / 2.0)), (GM.vb(23.0, "y") - 18.0), "Blue door unlocked"))
		GM.font_align = 1.0
		if ((absf(v_ham - 1.0) < 0.00001)):
			if ((absf(GM.room - 1.0) < 0.00001)):
				(GM.f_draw_text((GM.vb(23.0, "x") + (GM.vb(23.0, "sprite_width") / 2.0)), (GM.vb(23.0, "y") - 18.0), "Level 1"))
			if ((absf(GM.room - 3.0) < 0.00001)):
				(GM.f_draw_text((GM.vb(23.0, "x") + (GM.vb(23.0, "sprite_width") / 2.0)), (GM.vb(23.0, "y") - 18.0), "Level 2"))
			if ((absf(GM.room - 6.0) < 0.00001)):
				(GM.f_draw_text((GM.vb(23.0, "x") + (GM.vb(23.0, "sprite_width") / 2.0)), (GM.vb(23.0, "y") - 18.0), "Level 3"))
			if ((absf(GM.room - 7.0) < 0.00001)):
				(GM.f_draw_text((GM.vb(23.0, "x") + (GM.vb(23.0, "sprite_width") / 2.0)), (GM.vb(23.0, "y") - 18.0), "Level 4"))
			if ((absf(GM.room - 9.0) < 0.00001)):
				(GM.f_draw_text((GM.vb(23.0, "x") + (GM.vb(23.0, "sprite_width") / 2.0)), (GM.vb(23.0, "y") - 18.0), "Level 5"))
			if ((absf(GM.room - 10.0) < 0.00001)):
				(GM.f_draw_text((GM.vb(23.0, "x") + (GM.vb(23.0, "sprite_width") / 2.0)), (GM.vb(23.0, "y") - 18.0), "Level 6"))
			if ((absf(GM.room - 11.0) < 0.00001)):
				(GM.f_draw_text((GM.vb(23.0, "x") + (GM.vb(23.0, "sprite_width") / 2.0)), (GM.vb(23.0, "y") - 18.0), "Level 7"))
			if ((absf(GM.room - 14.0) < 0.00001)):
				(GM.f_draw_text((GM.vb(23.0, "x") + (GM.vb(23.0, "sprite_width") / 2.0)), (GM.vb(23.0, "y") - 18.0), "Level 8"))
			if ((absf(GM.room - 15.0) < 0.00001)):
				(GM.f_draw_text((GM.vb(23.0, "x") + (GM.vb(23.0, "sprite_width") / 2.0)), (GM.vb(23.0, "y") - 18.0), "Level 9"))
func ev_keypress_27():
	(GM.f_sound_stop(0.0))
	(GM.f_sound_stop(6.0))
	(GM.f_sound_stop(7.0))
	(GM.f_sound_stop(8.0))
	(GM.f_sound_stop(11.0))
	(GM.f_sound_stop(13.0))
	(GM.f_sound_stop(9.0))
	(GM.f_room_goto(4.0))
