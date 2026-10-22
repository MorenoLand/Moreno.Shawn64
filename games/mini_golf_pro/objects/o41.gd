extends "res://games/mini_golf_pro/scripts.gd"
var v_downspeed = 0.0
var v_ham = 0.0
var v_implayer = 0.0
var v_jumping = 0.0
var v_out = 0.0
var v_scaleme = 0.0
var v_showshadow = 0.0
var v_upspeed = 0.0
var v_wee = 0.0
var v_wee2 = 0.0
var v_yam = 0.0
var v_yyy = 0.0
func ev_create():
	GM.view_object[int(0.0)] = 41.0
	v_wee = 0.0
	friction = 0.2
	v_scaleme = 1.0
	v_ham = 90.0
	v_jumping = 1.0
	v_upspeed = 0.0
	v_yam = 1.0
	v_out = 1.0
	v_yyy = 50.0
	v_downspeed = 1.0
	v_showshadow = 0.0
	if (GM.eq(GM.G["levelset"], 10.0)):
		(GM.f_sound_stop(7.0))
		depth = (-1.0)
		v_showshadow = 1.0
func ev_step():
	if (((speed > 6.0) and (absf(v_showshadow - 1.0) < 0.00001))):
		(GM.f_instance_create(((x - 10.0) + (GM.f_random(20.0))), ((y - 10.0) + (GM.f_random(20.0))), 14.0))
	v_downspeed = v_downspeed + 0.2
	if ((v_yyy > 0.0)):
		v_yyy = v_yyy - v_downspeed
	else:
		(self.script_sound_plays(0.0))
		if ((absf(v_implayer - 1.0) < 0.00001)):
			v_wee2 = (GM.f_instance_create(x, y, 243.0))
		if ((absf(v_implayer - 2.0) < 0.00001)):
			v_wee2 = (GM.f_instance_create(x, y, 248.0))
		if ((absf(v_implayer - 3.0) < 0.00001)):
			v_wee2 = (GM.f_instance_create(x, y, 249.0))
		if ((absf(v_implayer - 4.0) < 0.00001)):
			v_wee2 = (GM.f_instance_create(x, y, 250.0))
		if ((absf(v_implayer - 5.0) < 0.00001)):
			v_wee2 = (GM.f_instance_create(x, y, 251.0))
		GM.vset(v_wee2, "v_wee", v_wee)
		GM.vsetb(v_wee2, "speed", (speed - 1.0))
		GM.vsetb(v_wee2, "direction", direction)
		(GM.f_instance_destroy(self))
	v_wee = GM.add(v_wee, speed)
func ev_col_43():
	if ((y > (GM.vb(self.other, "y") + (GM.vb(self.other, "sprite_height") / 2.0)))):
		(GM.f_sound_stop(7.0))
		depth = (-1.0)
		v_showshadow = 1.0
func ev_draw():
	if ((absf(v_showshadow - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(35.0, 0.0, x, GM.add(y, v_yyy), 1.0, 1.0, v_wee, 16777215.0, 0.3))
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
	(GM.f_draw_set_color(41984.0))
