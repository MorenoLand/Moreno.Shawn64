extends "res://games/jetzfusion/objects/o219.gd"
func ev_create():
	v_sawed = 0.0
func ev_step():
	if (((v_sawed > 199.0))):
		(self.script_missionscript(0.0, 0.0, 0.0, 0.0, 0.0))
		for _w647 in GM.with_list((170.0), self):
			if _w647._dead:
				continue
			_w647.other = self
			(GM.f_instance_destroy(_w647))
		for _w648 in GM.with_list((217.0), self):
			if _w648._dead:
				continue
			_w648.other = self
			(GM.f_instance_create(1802.0, 397.0, 218.0))
		for _w649 in GM.with_list((217.0), self):
			if _w649._dead:
				continue
			_w649.other = self
			(GM.f_instance_destroy(_w649))
		(GM.f_sound_play(48.0))
		GM.G["money"] = GM.G["money"] + 100.0
		(GM.f_instance_destroy(self))
func ev_draw():
	v_pen_color = 0.0
	v_brush_color = 16711680.0
	(GM.f_draw_rectangle((GM.view_xview[0] + 100.0), 570.0, (GM.view_xview[0] + 700.0), 590.0))
	v_brush_color = 255.0
	(GM.f_draw_rectangle((GM.view_xview[0] + 100.0), 570.0, ((GM.view_xview[0] + 100.0) + (((600.0 / 200.0) * v_sawed))), 590.0))
	GM.font_align = 1.0
	(GM.f_action_draw_font("Arial", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 573.0, "BLOOD METER"))
