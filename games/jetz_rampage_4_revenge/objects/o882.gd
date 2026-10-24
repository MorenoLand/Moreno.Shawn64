extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	(GM.f_sound_volume(120.0, 0.0))
	(GM.f_sound_pan(120.0, 0.0))
	alarm[int(0.0)] = 2.0
	x = x + 5900.0
	(GM.f_action_move(self, "000100000", 20.0, 0.0))
func ev_alarm_0():
	(GM.f_sound_loop(120.0))
func ev_step():
	(GM.f_sound_volume(120.0, (1.0 - (((GM.f_distance_to_point(self, (GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0))), y)) / 5000.0)))))
	(GM.f_sound_pan(120.0, (0.5 - ((((((GM.view_xview[int(0.0)] + ((GM.view_wview[int(0.0)] / 2.0)))) - x)) / 1000.0)))))
func ev_other_0():
	if (((x < (-5000.0)))):
		(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
