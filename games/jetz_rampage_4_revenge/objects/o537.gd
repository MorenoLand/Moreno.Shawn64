extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_color = 0.0
var v_down = 0.0
var v_rgb = 0.0
var v_up = 0.0
func ev_create():
	(GM.f_action_move(self, "000100000", 12.0, 0.0))
	(self.script_mp3ingameplay())
	GM.view_hborder[0] = (400.0 - (sprite_width / 2.0))
	GM.view_vborder[0] = (300.0 - (sprite_height / 2.0))
	v_color = 1.0
	alarm[int(0.0)] = 10.0
	v_rgb = 0.0
	v_up = 1.0
	v_down = 1.0
	GM.G["warning"] = 0.0
	GM.G["saylevel"] = 0.0
	GM.G["blue"] = 0.0
	GM.G["green"] = 0.0
	GM.G["red"] = 0.0
	GM.G["yellow"] = 0.0
	GM.G["silver"] = 0.0
	GM.G["black"] = 0.0
	GM.G["bluegreen"] = 0.0
	GM.G["purple"] = 0.0
	(GM.f_instance_deactivate_object(1082.0))
	(GM.f_instance_deactivate_object(1083.0))
func ev_alarm_0():
	if ((absf(v_color - 0.0) < 0.00001)):
		v_color = 1.0
	else:
		if ((absf(v_color - 1.0) < 0.00001)):
			v_color = 0.0
	alarm[int(0.0)] = 10.0
func ev_step():
	(self.script_scrollview())
	if ((absf(GM.room - 16.0) < 0.00001)):
		if ((hspeed >= 0.0)):
			(GM.f_instance_create(((GM.view_xview[0] + (GM.f_random(800.0))) + ((hspeed * 20.0))), (GM.view_yview[0] - 2.0), 891.0))
		if ((hspeed < 0.0)):
			(GM.f_instance_create(((GM.view_xview[0] + (GM.f_random(800.0))) + ((hspeed * 20.0))), (GM.view_yview[0] - 2.0), 891.0))
func ev_other_10():
	GM.G["songc"] = GM.G["songc"] + 1.0
	if ((GM.G["songc"] > (GM.G["total"] - 1.0))):
		GM.G["songc"] = 0.0
	if (((absf(GM.room - 1.0) < 0.00001))):
		(GM.f_instance_create((160.0 - 17.0), (1060.0 - 17.0), 690.0))
		(GM.f_instance_create(120.0, 1020.0, 628.0))
	else:
		(GM.f_instance_create(GM.vb(896.0, "x"), GM.vb(896.0, "y"), 7.0))
	for _w114 in GM.with_list((896.0), self):
		if _w114._dead:
			continue
		_w114.other = self
		(GM.f_instance_destroy(_w114))
	(GM.f_instance_destroy(self))
