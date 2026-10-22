extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_targethit = 0.0
func ev_create():
	v_targethit = 0.0
func ev_step():
	if ((v_targethit > 7.0)):
		GM.G["j4var11"] = GM.G["j4var11"] + 200.0
		(GM.f_sound_play(224.0))
		for _w721 in GM.with_list((796.0), self):
			if _w721._dead:
				continue
			_w721.other = self
			(GM.f_instance_destroy(_w721))
		for _w722 in GM.with_list((1063.0), self):
			if _w722._dead:
				continue
			_w722.other = self
			(GM.f_instance_destroy(_w722))
		for _w723 in GM.with_list((680.0), self):
			if _w723._dead:
				continue
			_w723.other = self
			_w723.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Target Hit: " + (GM.f_string(v_targethit))) + "/8")))
