extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 40.0
func ev_alarm_0():
	timeline_index = 1.0
	timeline_position = 0.0
	timeline_running = 1.0
	timeline_speed = 1.0