func ev_other_0():
	GM.G["songc"] = GM.G["songc"] + 1.0
	if ((GM.G["songc"] > (GM.G["total"] - 1.0))):
		GM.G["songc"] = 0.0
	if (((absf(GM.room - 1.0) < 0.00001))):
		(GM.f_instance_create((160.0 - 17.0), (1060.0 - 17.0), 690.0))
		(GM.f_instance_create(120.0, 1020.0, 628.0))
	else:
		(GM.f_instance_create(GM.vb(896.0, "x"), GM.vb(896.0, "y"), 7.0))
	for _w115 in GM.with_list((896.0), self):
		if _w115._dead:
			continue
		_w115.other = self
		(GM.f_instance_destroy(_w115))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(932.0, (-1.0), GM.view_xview[0], (GM.view_yview[0] - 10.0)))
	(GM.f_draw_sprite(926.0, (-1.0), GM.view_xview[0], (GM.view_yview[0] + 530.0)))
	if (((absf(GM.room - 1.0) < 0.00001))):
		(GM.f_action_draw_font("Times New Roman", 22.0, 0.0, 0.0))
		(GM.f_draw_set_color(65535.0))
		if ((absf(GM.room - 1.0) < 0.00001)):
			GM.font_color = (GM.f_make_color_rgb(v_rgb, v_rgb, 0.0))
		if ((absf(GM.room - 16.0) < 0.00001)):
			GM.font_color = (GM.f_make_color_rgb(0.0, 0.0, v_rgb))
		GM.font_align = 1.0
		if ((((self.script_mp3_list())) >= 0.5 and (absf(GM.G["j4var23"] - 1.0) < 0.00001))):
			if (((GM.f_string_width(GM.aget(GM.G["musicName"], GM.G["songc"]))) > 750.0)):
				(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 16.0), ((GM.f_string_copy(GM.aget(GM.G["musicName"], GM.G["songc"]), 0.0, 30.0)) + "...")))
			else:
				(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 16.0), GM.aget(GM.G["musicName"], GM.G["songc"])))
		else:
			(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 16.0), "Heart Impaled - Loveless Creation"))
		(GM.f_action_draw_font("Times New Roman", 48.0, 0.0, 0.0))
		(GM.f_draw_set_color(65535.0))
		GM.font_align = 1.0
		if ((absf(v_up - 1.0) < 0.00001)):
			v_rgb = v_rgb + 5.0
			if ((v_rgb > 200.0)):
				v_down = 1.0
				v_up = 0.0
		if ((absf(v_down - 1.0) < 0.00001)):
			v_rgb = v_rgb - 5.0
			if ((v_rgb < 1.0)):
				v_up = 1.0
				v_down = 0.0
		if ((absf(GM.room - 1.0) < 0.00001)):
			GM.font_color = (GM.f_make_color_rgb(v_rgb, v_rgb, 0.0))
		if ((absf(GM.room - 16.0) < 0.00001)):
			GM.font_color = (GM.f_make_color_rgb(0.0, 0.0, v_rgb))
		(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 532.0), "SILVER CITY"))
	if (((absf(GM.room - 16.0) < 0.00001))):
		(GM.f_action_draw_font("Times New Roman", 22.0, 0.0, 0.0))
		(GM.f_draw_set_color(16711680.0))
		if ((absf(GM.room - 1.0) < 0.00001)):
			GM.font_color = (GM.f_make_color_rgb(v_rgb, v_rgb, 0.0))
		if ((absf(GM.room - 16.0) < 0.00001)):
			GM.font_color = (GM.f_make_color_rgb(0.0, 0.0, v_rgb))
		GM.font_align = 1.0
		if ((((self.script_mp3_list())) >= 0.5 and (absf(GM.G["j4var23"] - 1.0) < 0.00001))):
			if (((GM.f_string_width(GM.aget(GM.G["musicName"], GM.G["songc"]))) > 750.0)):
				(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 16.0), ((GM.f_string_copy(GM.aget(GM.G["musicName"], GM.G["songc"]), 0.0, 30.0)) + "...")))
			else:
				(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 16.0), GM.aget(GM.G["musicName"], GM.G["songc"])))
		else:
			(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 16.0), "Heart Impaled - Creator"))
		(GM.f_action_draw_font("Times New Roman", 48.0, 0.0, 0.0))
		(GM.f_draw_set_color(65535.0))
		GM.font_align = 1.0
		if ((absf(v_up - 1.0) < 0.00001)):
			v_rgb = v_rgb + 5.0
			if ((v_rgb > 200.0)):
				v_down = 1.0
				v_up = 0.0
		if ((absf(v_down - 1.0) < 0.00001)):
			v_rgb = v_rgb - 5.0
			if ((v_rgb < 1.0)):
				v_up = 1.0
				v_down = 0.0
		if ((absf(GM.room - 1.0) < 0.00001)):
			GM.font_color = (GM.f_make_color_rgb(v_rgb, v_rgb, 0.0))
		if ((absf(GM.room - 16.0) < 0.00001)):
			GM.font_color = (GM.f_make_color_rgb(0.0, 0.0, v_rgb))
		(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 532.0), "LIGHTNING CITY"))
