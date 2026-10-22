extends "res://games/jetzfusion/scripts.gd"
var v_poop = 0.0
func ev_create():
	alarm[int(0.0)] = 5.0
func ev_alarm_0():
	v_poop = 0.0
	if (((((((((((((absf((GM.f_instance_number(268.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(275.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(282.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(286.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(296.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(303.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(326.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(327.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(297.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(314.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(321.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(322.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 333.0))
	if (((((absf((GM.f_instance_number(286.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(282.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(275.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(268.0)) - 0.0) < 0.00001))):
		v_poop = v_poop + 1.0
	if (((((absf((GM.f_instance_number(327.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(326.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(303.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(296.0)) - 0.0) < 0.00001))):
		v_poop = v_poop + 1.0
	if (((((absf((GM.f_instance_number(322.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(321.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(314.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(297.0)) - 0.0) < 0.00001))):
		v_poop = v_poop + 1.0
	if ((((v_poop > 1.0) and (absf(GM.G["shotgun"] - 0.0) < 0.00001)) and (absf((GM.f_instance_number(418.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((GM.view_xview[0] + 400.0), (-60.0), 418.0))
	(GM.f_instance_destroy(self))
