extends "res://games/mini_golf_pro/scripts.gd"
var v_clear = 0.0
var v_temp = 0.0
var v_temp2 = 0.0
var v_wow = 0.0
func ev_create():
	v_clear = 0.0
	v_wow = (GM.f_floor((GM.f_random(1.999999))))
	if ((absf(v_wow - 1.0) < 0.00001)):
		v_wow = 2.0
	alarm[int(1.0)] = 90.0
	image_speed = 0.0
	image_index = 0.0
	depth = depth - ((y / 10000000.0))
func ev_alarm_1():
	v_temp2 = (GM.f_floor((GM.f_random(1.9999))))
	if ((absf(v_temp2 - 0.0) < 0.00001)):
		v_temp = (GM.f_instance_create(((x + 20.0) + (GM.f_random(167.0))), (y + 140.0), 269.0))
		GM.vset(v_temp, "v_yyy", (y + sprite_height))
		GM.vsetb(v_temp, "depth", (depth + 1.0))
	alarm[int(1.0)] = (90.0 + (GM.f_random(30.0)))
func ev_alarm_0():
	v_clear = 0.0
func ev_col_0():
	if ((absf(GM.vget(self.other, "v_implayer") - 10.0) < 0.00001)):
		return
	v_clear = 1.0
	alarm[int(0.0)] = 2.0
func ev_draw():
	if ((absf(v_clear - 0.0) < 0.00001)):
		(GM.f_draw_sprite_ext(54.0, v_wow, x, y, 1.0, 1.0, 0.0, 16777215.0, 1.0))
	else:
		(GM.f_draw_sprite_ext(54.0, v_wow, x, y, 1.0, 1.0, 0.0, 16777215.0, 0.5))
	if ((absf(GM.G["effects"] - 1.0) < 0.00001)):
		(GM.f_draw_sprite_ext(54.0, 1.0, x, ((y + sprite_height) - 4.0), 1.0, 1.0, 0.0, 16777215.0, 0.1))
