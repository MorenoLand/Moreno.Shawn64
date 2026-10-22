extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 5.0
func ev_alarm_0():
	GM.vset(7.0, "v_movenow", 1.0)
	(GM.f_sound_play(224.0))
	(GM.f_screen_gamma(0.0, 0.0, 0.0))
	(GM.f_sound_volume(234.0, 0.0))
	(GM.f_sound_pan(234.0, 0.0))
	if ((absf((GM.f_instance_number(886.0)) - 1.0) < 0.00001)):
		if ((absf(GM.room - 1.0) < 0.00001)):
			(GM.f_sound_loop(234.0))
		if ((absf(GM.room - 16.0) < 0.00001)):
			(GM.f_sound_loop(233.0))
	(GM.f_sound_loop(120.0))
	(self.script_mp3ingameplay())
