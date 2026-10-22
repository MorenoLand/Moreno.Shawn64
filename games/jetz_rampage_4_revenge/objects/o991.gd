extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_text = 0.0
func ev_create():
	(GM.f_action_move(self, "000100000", 10.0, 0.0))
func ev_step():
	(GM.f_motion_add(self, 270.0, 0.05))
	if ((hspeed < 0.0)):
		hspeed = hspeed + 0.13
func ev_other_0():
	if ((y > GM.room_height)):
		(GM.f_instance_destroy(self))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Times New Roman", 36.0, 0.0, 0.0))
	(GM.f_draw_set_color(16711680.0))
	(GM.f_draw_text((x + 0.0), (y + 0.0), ("" + (GM.f_string(v_text)))))
