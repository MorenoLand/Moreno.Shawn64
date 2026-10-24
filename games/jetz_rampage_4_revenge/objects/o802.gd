extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_sett = 0.0
var v_wee = 0.0
var v_xxx = 0.0
func ev_create():
	y = (50.0 + (GM.f_random(350.0)))
	x = (GM.f_random(GM.room_width))
	v_wee = (GM.f_round((GM.f_random(1.0))))
	direction = 180.0
	speed = 6.0
func ev_alarm_0():
	(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 662.0))
	alarm[int(0.0)] = 1.0
func ev_col_656():
	if ((absf(gravity - 0.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 803.0))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + hspeed)
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + vspeed)
		(self.script_adddamage())
		(GM.f_sound_play(155.0))
		image_single = 1.0
		for _r475 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 668.0))
		gravity = 0.3
		alarm[int(0.0)] = 1.0
func ev_col_603():
	for _r476 in range(int((10.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 668.0))
	(GM.f_sound_play(151.0))
	while true:
		v_xxx = (GM.f_random(GM.room_width))
		if (((v_xxx < (GM.view_xview[0] - 40.0)) or (v_xxx > (GM.view_xview[0] + 800.0)))):
			break
	(GM.f_instance_create(v_xxx, (50.0 + (GM.f_random(750.0))), 640.0))
	(GM.f_instance_destroy(self))
	for _r477 in range(int((100.0))):
		v_sett = (GM.f_instance_create((x + (GM.f_random((sprite_width - 2.0)))), (y + (GM.f_random(20.0))), 653.0))
		GM.vsetb(v_sett, "direction", (20.0 + (GM.f_random(140.0))))
		GM.vset(v_sett, "v_yyy", ((y + sprite_height) - 6.0))
		GM.vsetb(v_sett, "depth", depth)
		GM.vsetb(v_sett, "speed", GM.vb(v_sett, "speed") - (GM.f_random(5.0)))
	(GM.f_instance_destroy(self))
func ev_col_502():
	if ((absf(gravity - 0.0) < 0.00001)):
		v_wee = (GM.f_instance_create(x, y, 803.0))
		GM.vsetb(v_wee, "hspeed", GM.vb(v_wee, "hspeed") + hspeed)
		GM.vsetb(v_wee, "vspeed", GM.vb(v_wee, "vspeed") + vspeed)
		(self.script_adddamage())
		(GM.f_sound_play(155.0))
		image_single = 1.0
		for _r478 in range(int((20.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 668.0))
		gravity = 0.3
		alarm[int(0.0)] = 1.0
func ev_other_0():
	(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (((absf(vspeed - 0.0) < 0.00001))):
		(GM.f_draw_sprite(833.0, 0.0, (x + 0.0), (y + 0.0)))
	(GM.f_draw_sprite(596.0, (-1.0), (x + 0.0), (y + 0.0)))
