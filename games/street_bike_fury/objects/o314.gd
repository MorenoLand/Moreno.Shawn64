extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	for _w141 in GM.with_list((0.0), self):
		if _w141._dead:
			continue
		_w141.other = self
		GM.vset(_w141, "v_intro2", 1.0)
		GM.vset(_w141, "v_rotate", 0.0)
		GM.vset(_w141, "v_rate", 0.0)
		GM.health = 100.0
	(GM.f_registry_write_real("omlet_newbike", 999.0))
	alarm[int(0.0)] = 40.0
	alarm[int(1.0)] = 250.0
	for _w142 in GM.with_list((307.0), self):
		if _w142._dead:
			continue
		_w142.other = self
		(GM.f_instance_destroy(_w142))
	for _w143 in GM.with_list((248.0), self):
		if _w143._dead:
			continue
		_w143.other = self
		(GM.f_instance_destroy(_w143))
func ev_alarm_1():
	await GM.f_show_message("You Escaped! +10000 Points")
	GM.G["distance"] = GM.G["distance"] + 10.0
	for _w144 in GM.with_list((0.0), self):
		if _w144._dead:
			continue
		_w144.other = self
		_w144.alarm[int(11.0)] = 1.0
func ev_alarm_0():
	(GM.f_sound_play(98.0))
	(GM.f_instance_create(GM.view_xview[0], GM.view_yview[0], 315.0))
func ev_step():
	x = GM.view_xview[0]
	y = GM.view_yview[0]
