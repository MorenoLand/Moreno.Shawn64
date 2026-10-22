extends "res://games/mini_golf_pro/scripts.gd"
var v_dep = 0.0
var v_yaxis = 0.0
var v_yaxis2 = 0.0
func ev_create():
	v_yaxis = (GM.f_random(768.0))
	vspeed = (15.0 + (((v_yaxis / 768.0)) * 10.0))
	v_dep = (((v_yaxis / 768.0)) * 1.5)
	v_yaxis2 = (GM.view_yview[0] + v_yaxis)
func ev_step():
	if ((y > v_yaxis2)):
		for _r13 in range(int((3.0))):
			(GM.f_instance_create(((x - 6.0) + (GM.f_random(5.0))), ((y - 6.0) + (GM.f_random(5.0))), 126.0))
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite_ext(87.0, 0.0, x, y, v_dep, v_dep, 0.0, 16777215.0, 0.5))
