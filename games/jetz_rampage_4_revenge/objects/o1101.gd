extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_drawtext = ""
var v_saysound = 0.0
var v_wow = 0.0
func ev_create():
	v_drawtext = "I noticed you like causing mass stampedes of people running down the city.  See if you can get 20 people into an area beside me, and push enter on the switch to kill them all.  Do this for a nice cash reward and my respect.  Don't we all want my respect?"
	v_saysound = 1.0
	image_speed = 0.16
func ev_destroy():
	GM.G["donemissions"] = GM.G["donemissions"] + 1.0
func ev_alarm_1():
	v_saysound = 1.0
func ev_col_7():
	if (((absf((GM.f_instance_number(774.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(680.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(x, y, 774.0))
	if ((absf(v_saysound - 1.0) < 0.00001)):
		(GM.f_sound_play(163.0))
	alarm[int(1.0)] = 2.0
	v_saysound = 0.0
func ev_keypress_13():
	if ((absf((GM.f_instance_number(680.0)) - 0.0) < 0.00001)):
		if (((GM.f_place_meeting(self, x, y, 7.0)))) >= 0.5:
			v_wow = (GM.f_instance_create(x, GM.room_height, 777.0))
			GM.vset(v_wow, "v_mission", 110.0)
			GM.vset(v_wow, "v_drawtext", v_drawtext)
