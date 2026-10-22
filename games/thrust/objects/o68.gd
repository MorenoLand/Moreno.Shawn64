extends "res://games/thrust/scripts.gd"
var v_maxspeed = 0.0
func ev_create():
	v_maxspeed = 0.0
func ev_step():
	(GM.f_motion_add(self, (GM.f_point_direction(x, y, GM.vb(69.0, "x"), GM.vb(69.0, "y"))), 0.1))
	GM.background_vspeed[int(1.0)] = vspeed
	for _w25 in GM.with_list((0.0), self):
		if _w25._dead:
			continue
		_w25.other = self
		if ((((_w25.gravity > 0.09) and (GM.background_vspeed[int(1.0)] < 0.0))) or (((_w25.gravity < 0.4) and (GM.background_vspeed[int(1.0)] > 0.0)))):
			_w25.gravity = _w25.gravity + (GM.background_vspeed[int(1.0)] / 100.0)
func ev_draw():
	(GM.f_draw_sprite(1.0, (-1.0), 0.0, 0.0))
	if ((speed > v_maxspeed)):
		v_maxspeed = speed
	(GM.f_draw_text((x + 0.0), (y + (-30.0)), ("" + (GM.f_string(v_maxspeed)))))
