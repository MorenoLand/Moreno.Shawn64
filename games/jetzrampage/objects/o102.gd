extends "res://games/jetzrampage/scripts.gd"
var v_bombpower = 0.0
var v_brush_color = 0.0
var v_pen_color = 0.0
func ev_draw():
	if (((absf((GM.f_instance_number(2.0)) - 1.0) < 0.00001))):
		if (((v_bombpower > 5.0))):
			if (((GM.vb(0.0, "hspeed") > 0.0))):
				v_pen_color = 0.0
				v_brush_color = 32768.0
				(GM.f_draw_roundrect((GM.vb(0.0, "x") + 20.0), (GM.vb(0.0, "y") - 20.0), (GM.vb(0.0, "x") + 80.0), (GM.vb(0.0, "y") - 10.0)))
				v_brush_color = 255.0
				(GM.f_draw_roundrect((GM.vb(0.0, "x") + 20.0), (GM.vb(0.0, "y") - 20.0), (GM.vb(0.0, "x") + ((80.0 / 20.0) * GM.vget(3.0, "v_bombpower"))), (GM.vb(0.0, "y") - 10.0)))
			else:
				v_pen_color = 0.0
				v_brush_color = 32768.0
				(GM.f_draw_roundrect(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 20.0), (GM.vb(0.0, "x") + 60.0), (GM.vb(0.0, "y") - 10.0)))
				v_brush_color = 255.0
				(GM.f_draw_roundrect(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 20.0), (GM.vb(0.0, "x") + ((60.0 / 20.0) * GM.vget(3.0, "v_bombpower"))), (GM.vb(0.0, "y") - 10.0)))
