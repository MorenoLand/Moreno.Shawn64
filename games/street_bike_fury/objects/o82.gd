extends "res://games/street_bike_fury/scripts.gd"
func ev_step():
	if (((GM.f_instance_number(0.0)) > 0.0)):
		if (((GM.vb(0.0, "x") > x) and (absf(GM.vget(0.0, "v_die") - 0.0) < 0.00001))):
			self.ev_user(0.0)
	else:
		if (((GM.f_instance_number(21.0)) > 0.0)):
			if ((GM.vb(21.0, "x") > x)):
				self.ev_user(0.0)
func ev_other_10():
	if (((GM.f_instance_number(242.0)) > 0.0)):
		for _w58 in GM.with_list((242.0), self):
			if _w58._dead:
				continue
			_w58.other = self
			(GM.f_instance_destroy(_w58))
		GM.G["speedzone"] = 0.0
	(GM.f_sound_play(22.0))
	for _w59 in GM.with_list((0.0), self):
		if _w59._dead:
			continue
		_w59.other = self
		GM.vset(_w59, "v_shocks", 12.0)
		_w59.ev_user(10.0)
	(self.script_addmessage("TIME TO GET WET!! +15", 32768.0, 15.0))
	GM.G["shortcuts"] = GM.G["shortcuts"] + 15.0
	(GM.f_instance_destroy(self))
