extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
var v_woot = 0.0
func ev_create():
	(GM.f_action_move(self, "010000000", 3.0, 0.0))
func ev_alarm_0():
	(GM.f_instance_create((x + 118.0), (y + 60.0), 1048.0))
func ev_step():
	if ((vspeed > 0.0)):
		v_wee = (GM.f_floor((GM.f_random(3.99999))))
		if (GM.eq(v_wee, 0.0)):
			(GM.f_sound_play(241.0))
		if (GM.eq(v_wee, 1.0)):
			(GM.f_sound_play(237.0))
		v_woot = (GM.f_instance_create((x + 33.0), (y + sprite_height), 749.0))
		GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + (vspeed + (GM.f_random(5.0))))
		v_wee = (GM.f_instance_create((x + 23.0), (y + sprite_height), 1018.0))
		GM.vsetb(v_wee, "vspeed", (vspeed + (GM.f_random(10.0))))
		GM.vsetb(v_wee, "hspeed", ((-2.0) + (GM.f_random(4.0))))
		v_woot = (GM.f_instance_create((x + 122.0), (y + sprite_height), 749.0))
		GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + (vspeed + (GM.f_random(5.0))))
		v_wee = (GM.f_instance_create((x + 122.0), (y + sprite_height), 1018.0))
		GM.vsetb(v_wee, "vspeed", (vspeed + (GM.f_random(10.0))))
		GM.vsetb(v_wee, "hspeed", ((-2.0) + (GM.f_random(4.0))))
		v_woot = (GM.f_instance_create((x + 175.0), (y + sprite_height), 749.0))
		GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + (vspeed + (GM.f_random(5.0))))
		v_wee = (GM.f_instance_create((x + 175.0), (y + sprite_height), 1018.0))
		GM.vsetb(v_wee, "vspeed", (vspeed + (GM.f_random(10.0))))
		GM.vsetb(v_wee, "hspeed", ((-2.0) + (GM.f_random(4.0))))
		v_woot = (GM.f_instance_create((x + 262.0), (y + sprite_height), 749.0))
		GM.vsetb(v_woot, "vspeed", GM.vb(v_woot, "vspeed") + (vspeed + (GM.f_random(5.0))))
		v_wee = (GM.f_instance_create((x + 262.0), (y + sprite_height), 1018.0))
		GM.vsetb(v_wee, "vspeed", (vspeed + (GM.f_random(10.0))))
		GM.vsetb(v_wee, "hspeed", ((-2.0) + (GM.f_random(4.0))))
func ev_col_489():
	(GM.f_sound_play(239.0))
	(GM.f_instance_create(x, y, 498.0))
	(GM.f_sound_stop(114.0))
	alarm[int(0.0)] = 30.0
	vspeed = 0.0
func ev_other_0():
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_sprite(918.0, 0.0, x, y))
	if (((GM.f_instance_number(1049.0)) > 0.0)):
		(GM.f_draw_healthbar((GM.view_xview[0] + 50.0), (GM.view_yview[0] + 550.0), (GM.view_xview[0] + 750.0), (GM.view_yview[0] + 590.0), (GM.vget(1049.0, "v_mypower") / 3.0), 0.0, 255.0, 16711680.0, 0.0, 1.0, 1.0))
		GM.font_align = 1.0
	(GM.f_action_draw_font("Times New Roman", 26.0, 0.0, 0.0))
	(GM.f_draw_set_color(0.0))
	if ((((GM.f_instance_number(1049.0)) > 0.0))):
		(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 550.0), "Final Battle"))
