extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_brush_color = 0.0
var v_pen_color = 0.0
func ev_step():
	if ((GM.vb(7.0, "hspeed") >= 0.0)):
		(GM.f_instance_create(((GM.view_xview[0] + (GM.f_random(800.0))) + ((GM.vb(7.0, "hspeed") * 20.0))), (GM.view_yview[0] - 2.0), 891.0))
	if ((GM.vb(7.0, "hspeed") < 0.0)):
		(GM.f_instance_create(((GM.view_xview[0] + (GM.f_random(800.0))) + ((GM.vb(7.0, "hspeed") * 20.0))), (GM.view_yview[0] - 2.0), 891.0))
func ev_draw():
	(GM.f_action_draw_font("Arial", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_sprite(525.0, 1.0, GM.view_xview[0], GM.view_yview[0]))
	v_pen_color = 0.0
	v_brush_color = 0.0
	(GM.f_draw_rectangle((GM.view_xview[0] + 5.0), (GM.view_yview[0] + 3.0), (GM.view_xview[0] + 194.0), (GM.view_yview[0] + 23.0)))
	v_brush_color = 16711680.0
	(GM.f_draw_healthbar((GM.view_xview[0] + 5.0), (GM.view_yview[0] + 4.0), ((GM.view_xview[0] + 5.0) + 189.0), (GM.view_yview[0] + 24.0), GM.vget(7.0, "v_myhealth"), 0.0, 255.0, 16711680.0, 0.0, 0.0, 0.0))
	v_pen_color = 0.0
	v_brush_color = 255.0
	(GM.f_draw_rectangle((GM.view_xview[0] + 5.0), (GM.view_yview[0] + 28.0), ((GM.view_xview[0] + 5.0) + ((189.0 / 100.0) * GM.G["warning"])), (GM.view_yview[0] + 49.0)))
	GM.font_align = 0.0
	(GM.f_draw_text((GM.view_xview[0] + 152.0), (GM.view_yview[0] + 80.0), (("" + (GM.f_string(GM.instance_count()))) + "O")))
	if ((GM.G["warning"] > 50.0)):
		(GM.f_draw_text((GM.view_xview[0] + 104.0), (GM.view_yview[0] + 56.0), "M: LOCKED!"))
	else:
		(GM.f_draw_text((GM.view_xview[0] + 104.0), (GM.view_yview[0] + 56.0), (("M: " + (GM.f_string(GM.G["donemissions"]))) + "/24")))
	(GM.f_draw_text((GM.view_xview[0] + 55.0), (GM.view_yview[0] + 80.0), (("" + (GM.f_string(GM.fps))) + "FPS")))
	(GM.f_draw_text((GM.view_xview[0] + 27.0), (GM.view_yview[0] + 56.0), (("$" + (GM.f_string((GM.vget(7.0, "v_mymoney") + GM.G["j4var11"])))) + ".00")))
