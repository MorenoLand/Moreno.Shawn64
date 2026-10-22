extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 4.0
func ev_alarm_0():
	if ((GM.G["warning"] > 60.0)):
		(GM.f_instance_destroy(self))
		return
	if ((absf(GM.room - 1.0) < 0.00001)):
		(self.script_checkcity1())
	if ((absf(GM.room - 16.0) < 0.00001)):
		(self.script_checkcity2())
	(GM.f_instance_destroy(self))
