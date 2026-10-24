extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_drawtext = ""
var v_saysound = 0.0
var v_weez = 0.0
var v_wow = 0.0
func ev_create():
	v_drawtext = "The thing about missions is they can change the game play around drastically.  For instance what if I was to make this a platform game?  Reach the end within the time limit for a nice cash reward.  Prepare for something new."
	v_saysound = 1.0
func ev_destroy():
	GM.G["donemissions"] = GM.G["donemissions"] + 1.0
func ev_alarm_1():
	v_saysound = 1.0
func ev_alarm_0():
	image_single = (-1.0)
	if ((absf(sprite_index - 623.0) < 0.00001)):
		sprite_index = 624.0
	else:
		if ((absf(sprite_index - 624.0) < 0.00001)):
			sprite_index = 623.0
func ev_step():
	if (((absf(sprite_index - 623.0) < 0.00001) and (absf(image_single - 6.0) < 0.00001))):
		v_weez = (GM.f_round((GM.f_random(2.0))))
		if (GM.eq(v_weez, 0.0)):
			(GM.f_instance_create((x + 7.0), (y + 31.0), 691.0))
func ev_col_7():
	if (((absf((GM.f_instance_number(774.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(680.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(x, y, 774.0))
	if ((absf(v_saysound - 1.0) < 0.00001)):
		(GM.f_sound_play(162.0))
	alarm[int(1.0)] = 2.0
	v_saysound = 0.0
func ev_other_7():
	alarm[int(0.0)] = (50.0 + (GM.f_random(25.0)))
	image_single = (image_number - 1.0)
func ev_keypress_13():
	if ((absf((GM.f_instance_number(680.0)) - 0.0) < 0.00001)):
		if (((GM.f_place_meeting(self, x, y, 7.0)))) >= 0.5:
			v_wow = (GM.f_instance_create(x, y, 777.0))
			GM.vset(v_wow, "v_mission", 95.0)
			GM.vset(v_wow, "v_drawtext", v_drawtext)
