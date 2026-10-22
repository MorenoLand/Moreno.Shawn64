extends "res://games/mini_golf_pro/scripts.gd"
var v_mouseonme = 0.0
var v_psound = 0.0
func ev_create():
	(self.script_resetgame())
	alarm[int(0.0)] = 1.0
	(GM.f_window_set_showborder(0.0))
	v_mouseonme = 0.0
	v_psound = 1.0
	GM.G["intro"] = 1.0
	(GM.f_message_background(5.0))
	(GM.f_message_button(178.0))
	GM.G["holeon"] = 3.0
	GM.G["effects"] = 1.0
	(self.script_spriteload(0.0, "ball2.bmp", 1.0))
	(self.script_spriteload(0.0, "ball3.bmp", 1.0))
	(self.script_spriteload(0.0, "ball4.bmp", 1.0))
	(self.script_spriteload(0.0, "ball5.bmp", 1.0))
	(self.script_spriteload(0.0, "ball6.bmp", 1.0))
	(self.script_spriteload(0.0, "ball7.bmp", 1.0))
	(self.script_spriteload(0.0, "ball8.bmp", 1.0))
	(self.script_spriteload(0.0, "ball9.bmp", 1.0))
	(self.script_spriteload(0.0, "ball10.bmp", 1.0))
	(self.script_spriteload(0.0, "ball11.bmp", 1.0))
	(self.script_spriteload(0.0, "ball12.bmp", 1.0))
	(self.script_spriteload(0.0, "ball13.bmp", 1.0))
	(self.script_spriteload(0.0, "ball14.bmp", 1.0))
	(self.script_spriteload(0.0, "ball15.bmp", 1.0))
	(self.script_spriteload(0.0, "ball16.bmp", 1.0))
	(self.script_spriteload(0.0, "ball17.bmp", 1.0))
	(self.script_spriteload(0.0, "ball18.bmp", 1.0))
	(self.script_spriteload(0.0, "ball19.bmp", 1.0))
	(self.script_spriteload(0.0, "ball20.bmp", 1.0))
	(self.script_spriteload(0.0, "ball21.bmp", 1.0))
	(self.script_spriteload(0.0, "ball22.bmp", 1.0))
	(self.script_spriteload(0.0, "ball23.bmp", 1.0))
	(self.script_spriteload(0.0, "ball24.bmp", 1.0))
	(self.script_spriteload(0.0, "ball25.bmp", 1.0))
	(self.script_spriteload(0.0, "ball26.bmp", 1.0))
	(self.script_spriteload(0.0, "ball27.bmp", 1.0))
	(self.script_spriteload(0.0, "ball28.bmp", 1.0))
	(self.script_spriteload(0.0, "ball29.bmp", 1.0))
	(self.script_spriteload(0.0, "ball30.bmp", 1.0))
	(GM.f_sound_replace(47.0, GM.add(GM.working_directory, "\\Sounds\\taunt1.wav"), 0.0, 0.0))
	(GM.f_sound_replace(48.0, GM.add(GM.working_directory, "\\Sounds\\taunt2.wav"), 0.0, 0.0))
	(GM.f_sound_replace(49.0, GM.add(GM.working_directory, "\\Sounds\\taunt3.wav"), 0.0, 0.0))
	(GM.f_sound_replace(50.0, GM.add(GM.working_directory, "\\Sounds\\taunt4.wav"), 0.0, 0.0))
	(GM.f_sound_replace(51.0, GM.add(GM.working_directory, "\\Sounds\\taunt5.wav"), 0.0, 0.0))
	(GM.f_sound_replace(52.0, GM.add(GM.working_directory, "\\Sounds\\taunt6.wav"), 0.0, 0.0))
	(GM.f_sound_replace(53.0, GM.add(GM.working_directory, "\\Sounds\\taunt7.wav"), 0.0, 0.0))
	(GM.f_sound_replace(54.0, GM.add(GM.working_directory, "\\Sounds\\taunt8.wav"), 0.0, 0.0))
	(GM.f_sound_replace(55.0, GM.add(GM.working_directory, "\\Sounds\\taunt9.wav"), 0.0, 0.0))
func ev_alarm_0():
	if (GM.eq(GM.G["player1shots"], 10.0)):
		if not ((((GM.f_keyboard_check(17.0)))) >= 0.5):
			(GM.f_window_set_fullscreen(1.0))
			(GM.f_display_set_all(1024.0, 768.0, (-1.0), 32.0))
		(GM.f_room_goto(25.0))
		return
	else:
		(GM.f_game_end())
		return
	(GM.f_sound_play(35.0))
func ev_step():
	if (((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self)))) >= 0.5:
		if ((absf(v_psound - 1.0) < 0.00001)):
			(GM.f_sound_play(37.0))
			v_psound = 0.0
		v_mouseonme = 1.0
	else:
		v_psound = 1.0
		v_mouseonme = 0.0
func ev_mouse_4():
	(GM.f_sound_play(16.0))
	(GM.f_game_end())
func ev_other_2():
	GM.G["player1shots"] = 10.0
	GM.G["holdme1"] = 0.0
