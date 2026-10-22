extends "res://games/mini_golf_pro/scripts.gd"
var v_foo = 0.0
var v_i = 0.0
var v_pos = 0.0
func ev_create():
	alarm[int(0.0)] = 3.0
func ev_alarm_0():
	if (((GM.f_instance_number(243.0)) > 0.0)):
		if ((GM.vb(243.0, "speed") > 0.0)):
			alarm[int(0.0)] = 5.0
			return
	if (((GM.f_instance_number(248.0)) > 0.0)):
		if ((GM.vb(248.0, "speed") > 0.0)):
			alarm[int(0.0)] = 5.0
			return
	if (((GM.f_instance_number(249.0)) > 0.0)):
		if ((GM.vb(249.0, "speed") > 0.0)):
			alarm[int(0.0)] = 5.0
			return
	if (((GM.f_instance_number(250.0)) > 0.0)):
		if ((GM.vb(250.0, "speed") > 0.0)):
			alarm[int(0.0)] = 5.0
			return
	if (((GM.f_instance_number(251.0)) > 0.0)):
		if ((GM.vb(251.0, "speed") > 0.0)):
			alarm[int(0.0)] = 5.0
			return
	if (((GM.f_instance_number(115.0)) > 0.0)):
		alarm[int(5.0)] = 5.0
		return
	if (((GM.f_instance_number(41.0)) > 0.0)):
		alarm[int(5.0)] = 5.0
		return
	if (((GM.f_instance_number(37.0)) > 0.0)):
		alarm[int(5.0)] = 5.0
		return
	if (((GM.f_instance_number(40.0)) > 0.0)):
		alarm[int(5.0)] = 5.0
		return
	if (((GM.f_instance_number(113.0)) > 0.0)):
		alarm[int(5.0)] = 5.0
		return
	v_i = 0.0
	while (v_i < (GM.f_instance_number(235.0))):
		v_foo = (GM.f_instance_find(235.0, v_i))
		if (GM.vb(v_foo, "speed") > 0.0):
			alarm[int(5.0)] = 5.0
			return
			break
		v_i = v_i + 1.0
	if ((((((absf(GM.G["player1ready"] - 0.0) < 0.00001) or (absf(GM.G["player2ready"] - 0.0) < 0.00001)) or (absf(GM.G["player3ready"] - 0.0) < 0.00001)) or (absf(GM.G["player4ready"] - 0.0) < 0.00001)) or (absf(GM.G["player5ready"] - 0.0) < 0.00001))):
		alarm[int(0.0)] = 5.0
		return
	GM.view_object[int(0.0)] = 201.0
	(self.script_nextturn())
	if ((absf(GM.G["bonus"] - 0.0) < 0.00001)):
		(GM.f_mplay_message_send_guaranteed(0.0, 35.0, GM.G["personsturn"]))
	if ((absf(GM.G["bonus"] - 1.0) < 0.00001)):
		GM.G["bonus"] = 0.0
	if (GM.eq(GM.G["personsturn"], 1.0)):
		v_pos = 243.0
	if (GM.eq(GM.G["personsturn"], 2.0)):
		v_pos = 248.0
	if (GM.eq(GM.G["personsturn"], 3.0)):
		v_pos = 249.0
	if (GM.eq(GM.G["personsturn"], 4.0)):
		v_pos = 250.0
	if (GM.eq(GM.G["personsturn"], 5.0)):
		v_pos = 251.0
	GM.view_yview[0] = (GM.vb(v_pos, "y") - (768.0 / 2.0))
	if ((GM.view_yview[0] > (GM.room_height - 768.0))):
		GM.view_yview[0] = (GM.room_height - 768.0)
	if ((GM.view_yview[0] < 0.0)):
		GM.view_yview[0] = 0.0
	GM.view_xview[0] = (GM.vb(v_pos, "x") - (1024.0 / 2.0))
	if ((GM.view_xview[0] > (GM.room_width - 1024.0))):
		GM.view_xview[0] = (GM.room_width - 1024.0)
	if ((GM.view_xview[0] < 0.0)):
		GM.view_xview[0] = 0.0
	(GM.f_instance_destroy(self))
