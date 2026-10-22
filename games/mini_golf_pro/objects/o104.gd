extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
func ev_create():
	v_wee = 0.0
	if ((absf(GM.G["effects"] - 0.0) < 0.00001)):
		(GM.f_instance_destroy(self))
func ev_step():
	if ((absf((GM.f_instance_number(149.0)) - 0.0) < 0.00001)):
		v_wee = GM.add(v_wee, 3.0)
func ev_draw():
	(GM.f_draw_sprite_ext(37.0, 1.0, GM.vb(42.0, "x"), (GM.vb(42.0, "y") + GM.vb(42.0, "sprite_height")), 1.0, 1.0, (-v_wee), 16777215.0, 0.1))
	if ((absf((GM.f_instance_number(54.0)) - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(47.0, 1.0, GM.vb(54.0, "x"), ((GM.vb(54.0, "y") + GM.vb(54.0, "sprite_height")) - 80.0), 1.0, 1.0, 0.0, 16777215.0, 1.0))
