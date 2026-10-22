extends "res://games/jetzfusion/scripts.gd"
var v_spite_height = 0.0
func ev_create():
	if ((((GM.f_instance_number(239.0)) > 0.0))):
		alarm[int(0.0)] = (20.0 * 30.0)
	if ((((GM.f_instance_number(245.0)) > 0.0))):
		alarm[int(0.0)] = (10.0 * 30.0)
func ev_alarm_0():
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
	(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
	for _r314 in range(int((20.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(v_spite_height))), 26.0))
	(GM.f_sound_play(23.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(239.0, (-1.0), (GM.vb(7.0, "x") + 17.0), (GM.vb(7.0, "y") + 20.0)))
	(GM.f_action_draw_font("Dot-Matrix", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), 160.0, ("BOMB TIME: " + (GM.f_string((alarm[int(0.0)] / 30.0))))))
func ev_keypress_17():
	if ((((GM.f_place_meeting(self, (x + 17.0), (y + 20.0), 244.0))))) >= 0.5:
		(GM.f_sound_play(30.0))
		(GM.f_instance_create(((x + GM.vb(7.0, "x")) + 17.0), ((y + GM.vb(7.0, "y")) + 20.0), 243.0))
		(GM.f_instance_destroy(self))
