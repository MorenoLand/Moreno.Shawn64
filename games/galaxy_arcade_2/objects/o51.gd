extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_alarm_0():
	(GM.f_instance_create(384.0, 520.0, 40.0))
func ev_col_40():
	if (((absf((GM.f_instance_number(40.0)) - 1.0) < 0.00001))):
		GM.lives = GM.lives + (-1.0)
		for _w83 in GM.with_list((self.other), self):
			if _w83._dead:
				continue
			_w83.other = self
			(GM.f_instance_destroy(_w83))
		if (((GM.lives > 0.0))):
			alarm[int(0.0)] = 50.0
		else:
			if (((GM.score > GM.G["zzhigh"]))):
				GM.G["zzhigh"] = GM.score
			(GM.f_room_goto(1.0))
	else:
		for _w84 in GM.with_list((self.other), self):
			if _w84._dead:
				continue
			_w84.other = self
			(GM.f_instance_destroy(_w84))
