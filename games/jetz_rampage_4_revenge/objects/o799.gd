extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_targethit = 0.0
func ev_create():
	v_targethit = 0.0
func ev_step():
	if ((v_targethit > 5.0)):
		GM.G["j4var11"] = GM.G["j4var11"] + 200.0
		(GM.f_sound_play(224.0))
		for _w469 in GM.with_list((796.0), self):
			if _w469._dead:
				continue
			_w469.other = self
			(GM.f_instance_destroy(_w469))
		for _w470 in GM.with_list((680.0), self):
			if _w470._dead:
				continue
			_w470.other = self
			(GM.f_instance_destroy(_w470))
		for _w471 in GM.with_list((798.0), self):
			if _w471._dead:
				continue
			_w471.other = self
			(GM.f_instance_destroy(_w471))
		for _w472 in GM.with_list((800.0), self):
			if _w472._dead:
				continue
			_w472.other = self
			(GM.f_instance_destroy(_w472))
		for _w473 in GM.with_list((801.0), self):
			if _w473._dead:
				continue
			_w473.other = self
			(GM.f_instance_destroy(_w473))
		for _w474 in GM.with_list((794.0), self):
			if _w474._dead:
				continue
			_w474.other = self
			(GM.f_instance_destroy(_w474))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Target Hit: " + (GM.f_string(v_targethit))) + "/6")))
