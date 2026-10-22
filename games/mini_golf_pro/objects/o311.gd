extends "res://games/mini_golf_pro/scripts.gd"
var v_rot = 0.0
func ev_create():
	v_rot = 0.0
func ev_step():
	v_rot = v_rot + 2.0
func ev_draw():
	(GM.f_draw_sprite_ext(209.0, 0.0, x, y, 1.0, 1.0, v_rot, 16777215.0, 1.0))
