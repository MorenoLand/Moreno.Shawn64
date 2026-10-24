extends "res://games/galaxy_arcade/scripts.gd"
func ev_alarm_0():
	(GM.f_sound_play(1.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 194.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 193.0))
	if (not ((((GM.f_place_meeting(self, (x + (-32.0)), (y + 0.0), 180.0)))) >= 0.5)):
		(GM.f_instance_create((x + 16.0), (y + 16.0), 232.0))
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 32.0), 180.0)))) >= 0.5)):
		(GM.f_instance_create((x + 16.0), (y + 16.0), 235.0))
	if (not ((((GM.f_place_meeting(self, (x + 32.0), (y + 0.0), 180.0)))) >= 0.5)):
		(GM.f_instance_create((x + 16.0), (y + 16.0), 233.0))
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + (-32.0)), 180.0)))) >= 0.5)):
		(GM.f_instance_create((x + 16.0), (y + 16.0), 234.0))
	(GM.f_instance_destroy(self))
