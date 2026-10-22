extends "res://games/mini_golf_pro/scripts.gd"
var v_number = 0.0
func ev_mouse_4():
	if ((absf(GM.G["online"] - 0.0) < 0.00001)):
		GM.G["players"] = v_number
		(GM.f_sound_play(25.0))
		for _w46 in GM.with_list((231.0), self):
			if _w46._dead:
				continue
			_w46.other = self
			(GM.f_instance_destroy(_w46))
		for _w47 in GM.with_list((220.0), self):
			if _w47._dead:
				continue
			_w47.other = self
			alarm[int(0.0)] = 1.0
func ev_draw():
	if (((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self)))) >= 0.5:
		(GM.f_draw_sprite(160.0, 1.0, x, y))
	if (GM.eq(v_number, GM.G["players"])):
		(GM.f_draw_sprite(160.0, 0.0, x, y))
