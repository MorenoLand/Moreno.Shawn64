extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	if ((absf(GM.room - 2.0) < 0.00001)):
		(GM.f_instance_destroy(self))
		return
	if ((absf(GM.room - 38.0) < 0.00001)):
		(GM.f_instance_destroy(self))
		return
	alarm[int(0.0)] = 3.0
	GM.G["gspeed"] = 1.0
func ev_alarm_0():
	(self.script_room_saver())
func ev_other_2():
	GM.G["loadon"] = 1.0
	(GM.f_sound_loop(33.0))
func ev_draw():
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(GM.view_xview[0], GM.view_yview[0], (GM.view_xview[0] + GM.view_wview[0]), (GM.view_yview[0] + GM.view_hview[0]), 0.0))
	(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_set_font(2.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 200.0), "Loading"))
	(GM.f_draw_set_halign(0.0))
