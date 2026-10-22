extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_powerupz = ""
func ev_create():
	alarm[int(0.0)] = 200.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_draw_sprite(926.0, (-1.0), GM.view_xview[0], (GM.view_yview[0] + 550.0)))
	(GM.f_action_draw_font("Times New Roman", 18.0, 1.0, 0.0))
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 565.0), ("You have unlocked " + (GM.f_string(v_powerupz)))))
