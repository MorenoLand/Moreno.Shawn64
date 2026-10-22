extends "res://games/bounty_hunter_sx/scripts.gd"
var v_current_text = ""
var v_font_name = ""
var v_font_size = 0.0
var v_t = 0.0
var v_tndex = 0.0
var v_tpos = 0.0
var v_tspeed = 0.0
var v_ttext = 0.0
var v_woh = 0.0
func ev_create():
	v_woh = 35.0
	(self.script_init_typewriter(2.0))
	alarm[int(0.0)] = v_tspeed
func ev_alarm_0():
	alarm[int(0.0)] = v_tspeed
	if ((absf(v_tndex - (v_t + 1.0)) >= 0.00001)):
		if ((absf(v_tpos - ((GM.f_string_length(GM.aget(v_ttext, v_tndex))) + 1.0)) >= 0.00001)):
			v_current_text = (GM.f_string_copy(GM.aget(v_ttext, v_tndex), 0.0, v_tpos))
			v_tpos = v_tpos + 1.0
			if (not (((GM.f_sound_isplaying(333.0))) >= 0.5)):
				(GM.f_sound_play(333.0))
		else:
			alarm[int(0.0)] = v_woh
			v_tndex = v_tndex + 1.0
			v_tpos = 0.0
	else:
		self.ev_user(0.0)
func ev_other_10():
	(GM.f_room_goto(30.0))
func ev_draw():
	GM.font_color = 12632256.0
	v_font_name = "Courier"
	v_font_size = 15.0
	GM.font_align = 1.0
	(GM.f_draw_text(512.0, 250.0, v_current_text))
func ev_keypress_13():
	(GM.f_room_goto(30.0))
