extends "res://games/jetzrampage/scripts.gd"
var v_blah = 0.0
var v_p2_flyer = 0.0
func ev_create():
	v_blah = 0.0
func ev_step():
	v_blah = (GM.f_point_direction((GM.vb(0.0, "x") + (GM.vb(0.0, "sprite_width") / 2.0)), (GM.vb(0.0, "y") + (GM.vb(0.0, "sprite_height") / 2.0)), (GM.vb(v_p2_flyer, "x") + (GM.vb(v_p2_flyer, "sprite_width") / 2.0)), (GM.vb(v_p2_flyer, "y") + (GM.vb(v_p2_flyer, "sprite_height") / 2.0))))
func ev_draw():
	if (((GM.vb(0.0, "hspeed") > 0.0))):
		(GM.f_draw_sprite(14.0, (v_blah / 10.0), (GM.vb(0.0, "x") + 35.0), (GM.vb(0.0, "y") - 26.0)))
	else:
		(GM.f_draw_sprite(14.0, (v_blah / 10.0), (GM.vb(0.0, "x") + 25.0), (GM.vb(0.0, "y") - 26.0)))
