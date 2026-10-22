extends "res://games/jetzfusion/scripts.gd"
var v_poop = 0.0
func ev_create():
	alarm[int(0.0)] = 5.0
func ev_alarm_0():
	v_poop = 0.0
	if (((((((((((((absf((GM.f_instance_number(180.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(185.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(157.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(187.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(159.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(194.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(200.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(204.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(158.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(217.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(218.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(238.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 255.0))
	if (((((absf((GM.f_instance_number(187.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(157.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(185.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(180.0)) - 0.0) < 0.00001))):
		v_poop = v_poop + 1.0
	if (((((absf((GM.f_instance_number(204.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(200.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(194.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(159.0)) - 0.0) < 0.00001))):
		v_poop = v_poop + 1.0
	if (((((absf((GM.f_instance_number(238.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(218.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(217.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(158.0)) - 0.0) < 0.00001))):
		v_poop = v_poop + 1.0
	if ((((v_poop > 1.0) and (absf(GM.G["doublepistols"] - 0.0) < 0.00001)) and (absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((GM.view_xview[0] + 400.0), (-60.0), 417.0))
	(GM.f_instance_destroy(self))
