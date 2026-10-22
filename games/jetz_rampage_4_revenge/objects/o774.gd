extends "res://games/jetz_rampage_4_revenge/objects/o769.gd"
func ev_create():
	v_myposition = (GM.f_instance_number(769.0))
	alarm[int(0.0)] = 10.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_action_draw_font("Arial", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	GM.font_align = 0.0
	v_drawthings = ((130.0 + (v_myposition * 43.0)) - 43.0)
	(GM.f_draw_sprite(644.0, 0.0, GM.view_xview[0], (GM.view_yview[0] + v_drawthings)))
	(GM.f_draw_text((GM.view_xview[0] + 60.0), ((GM.view_yview[0] + v_drawthings) + 10.0), "Press ENTER!"))
	(GM.f_draw_sprite(814.0, 0.0, (GM.view_xview[0] + 10.0), (GM.view_yview[0] + v_drawthings)))
