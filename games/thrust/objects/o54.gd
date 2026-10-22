extends "res://games/thrust/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 12.0
func ev_alarm_0():
	if ((((self.script_view_check(self))))) >= 0.5:
		if (not (((absf(GM.room - 55.0) < 0.00001)))):
			(GM.f_sound_play(14.0))
	alarm[int(0.0)] = 12.0
