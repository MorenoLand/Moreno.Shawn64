extends "res://games/jetzfusion/scripts.gd"
var v_bricker = 0.0
func ev_create():
	v_bricker = 0.0
func ev_step():
	if (((v_bricker > 9.0))):
		(self.script_missionscript2(0.0, 0.0, 0.0, 0.0, 0.0))
		for _w470 in GM.with_list((7.0), self):
			if _w470._dead:
				continue
			_w470.other = self
			(GM.f_instance_create((_w470.x + 0.0), (_w470.y + (-40.0)), 248.0))
		for _w471 in GM.with_list((327.0), self):
			if _w471._dead:
				continue
			_w471.other = self
			(GM.f_instance_destroy(_w471))
		GM.G["money"] = GM.G["money"] + 400.0
		(GM.f_sound_play(48.0))
		for _w472 in GM.with_list((170.0), self):
			if _w472._dead:
				continue
			_w472.other = self
			(GM.f_instance_destroy(_w472))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, (("Skulls: " + (GM.f_string(v_bricker))) + "/10")))
