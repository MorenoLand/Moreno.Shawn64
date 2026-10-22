extends "res://gm/gm_inst.gd"
func script_SetShip1Sprite(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_image_single", (GM.f_floor(((fmod(((GM.vget(self, "v_my_direction") + 2.0)), 360.0)) / 4.0))))
	return 0.0
func script_view_check(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if not (((GM.f_instance_exists(argument0))) >= 0.5):
		return 0.0
	else:
		if ((((GM.vb(argument0, "bbox_right") > GM.aget(GM.vget(self, "v_view_left"), 0.0)) and (GM.vb(argument0, "x") < GM.add(GM.aget(GM.vget(self, "v_view_left"), 0.0), GM.aget(GM.vget(self, "v_view_width"), 0.0)))) and (GM.vb(argument0, "bbox_bottom") > GM.aget(GM.vget(self, "v_view_top"), 0.0))) and (GM.vb(argument0, "y") < GM.add(GM.aget(GM.vget(self, "v_view_top"), 0.0), GM.aget(GM.vget(self, "v_view_height"), 0.0)))):
			return 1.0
		else:
			return 0.0
	return 0.0
func script_outsidewrap(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((x < 0.0) and (hspeed < 0.0))):
		x = (GM.room_width + sprite_xoffset)
	if (((x > GM.room_width) and (hspeed > 0.0))):
		x = ((-sprite_width) + sprite_xoffset)
	if (((y < 0.0) and (vspeed < 0.0))):
		y = (GM.room_height + sprite_yoffset)
	if (((y > GM.room_height) and (vspeed > 0.0))):
		y = ((-sprite_height) + sprite_yoffset)
	return 0.0
