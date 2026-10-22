extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_heartbeats = 0.0
func ev_create():
	(GM.f_action_move(self, "000001000", 10.0, 0.0))
	alarm[int(0.0)] = 15.0
func ev_alarm_0():
	(GM.f_sound_play(v_heartbeats))
func ev_other_0():
	if ((x > GM.room_width)):
		(GM.f_instance_destroy(self))
