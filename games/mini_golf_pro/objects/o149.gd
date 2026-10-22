extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
var v_wee2 = 0.0
var v_whatball = 0.0
func ev_create():
	alarm[int(1.0)] = 1.0
func ev_alarm_1():
	GM.view_object[int(0.0)] = 149.0
	(GM.f_motion_add(self, (GM.f_point_direction(x, y, GM.vb(v_whatball, "x"), GM.vb(v_whatball, "y"))), 10.0))
	GM.view_vborder[0] = ((GM.view_hview[0] / 2.0) - (GM.vb(v_whatball, "sprite_height") / 2.0))
	GM.view_hborder[0] = ((GM.view_wview[0] / 2.0) - (GM.vb(v_whatball, "sprite_width") / 2.0))
	speed = 8.0
	v_wee = 434343.0
	v_wee2 = 434343.0
	alarm[int(0.0)] = 2.0
func ev_alarm_0():
	if ((GM.eq(GM.view_yview[0], v_wee) and GM.eq(GM.view_xview[0], v_wee2))):
		GM.vb(2.0, "alarm")[int(0.0)] = 1.0
		(GM.f_instance_destroy(self))
	v_wee = GM.view_yview[0]
	v_wee2 = GM.view_xview[0]
	alarm[int(0.0)] = 2.0
func ev_col_0():
	if (GM.eq(GM.vget(self.other, "v_implayer"), GM.G["personsturn"])):
		GM.vb(2.0, "alarm")[int(0.0)] = 1.0
		(GM.f_instance_destroy(self))
