extends "res://gm/gm_inst.gd"
func script_mouse_over(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self)))) >= 0.5:
		if ((absf(GM.vget(self, "v_psound") - 1.0) < 0.00001)):
			(GM.f_sound_play(10.0))
			GM.vset(self, "v_psound", 0.0)
		GM.vset(self, "v_image_single", 1.0)
	else:
		GM.vset(self, "v_psound", 1.0)
		GM.vset(self, "v_image_single", 0.0)
	return 0.0
func script_outside_wrap(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((x < 0.0) and (hspeed < 0.0))):
		x = (GM.room_width + sprite_xoffset)
	if (((x > GM.room_width) and (hspeed > 0.0))):
		x = ((-sprite_width) + sprite_xoffset)
	if (((y < 0.0) and (vspeed < 0.0))):
		y = (GM.room_height + sprite_yoffset)
	if (((y > GM.room_height) and (vspeed > 0.0))):
		y = ((-sprite_height) + sprite_yoffset)
	return 0.0
