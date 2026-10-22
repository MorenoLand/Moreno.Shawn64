extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_step():
	if ((absf((GM.f_instance_number(806.0)) - 1.0) < 0.00001)):
		v_wee = (GM.f_point_direction((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)), (GM.vb(806.0, "x") + (GM.vb(806.0, "sprite_width") / 2.0)), (GM.vb(806.0, "y") + (GM.vb(806.0, "sprite_height") / 2.0))))
	if ((absf((GM.f_instance_number(807.0)) - 1.0) < 0.00001)):
		v_wee = (GM.f_point_direction((GM.vb(7.0, "x") + (GM.vb(7.0, "sprite_width") / 2.0)), (GM.vb(7.0, "y") + (GM.vb(7.0, "sprite_height") / 2.0)), (GM.vb(807.0, "x") + (GM.vb(807.0, "sprite_width") / 2.0)), (GM.vb(807.0, "y") + (GM.vb(807.0, "sprite_height") / 2.0))))
func ev_draw():
	(GM.f_draw_sprite(842.0, (v_wee / 10.0), (GM.vb(791.0, "x") + 67.0), (GM.vb(791.0, "y") - 18.0)))
