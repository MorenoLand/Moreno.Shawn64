extends "res://games/jetzfusion/scripts.gd"
var v_poop = 0.0
func ev_create():
	alarm[int(0.0)] = 5.0
func ev_alarm_0():
	v_poop = 0.0
	if (((((((((((((absf((GM.f_instance_number(381.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(419.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(420.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(421.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(382.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(397.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(454.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(455.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(383.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(422.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(433.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(437.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(0.0, 0.0, 463.0))
	if (((((absf((GM.f_instance_number(421.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(420.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(419.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(381.0)) - 0.0) < 0.00001))):
		v_poop = v_poop + 1.0
	if (((((absf((GM.f_instance_number(455.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(454.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(397.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(382.0)) - 0.0) < 0.00001))):
		v_poop = v_poop + 1.0
	if (((((absf((GM.f_instance_number(437.0)) - 0.0) < 0.00001) and (absf((GM.f_instance_number(433.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(422.0)) - 0.0) < 0.00001)) and (absf((GM.f_instance_number(383.0)) - 0.0) < 0.00001))):
		v_poop = v_poop + 1.0
	if ((((v_poop > 1.0) and (absf(GM.G["inferno"] - 0.0) < 0.00001)) and (absf((GM.f_instance_number(460.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create((GM.view_xview[0] + 400.0), (-60.0), 460.0))
	(GM.f_instance_destroy(self))
