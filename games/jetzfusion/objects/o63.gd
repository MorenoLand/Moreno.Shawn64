extends "res://games/jetzfusion/scripts.gd"
var v_view_left = 0.0
var v_view_width = 0.0
func ev_create():
	(GM.f_action_move(self, "000100000", 10.0, 0.0))
	(GM.f_sound_volume(45.0, 0.0))
	(GM.f_sound_loop(45.0))
func ev_step():
	(GM.f_sound_volume(45.0, (1.0 - (((GM.f_distance_to_point(self, GM.add(GM.aget(v_view_left, 0.0), ((GM.aget(v_view_width, 0.0) / 2.0))), y)) / 5000.0)))))
	(GM.f_sound_pan(45.0, (0.5 - (((((GM.add(GM.aget(v_view_left, 0.0), ((GM.aget(v_view_width, 0.0) / 2.0)))) - x)) / 1000.0)))))
func ev_other_0():
	if (((x < (-sprite_width)))):
		(self.script_Outside_Wrap(0.0, 0.0, 0.0, 0.0, 0.0))
