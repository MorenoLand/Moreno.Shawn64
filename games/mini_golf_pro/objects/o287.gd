extends "res://games/mini_golf_pro/scripts.gd"
var v_blah = 0.0
var v_rooom = 0.0
func ev_create():
	GM.G["player1shots"] = 0.0
	v_blah = 0.0
	v_rooom = 0.0
	self.ev_user(0.0)
	alarm[int(0.0)] = 120.0
	(GM.f_instance_create(GM.view_xview[0], GM.view_yview[0], 96.0))
func ev_alarm_1():
	(GM.f_sound_stop(4.0))
	(GM.f_sound_stop(7.0))
	(GM.f_sound_stop(11.0))
	(GM.f_sound_stop(14.0))
	(GM.f_sound_stop(15.0))
	(GM.f_sound_stop(23.0))
	(GM.f_sound_stop(24.0))
	(GM.f_instance_create(0.0, 0.0, 289.0))
	if ((absf(v_rooom - 0.0) < 0.00001)):
		(GM.f_room_goto(15.0))
	if ((absf(v_rooom - 1.0) < 0.00001)):
		(GM.f_room_goto(16.0))
	if ((absf(v_rooom - 2.0) < 0.00001)):
		(GM.f_room_goto(22.0))
	if ((absf(v_rooom - 3.0) < 0.00001)):
		(GM.f_room_goto(23.0))
	if ((absf(v_rooom - 4.0) < 0.00001)):
		(GM.f_room_goto(45.0))
	if ((absf(v_rooom - 5.0) < 0.00001)):
		(GM.f_room_goto(48.0))
	if ((absf(v_rooom - 6.0) < 0.00001)):
		(GM.f_room_goto(12.0))
	if ((absf(v_rooom - 7.0) < 0.00001)):
		(GM.f_room_goto(19.0))
	if ((absf(v_rooom - 8.0) < 0.00001)):
		(GM.f_room_goto(21.0))
	if ((absf(v_rooom - 9.0) < 0.00001)):
		(GM.f_room_goto(2.0))
	if ((absf(v_rooom - 10.0) < 0.00001)):
		(GM.f_room_goto(14.0))
	if ((absf(v_rooom - 11.0) < 0.00001)):
		(GM.f_room_goto(13.0))
	if ((absf(v_rooom - 12.0) < 0.00001)):
		(GM.f_room_goto(36.0))
	if ((absf(v_rooom - 13.0) < 0.00001)):
		(GM.f_room_goto(47.0))
	if ((absf(v_rooom - 14.0) < 0.00001)):
		(GM.f_room_goto(46.0))
	if ((absf(v_rooom - 15.0) < 0.00001)):
		(GM.f_room_goto(49.0))
	if not ((((GM.f_sound_isplaying(21.0)))) >= 0.5):
		(GM.f_sound_loop(21.0))
	v_rooom = v_rooom + 1.0
	if ((v_rooom > 15.0)):
		v_rooom = 0.0
func ev_alarm_0():
	self.ev_user(0.0)
	alarm[int(0.0)] = 120.0
func ev_mouse_53():
	(GM.f_instance_destroy(self))
	(GM.f_room_goto(18.0))
func ev_other_10():
	(GM.f_instance_create(0.0, 0.0, 288.0))
	alarm[int(1.0)] = 9.0
func ev_draw():
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_set_font(9.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_alpha(0.7))
	(GM.f_draw_text((1024.0 / 2.0), (GM.view_yview[0] + 25.0), "Mini Golf Pro!"))
	(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_set_font(1.0))
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_text((1024.0 / 2.0), (GM.view_yview[0] + 710.0), "Click to Continue"))
func ev_keypress_27():
	(GM.f_sound_stop(4.0))
	(GM.f_sound_stop(7.0))
	(GM.f_sound_stop(11.0))
	(GM.f_sound_stop(14.0))
	(GM.f_sound_stop(15.0))
	(GM.f_sound_stop(23.0))
	(GM.f_sound_stop(24.0))
	(GM.f_sound_stop(21.0))
	(GM.f_window_set_fullscreen(0.0))
	(GM.f_display_reset())
	(self.script_console_dll_refresh())
	(GM.f_instance_destroy(self))
	(GM.f_room_goto(38.0))
