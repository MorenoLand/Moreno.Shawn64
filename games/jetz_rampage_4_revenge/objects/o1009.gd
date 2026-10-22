extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_havexbox = 0.0
var v_smashlimit = 0.0
func ev_create():
	v_havexbox = 1.0
	v_smashlimit = 0.0
func ev_alarm_0():
	v_havexbox = 1.0
func ev_stepend():
	x = GM.vb(7.0, "x")
	y = (GM.vb(7.0, "y") + 5.0)
	if ((v_smashlimit > 19.0)):
		if ((absf((GM.f_instance_number(1008.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 400.0
			for _w675 in GM.with_list((1008.0), self):
				if _w675._dead:
					continue
				_w675.other = self
				(GM.f_instance_destroy(_w675))
		if ((absf((GM.f_instance_number(1007.0)) - 1.0) < 0.00001)):
			GM.G["j4var11"] = GM.G["j4var11"] + 300.0
			for _w676 in GM.with_list((1007.0), self):
				if _w676._dead:
					continue
				_w676.other = self
				(GM.f_instance_create(_w676.x, _w676.y, 1008.0))
				(GM.f_instance_destroy(_w676))
		(GM.f_sound_play(224.0))
		for _w677 in GM.with_list((680.0), self):
			if _w677._dead:
				continue
			_w677.other = self
			_w677.ev_user(0.0)
func ev_key_17():
	if (((absf(v_havexbox - 1.0) < 0.00001) and (absf((GM.f_instance_number(1010.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(x, y, 1010.0))
		alarm[int(0.0)] = 30.0
		v_havexbox = 0.0
func ev_draw():
	(GM.f_action_draw_font("Vectroid Cosmo", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_sprite(999.0, (-1.0), x, y))
	GM.font_align = 1.0
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), (("Smashed: " + (GM.f_string(v_smashlimit))) + "/20")))
