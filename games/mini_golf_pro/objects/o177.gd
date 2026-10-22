extends "res://games/mini_golf_pro/scripts.gd"
var v_turn = 0.0
var v_wee = 0.0
var v_ween = 0.0
func ev_create():
	v_turn = 0.0
	alarm[int(0.0)] = (1.0 + (GM.f_random(1.0)))
func ev_alarm_0():
	if not ((((GM.f_sound_isplaying(23.0)))) >= 0.5):
		(GM.f_sound_loop(23.0))
func ev_step():
	v_turn = v_turn - 15.0
	for _r27 in range(int((3.0))):
		v_wee = (GM.f_instance_create(((x + 10.0) + (GM.f_random((sprite_width - 20.0)))), ((y + 10.0) + (GM.f_random((sprite_height - 20.0)))), 176.0))
		GM.vsetb(v_wee, "direction", 90.0)
		GM.vsetb(v_wee, "depth", (depth + 1.0))
	v_ween = 243.0
	if ((absf((GM.f_instance_number(v_ween)) - 1.0) < 0.00001)):
		if (((GM.vb(v_ween, "x") > (x + 15.0)) and (GM.vb(v_ween, "x") < ((x + sprite_width) - 15.0)))):
			if (((GM.vb(v_ween, "y") > ((y + sprite_height) - 400.0)) and (GM.vb(v_ween, "y") < (y + sprite_height)))):
				GM.vsetb(v_ween, "vspeed", GM.vb(v_ween, "vspeed") - (1.0 - ((((((y + sprite_height)) - GM.vb(v_ween, "y"))) / 500.0))))
	v_ween = 248.0
	if ((absf((GM.f_instance_number(v_ween)) - 1.0) < 0.00001)):
		if (((GM.vb(v_ween, "x") > (x + 15.0)) and (GM.vb(v_ween, "x") < ((x + sprite_width) - 15.0)))):
			if (((GM.vb(v_ween, "y") > ((y + sprite_height) - 400.0)) and (GM.vb(v_ween, "y") < (y + sprite_height)))):
				GM.vsetb(v_ween, "vspeed", GM.vb(v_ween, "vspeed") - (1.0 - ((((((y + sprite_height)) - GM.vb(v_ween, "y"))) / 500.0))))
	v_ween = 249.0
	if ((absf((GM.f_instance_number(v_ween)) - 1.0) < 0.00001)):
		if (((GM.vb(v_ween, "x") > (x + 15.0)) and (GM.vb(v_ween, "x") < ((x + sprite_width) - 15.0)))):
			if (((GM.vb(v_ween, "y") > ((y + sprite_height) - 400.0)) and (GM.vb(v_ween, "y") < (y + sprite_height)))):
				GM.vsetb(v_ween, "vspeed", GM.vb(v_ween, "vspeed") - (1.0 - ((((((y + sprite_height)) - GM.vb(v_ween, "y"))) / 500.0))))
	v_ween = 250.0
	if ((absf((GM.f_instance_number(v_ween)) - 1.0) < 0.00001)):
		if (((GM.vb(v_ween, "x") > (x + 15.0)) and (GM.vb(v_ween, "x") < ((x + sprite_width) - 15.0)))):
			if (((GM.vb(v_ween, "y") > ((y + sprite_height) - 400.0)) and (GM.vb(v_ween, "y") < (y + sprite_height)))):
				GM.vsetb(v_ween, "vspeed", GM.vb(v_ween, "vspeed") - (1.0 - ((((((y + sprite_height)) - GM.vb(v_ween, "y"))) / 500.0))))
	v_ween = 251.0
	if ((absf((GM.f_instance_number(v_ween)) - 1.0) < 0.00001)):
		if (((GM.vb(v_ween, "x") > (x + 15.0)) and (GM.vb(v_ween, "x") < ((x + sprite_width) - 15.0)))):
			if (((GM.vb(v_ween, "y") > ((y + sprite_height) - 400.0)) and (GM.vb(v_ween, "y") < (y + sprite_height)))):
				GM.vsetb(v_ween, "vspeed", GM.vb(v_ween, "vspeed") - (1.0 - ((((((y + sprite_height)) - GM.vb(v_ween, "y"))) / 500.0))))
func ev_other_5():
	(GM.f_sound_stop(23.0))
func ev_draw():
	if ((absf(GM.G["effects"] - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(127.0, 2.0, x, (y + sprite_height), 1.0, 1.0, 0.0, 0.0, 0.1))
	(GM.f_draw_sprite(127.0, 1.0, x, y))
	(GM.f_draw_sprite_ext(128.0, 0.0, (x + 79.0), (y + 83.0), 1.0, 1.0, v_turn, 16777215.0, 1.0))
	(GM.f_draw_sprite(127.0, 0.0, x, y))
