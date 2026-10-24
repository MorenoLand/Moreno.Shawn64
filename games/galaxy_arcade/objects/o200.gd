extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	if ((32.0 > 0.0)):
		x = ((GM.f_round((x / 32.0))) * 32.0)
	if ((32.0 > 0.0)):
		y = ((GM.f_round((y / 32.0))) * 32.0)
	alarm[int(0.0)] = 50.0
func ev_alarm_0():
	(GM.f_sound_play(1.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 194.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 193.0))
	if (not ((((GM.f_place_meeting(self, (x + (-32.0)), (y + 0.0), 180.0)))) >= 0.5)):
		(GM.f_instance_create((x + 16.0), (y + 16.0), 222.0))
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + 32.0), 180.0)))) >= 0.5)):
		(GM.f_instance_create((x + 16.0), (y + 16.0), 224.0))
	if (not ((((GM.f_place_meeting(self, (x + 32.0), (y + 0.0), 180.0)))) >= 0.5)):
		(GM.f_instance_create((x + 16.0), (y + 16.0), 221.0))
	if (not ((((GM.f_place_meeting(self, (x + 0.0), (y + (-32.0)), 180.0)))) >= 0.5)):
		(GM.f_instance_create((x + 16.0), (y + 16.0), 223.0))
	(GM.f_instance_destroy(self))
func ev_step():
	if ((((GM.f_place_empty(self, (x + 0.0), (y + 0.0)))))) >= 0.5:
		(GM.f_instance_change(self, 203.0, 0.0))
