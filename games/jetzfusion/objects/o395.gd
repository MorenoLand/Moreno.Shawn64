extends "res://games/jetzfusion/scripts.gd"
var v_wow = 0.0
func ev_create():
	v_wow = (GM.f_round((GM.f_random(2.0))))
	if ((GM.vb(394.0, "hspeed") > 0.0)):
		if ((absf(v_wow - 0.0) < 0.00001)):
			sprite_index = 332.0
		if ((absf(v_wow - 1.0) < 0.00001)):
			sprite_index = 335.0
		if ((absf(v_wow - 2.0) < 0.00001)):
			sprite_index = 334.0
	else:
		if ((absf(v_wow - 0.0) < 0.00001)):
			sprite_index = 331.0
		if ((absf(v_wow - 1.0) < 0.00001)):
			sprite_index = 336.0
		if ((absf(v_wow - 2.0) < 0.00001)):
			sprite_index = 333.0
func ev_step():
	if ((GM.vb(394.0, "hspeed") > 0.0)):
		x = (GM.vb(394.0, "x") + 7.0)
		y = (GM.vb(394.0, "y") - 1.0)
	else:
		x = (GM.vb(394.0, "x") - 7.0)
		y = (GM.vb(394.0, "y") - 1.0)
func ev_other_7():
	(GM.f_instance_destroy(self))
func ev_draw():
	if ((GM.vb(394.0, "hspeed") > 0.0)):
		if ((absf(v_wow - 0.0) < 0.00001)):
			(GM.f_draw_sprite(332.0, (-1.0), (GM.vb(394.0, "x") + 7.0), (GM.vb(394.0, "y") - 1.0)))
		if ((absf(v_wow - 1.0) < 0.00001)):
			(GM.f_draw_sprite(335.0, (-1.0), (GM.vb(394.0, "x") + 7.0), (GM.vb(394.0, "y") - 1.0)))
		if ((absf(v_wow - 2.0) < 0.00001)):
			(GM.f_draw_sprite(334.0, (-1.0), (GM.vb(394.0, "x") + 7.0), (GM.vb(394.0, "y") - 1.0)))
	else:
		if ((absf(v_wow - 0.0) < 0.00001)):
			(GM.f_draw_sprite(331.0, (-1.0), (GM.vb(394.0, "x") - 7.0), (GM.vb(394.0, "y") - 1.0)))
		if ((absf(v_wow - 1.0) < 0.00001)):
			(GM.f_draw_sprite(336.0, (-1.0), (GM.vb(394.0, "x") - 7.0), (GM.vb(394.0, "y") - 1.0)))
		if ((absf(v_wow - 2.0) < 0.00001)):
			(GM.f_draw_sprite(333.0, (-1.0), (GM.vb(394.0, "x") - 7.0), (GM.vb(394.0, "y") - 1.0)))
