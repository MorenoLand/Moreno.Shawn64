extends "res://gm/gm_inst.gd"
func script_outsidebounce(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	(GM.f_sound_play(7.0))
	if (((bbox_left < 0.0) and (hspeed < 0.0))):
		hspeed = (-hspeed)
	if (((bbox_right > GM.room_width) and (hspeed > 0.0))):
		hspeed = (-hspeed)
	if (((bbox_top < 0.0) and (vspeed < 0.0))):
		vspeed = (-vspeed)
	if (((bbox_bottom > GM.room_height) and (vspeed > 0.0))):
		vspeed = (-vspeed)
	return 0.0
