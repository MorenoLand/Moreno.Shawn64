extends "res://games/street_bike_fury/objects/o127.gd"
func ev_stepend():
	x = ((GM.view_xview[0] + (GM.view_wview[0] / 2.0)) - (sprite_width / 2.0))
	y = (GM.view_yview[0] + 336.0)
func ev_step():
	if (((((GM.mouse_x > (GM.view_xview[0] + 275.0)) and (GM.mouse_x < (GM.view_xview[0] + 525.0))) and (GM.mouse_y > (GM.view_yview[0] + 336.0))) and (GM.mouse_y < (GM.view_yview[0] + 382.0)))):
		if ((absf(v_psound - 1.0) < 0.00001)):
			(GM.f_sound_play(35.0))
			v_psound = 0.0
		v_set = 0.3
		v_mouseonme = 1.0
	else:
		v_set = 1.0
		v_psound = 1.0
		v_mouseonme = 0.0
func ev_mouse_53():
	if ((GM.eq(v_set, 0.3))):
		for _w145 in GM.with_list((127.0), self):
			if _w145._dead:
				continue
			_w145.other = self
			(GM.f_instance_destroy(_w145))
		for _w146 in GM.with_list((128.0), self):
			if _w146._dead:
				continue
			_w146.other = self
			(GM.f_instance_destroy(_w146))
		for _w147 in GM.with_list((132.0), self):
			if _w147._dead:
				continue
			_w147.other = self
			(GM.f_instance_destroy(_w147))
		(GM.f_instance_create(x, y, 301.0))
		(GM.f_sound_play(16.0))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite_ext(112.0, 0.0, ((GM.view_xview[0] + (GM.view_wview[0] / 2.0)) - (sprite_width / 2.0)), (GM.view_yview[0] + 336.0), 1.0, 1.0, 0.0, 16777215.0, v_set))
