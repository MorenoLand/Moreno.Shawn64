extends "res://games/mini_golf_pro/scripts.gd"
var v_implayer = 0.0
var v_wee = 0.0
var v_wee3 = 0.0
func ev_create():
	hspeed = (-5.0)
	self.ev_user(0.0)
	if not (((absf(GM.room - 2.0) < 0.00001))):
		vspeed = 5.0
		depth = 0.0
		alarm[int(0.0)] = 3.0
	else:
		depth = 7.1
	v_wee3 = (GM.f_instance_create(x, y, 237.0))
	GM.vset(v_wee3, "v_showtext", "Water Hazard")
	(GM.f_sound_play(34.0))
func ev_alarm_0():
	self.ev_user(0.0)
	depth = 7.1
	(GM.f_sound_play(12.0))
func ev_step():
	if ((vspeed > 0.0)):
		vspeed = vspeed - 0.2
func ev_other_10():
	for _r12 in range(int((100.0))):
		(GM.f_instance_create(((x - 6.0) + (GM.f_random(5.0))), ((y - 6.0) + (GM.f_random(5.0))), 118.0))
func ev_other_0():
	if ((absf(v_implayer - 1.0) < 0.00001)):
		v_wee = (GM.f_instance_create(GM.G["p1xxx"], GM.G["p1yyy"], 243.0))
	if ((absf(v_implayer - 2.0) < 0.00001)):
		v_wee = (GM.f_instance_create(GM.G["p2xxx"], GM.G["p2yyy"], 248.0))
	if ((absf(v_implayer - 3.0) < 0.00001)):
		v_wee = (GM.f_instance_create(GM.G["p3xxx"], GM.G["p3yyy"], 249.0))
	if ((absf(v_implayer - 4.0) < 0.00001)):
		v_wee = (GM.f_instance_create(GM.G["p4xxx"], GM.G["p4yyy"], 250.0))
	if ((absf(v_implayer - 5.0) < 0.00001)):
		v_wee = (GM.f_instance_create(GM.G["p5xxx"], GM.G["p5yyy"], 251.0))
	if ((absf(GM.G["online"] - 1.0) < 0.00001)):
		if (GM.eq(GM.G["yourplayer"], GM.G["personsturn"])):
			(GM.f_instance_create(0.0, 0.0, 256.0))
	if ((absf(GM.G["online"] - 0.0) < 0.00001)):
		(self.script_nextturn())
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_color(41984.0))
	if ((absf(v_implayer - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player1ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 2.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player2ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 3.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player3ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 4.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player4ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	if ((absf(v_implayer - 5.0) < 0.00001)):
		(GM.f_draw_sprite_ext(0.0, GM.G["player5ball"], x, y, 1.0, 1.0, v_wee, 16777215.0, 1.0))
	(GM.f_draw_sprite_ext(61.0, 0.0, x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
