extends "res://games/infection2/scripts.gd"
var v_breaks = 0.0
var v_rotation = 0.0
func ev_create():
	v_rotation = (-45.0)
	x = (-200.0)
	y = 150.0
	(GM.f_motion_add(self, (-30.0), 20.0))
	v_breaks = 0.0
func ev_alarm_0():
	v_rotation = v_rotation + 15.0
	friction = 0.2
func ev_step():
	if ((((x + (sprite_width / 2.0)) > 0.0) and (absf(v_breaks - 0.0) < 0.00001))):
		alarm[int(0.0)] = 20.0
		v_breaks = 1.0
	if (((absf(v_breaks - 1.0) < 0.00001) and (hspeed > 0.0))):
		v_rotation = v_rotation + 0.5
		speed = speed - 0.5
func ev_draw():
	(GM.f_draw_sprite_ext(22.0, 0.0, x, y, 1.0, 1.0, v_rotation, 16777215.0, 1.0))
