extends "res://games/jetzfusion/scripts.gd"
var v_brush_color = 0.0
var v_pen_color = 0.0
var v_sawed = 0.0
func ev_create():
	v_sawed = 0.0
func ev_step():
	if (((v_sawed > 99.0))):
		(self.script_missionscript(0.0, 0.0, 0.0, 0.0, 0.0))
		for _w292 in GM.with_list((158.0), self):
			if _w292._dead:
				continue
			_w292.other = self
			(GM.f_instance_create((_w292.x + 0.0), (_w292.y + 0.0), 217.0))
		for _w293 in GM.with_list((170.0), self):
			if _w293._dead:
				continue
			_w293.other = self
			(GM.f_instance_destroy(_w293))
		for _w294 in GM.with_list((158.0), self):
			if _w294._dead:
				continue
			_w294.other = self
			(GM.f_instance_destroy(_w294))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 100.0
		(GM.f_instance_destroy(self))
func ev_draw():
	v_pen_color = 0.0
	v_brush_color = 16711680.0
	(GM.f_draw_rectangle((GM.view_xview[0] + 100.0), 570.0, (GM.view_xview[0] + 700.0), 590.0))
	v_brush_color = 255.0
	(GM.f_draw_rectangle((GM.view_xview[0] + 100.0), 570.0, ((GM.view_xview[0] + 100.0) + (((600.0 / 100.0) * v_sawed))), 590.0))
	GM.font_align = 1.0
	(GM.f_action_draw_font("Arial", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 573.0, "BLOOD METER"))
