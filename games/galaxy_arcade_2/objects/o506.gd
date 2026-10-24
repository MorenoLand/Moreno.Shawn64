extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 0.0
func ev_alarm_0():
	for _w141 in GM.with_list((507.0), self):
		if _w141._dead:
			continue
		_w141.other = self
		(GM.f_instance_change(_w141, 503.0, 0.0))
func ev_step():
	if (((absf((GM.f_instance_number(501.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(514.0)) - 1.0) < 0.00001))):
			(GM.f_room_goto(32.0))
		else:
			(GM.f_room_goto_next())
	if (((GM.lives < 1.0))):
		if (((GM.G["pacpoints"] > GM.G["pachigh"]))):
			GM.G["pachigh"] = GM.G["pacpoints"]
		(GM.f_sound_play(131.0))
		(GM.f_room_goto(1.0))
func ev_col_508():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 503.0))
	for _w142 in GM.with_list((self.other), self):
		if _w142._dead:
			continue
		_w142.other = self
		(GM.f_instance_destroy(_w142))
