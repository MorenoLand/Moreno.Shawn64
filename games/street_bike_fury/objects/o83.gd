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
	for _w60 in GM.with_list((212.0), self):
		if _w60._dead:
			continue
		_w60.other = self
		(GM.f_instance_destroy(_w60))
	(GM.f_sound_play(22.0))
	(GM.f_instance_create((GM.view_xview[0] + GM.view_wview[0]), GM.view_yview[0], 253.0))
	if ((absf(GM.G["speedzone"] - 1.0) < 0.00001)):
		(GM.f_instance_create(GM.vb(0.0, "x"), GM.vb(0.0, "y"), 242.0))
	else:
		for _w61 in GM.with_list((0.0), self):
			if _w61._dead:
				continue
			_w61.other = self
			GM.vset(_w61, "v_shocks", 0.0)
			_w61.ev_user(11.0)
	if ((absf(GM.G["finished"] - 1.0) < 0.00001)):
		(GM.f_instance_create(GM.vb(0.0, "x"), GM.vb(0.0, "y"), 314.0))
	(self.script_addmessage("Back On Land!! +15", 32768.0, 15.0))
	GM.G["shortcuts"] = GM.G["shortcuts"] + 15.0
	if ((absf((GM.f_instance_number(236.0)) - 0.0) < 0.00001)):
		(self.script_addtrick("Gained 1 Missile", 0.0, 0.0))
	GM.G["bombs"] = GM.G["bombs"] + 1.0
	(GM.f_instance_destroy(self))
