extends "res://games/holiday_hunting/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 5.0, 0.0))
	alarm[int(0.0)] = 20.0
func ev_alarm_0():
	(GM.f_sound_play(19.0))
func ev_mouse_4():
	if (not ((((GM.f_sound_isplaying(0.0)))) >= 0.5)):
		(GM.f_sound_play(20.0))
		(GM.f_sound_play(6.0))
		if ((GM.G["combotime"] > 0.0)):
			GM.G["combototal"] = GM.G["combototal"] + 1.0
		GM.G["currentscore"] = GM.G["currentscore"] + 1000.0
		GM.G["combotime"] = 100.0
		(self.script_add1000p())
		(GM.f_instance_destroy(self))
func ev_other_0():
	if (((x > GM.room_width))):
		(GM.f_instance_destroy(self))
