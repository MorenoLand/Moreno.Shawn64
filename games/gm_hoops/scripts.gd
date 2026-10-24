extends "res://gm/gm_inst.gd"
func script_outside_bounce(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((bbox_left < 0.0) and (hspeed < 0.0))):
		hspeed = (-hspeed)
	if (((bbox_right > GM.room_width) and (hspeed > 0.0))):
		hspeed = (-hspeed)
	if (((bbox_top < 0.0) and (vspeed < 0.0))):
		vspeed = (-vspeed)
	if (((bbox_bottom > GM.room_height) and (vspeed > 0.0))):
		vspeed = (-vspeed)
	return 0.0
func script_hover(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self)))) >= 0.5:
		image_single = 1.0
	else:
		image_single = 0.0
	return 0.0
func script_mouse_right(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_dll", "mouse.dll")
	GM.vset(self, "v_handle", (GM.f_external_define2(GM.vget(self, "v_dll"), "set_relative", 0.0, 0.0, 0.0)))
	return (GM.f_external_call2(GM.vget(self, "v_handle"), 250.0, GM.mouse_y))
	return 0.0
func script_mouse_up(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_dll", "mouse.dll")
	GM.vset(self, "v_handle", (GM.f_external_define2(GM.vget(self, "v_dll"), "set_relative", 0.0, 0.0, 0.0)))
	return (GM.f_external_call2(GM.vget(self, "v_handle"), (GM.mouse_x + 3.0), 320.0))
	return 0.0
