extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_coins = 0.0
func ev_create():
	v_coins = 0.0
func ev_step():
	if ((v_coins > 24.0)):
		GM.G["j4var11"] = GM.G["j4var11"] + 100.0
		(GM.f_sound_play(224.0))
		for _w737 in GM.with_list((796.0), self):
			if _w737._dead:
				continue
			_w737.other = self
			(GM.f_instance_destroy(_w737))
		for _w738 in GM.with_list((1066.0), self):
			if _w738._dead:
				continue
			_w738.other = self
			(GM.f_instance_destroy(_w738))
		for _w739 in GM.with_list((680.0), self):
			if _w739._dead:
				continue
			_w739.other = self
			_w739.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Coins: " + (GM.f_string(v_coins))) + "/25")))
