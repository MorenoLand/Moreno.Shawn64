extends "res://games/mini_golf_pro/scripts.gd"
var v_personselect = 0.0
var v_scalex = 0.0
var v_spin = 0.0
var v_sprite154 = 0.0
var v_trans = 0.0
func ev_create():
	v_scalex = (1.0 + (GM.f_random(1.0)))
	v_spin = 0.0
	speed = (5.0 + (GM.f_random(3.0)))
	direction = (GM.f_random(360.0))
	v_trans = 0.0
	v_personselect = 0.0
func ev_step():
	v_spin = v_spin + 3.0
	if ((v_trans < 0.1)):
		v_trans = v_trans + 0.01
func ev_other_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite_ext(v_sprite154, 0.0, x, y, v_scalex, v_scalex, v_spin, 16777215.0, v_trans))
