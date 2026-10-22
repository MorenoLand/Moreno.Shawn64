extends "res://games/thrust/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 450.0
func ev_alarm_0():
	alarm[int(0.0)] = 450.0
	(GM.f_sound_play(12.0))
	for _w21 in GM.with_list((0.0), self):
		if _w21._dead:
			continue
		_w21.other = self
		if ((absf(_w21.gravity_direction - 270.0) < 0.00001)):
			(GM.f_screen_gamma((-0.2), (-0.2), 0.2))
			_w21.gravity_direction = 90.0
		else:
			if ((absf(_w21.gravity_direction - 90.0) < 0.00001)):
				(GM.f_screen_gamma(0.0, 0.0, 0.0))
				_w21.gravity_direction = 270.0
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), ("Flip: " + (GM.f_string((GM.f_round((alarm[int(0.0)] / 30.0))))))))
