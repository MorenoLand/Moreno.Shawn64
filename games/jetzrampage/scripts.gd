extends "res://gm/gm_inst.gd"
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
func script_outside_destroy(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((x < 0.0) and (hspeed < 0.0))):
		(GM.f_instance_destroy(self))
	if (((x > GM.room_width) and (hspeed > 0.0))):
		(GM.f_instance_destroy(self))
	if (((y < 0.0) and (vspeed < 0.0))):
		(GM.f_instance_destroy(self))
	if (((y > GM.room_height) and (vspeed > 0.0))):
		(GM.f_instance_destroy(self))
	return 0.0
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
func script_game_pause(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v___font_color", GM.font_color)
	GM.vset(self, "v___font_size", GM.vget(self, "v_font_size"))
	GM.vset(self, "v___font_style", GM.vget(self, "v_font_style"))
	GM.vset(self, "v___font_name", GM.vget(self, "v_font_name"))
	GM.vset(self, "v___font_align", GM.font_align)
	GM.font_color = 16777215.0
	GM.vset(self, "v_font_size", 16.0)
	GM.vset(self, "v_font_style", 1.0)
	GM.vset(self, "v_font_name", "system")
	GM.font_align = 1.0
	(GM.f_draw_text((GM.screen_w / 2.0), 100.0, "Game Paused. Press any key to continue."))
	(GM.f_screen_refresh())
	(GM.f_keyboard_wait())
	(GM.f_io_clear())
	GM.font_color = GM.vget(self, "v___font_color")
	GM.vset(self, "v_font_size", GM.vget(self, "v___font_size"))
	GM.vset(self, "v_font_style", GM.vget(self, "v___font_style"))
	GM.vset(self, "v_font_name", GM.vget(self, "v___font_name"))
	GM.font_align = GM.vget(self, "v___font_align")
	return 0.0
