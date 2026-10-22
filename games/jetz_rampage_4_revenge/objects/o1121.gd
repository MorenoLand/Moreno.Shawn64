extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_holdit = 0.0
var v_peopledead = 0.0
func ev_create():
	v_peopledead = 0.0
	v_holdit = GM.G["warning"]
func ev_step():
	if ((v_peopledead >= 60.0)):
		if (((GM.f_instance_number(1098.0)) > 0.0)):
			GM.G["j4var11"] = GM.G["j4var11"] + 400.0
			(GM.f_sound_play(224.0))
			for _w768 in GM.with_list((1098.0), self):
				if _w768._dead:
					continue
				_w768.other = self
				(GM.f_instance_destroy(_w768))
			for _w769 in GM.with_list((680.0), self):
				if _w769._dead:
					continue
				_w769.other = self
				_w769.ev_user(0.0)
			(GM.f_instance_destroy(self))
		if (((GM.f_instance_number(1097.0)) > 0.0)):
			GM.G["j4var11"] = GM.G["j4var11"] + 300.0
			(GM.f_sound_play(224.0))
			for _w770 in GM.with_list((1097.0), self):
				if _w770._dead:
					continue
				_w770.other = self
				(GM.f_instance_create(_w770.x, _w770.y, 1098.0))
				(GM.f_instance_destroy(_w770))
			for _w771 in GM.with_list((680.0), self):
				if _w771._dead:
					continue
				_w771.other = self
				_w771.ev_user(0.0)
			(GM.f_instance_destroy(self))
	GM.G["warning"] = v_holdit
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Kills: " + (GM.f_string(v_peopledead))) + "/60")))
