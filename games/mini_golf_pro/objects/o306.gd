extends "res://games/mini_golf_pro/scripts.gd"
var v_angle = 0.0
func ev_create():
	v_angle = 0.0
func ev_step():
	v_angle = v_angle + 16.0
func ev_draw():
	(GM.f_draw_sprite(203.0, 0.0, x, y))
	(GM.f_draw_sprite_ext(202.0, 0.0, (x + 22.0), (y + 20.0), 1.0, 1.0, v_angle, 16777215.0, 1.0))
