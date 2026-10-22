extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_coins = 0.0
func ev_create():
	v_coins = 0.0
func ev_step():
	if ((v_coins > 24.0)):
		GM.G["j4var11"] = GM.G["j4var11"] + 100.0
		(GM.f_sound_play(224.0))
		for _w734 in GM.with_list((796.0), self):
			if _w734._dead:
				continue
			_w734.other = self
			(GM.f_instance_destroy(_w734))
		for _w735 in GM.with_list((1064.0), self):
			if _w735._dead:
				continue
			_w735.other = self
			(GM.f_instance_create(_w735.x, _w735.y, 1066.0))
			(GM.f_instance_destroy(_w735))
		for _w736 in GM.with_list((680.0), self):
			if _w736._dead:
				continue
			_w736.other = self
			_w736.ev_user(0.0)
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Coins: " + (GM.f_string(v_coins))) + "/25")))
