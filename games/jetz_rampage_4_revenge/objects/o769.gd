extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_color = 0.0
var v_drawthings = 0.0
var v_myposition = 0.0
var v_texttoshow = ""
func ev_create():
	v_myposition = (GM.f_instance_number(769.0))
	alarm[int(0.0)] = 150.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Arial", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 0.0
	v_drawthings = ((130.0 + (v_myposition * 43.0)) - 43.0)
	(GM.f_draw_sprite(644.0, 0.0, GM.view_xview[0], (GM.view_yview[0] + v_drawthings)))
	(GM.f_draw_text((GM.view_xview[0] + 60.0), ((GM.view_yview[0] + v_drawthings) + 10.0), ("" + (GM.f_string(v_texttoshow)))))
	if ((absf(v_color - 1.0) < 0.00001)):
		(GM.f_draw_sprite(736.0, 0.0, (GM.view_xview[0] + 10.0), (GM.view_yview[0] + v_drawthings)))
	if ((absf(v_color - 2.0) < 0.00001)):
		(GM.f_draw_sprite(759.0, 0.0, (GM.view_xview[0] + 10.0), (GM.view_yview[0] + v_drawthings)))
	if ((absf(v_color - 3.0) < 0.00001)):
		(GM.f_draw_sprite(750.0, 0.0, ((GM.view_xview[0] + 10.0) + 6.0), ((GM.view_yview[0] + v_drawthings) + 5.0)))
	if ((absf(v_color - 4.0) < 0.00001)):
		(GM.f_draw_sprite(760.0, 0.0, (GM.view_xview[0] + 10.0), (GM.view_yview[0] + v_drawthings)))
	if ((absf(v_color - 5.0) < 0.00001)):
		(GM.f_draw_sprite(772.0, 0.0, (GM.view_xview[0] + 10.0), (GM.view_yview[0] + v_drawthings)))
	if ((absf(v_color - 7.0) < 0.00001)):
		(GM.f_draw_sprite(809.0, 0.0, (GM.view_xview[0] + 10.0), (GM.view_yview[0] + v_drawthings)))
	if ((absf(v_color - 8.0) < 0.00001)):
		(GM.f_draw_sprite(944.0, 0.0, (GM.view_xview[0] + 10.0), (GM.view_yview[0] + v_drawthings)))
	if ((absf(v_color - 6.0) < 0.00001)):
		(GM.f_draw_sprite(946.0, 0.0, (GM.view_xview[0] + 10.0), (GM.view_yview[0] + v_drawthings)))
