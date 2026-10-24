extends "res://games/galaxy_arcade/scripts.gd"
var v_keyboard_continuous = 0.0
func ev_step():
	if (((absf((GM.f_instance_number(44.0)) - 1.0) < 0.00001))):
		for _w1 in GM.with_list((44.0), self):
			if _w1._dead:
				continue
			_w1.other = self
			(GM.f_instance_destroy(_w1))
	if (((absf((GM.f_instance_number(60.0)) - 1.0) < 0.00001))):
		for _w2 in GM.with_list((60.0), self):
			if _w2._dead:
				continue
			_w2.other = self
			(GM.f_instance_destroy(_w2))
	if (((absf((GM.f_instance_number(57.0)) - 1.0) < 0.00001))):
		for _w3 in GM.with_list((57.0), self):
			if _w3._dead:
				continue
			_w3.other = self
			(GM.f_instance_destroy(_w3))
	if (((absf((GM.f_instance_number(67.0)) - 1.0) < 0.00001))):
		for _w4 in GM.with_list((67.0), self):
			if _w4._dead:
				continue
			_w4.other = self
			(GM.f_instance_destroy(_w4))
func ev_key_40():
	if (((GM.G["shotpower"] > 16.0))):
		GM.G["shotpower"] = GM.G["shotpower"] + (-1.0)
func ev_key_38():
	if (((GM.G["shotpower"] < 17.0))):
		GM.G["shotpower"] = GM.G["shotpower"] + 1.0
func ev_mouse_0():
	(GM.f_room_goto(44.0))
func ev_other_4():
	v_keyboard_continuous = 1.0
	(GM.f_sound_stop(9.0))
	GM.score = 0.0
	GM.G["planelaunch"] = 5.0
	GM.G["missilspeed"] = 1000.0
	GM.G["lives"] = 10.0
	GM.G["missils"] = 0.0
	GM.G["lives2"] = 10.0
	GM.G["guymisses"] = 10.0
	GM.G["guys"] = 0.0
	GM.G["distancetotarget"] = 2055.0
	GM.G["sky"] = 0.0
	GM.G["shotpower"] = 16.0
	GM.G["shotscore"] = 0.0
	GM.G["shottime"] = 0.0
	GM.G["pacscore"] = 0.0
	GM.G["paclives"] = 3.0
	for _w5 in GM.with_list((178.0), self):
		if _w5._dead:
			continue
		_w5.other = self
		(GM.f_instance_destroy(_w5))
	GM.G["bombplayers"] = 2.0
	for _w6 in GM.with_list((220.0), self):
		if _w6._dead:
			continue
		_w6.other = self
		(GM.f_instance_destroy(_w6))
	for _w7 in GM.with_list((219.0), self):
		if _w7._dead:
			continue
		_w7.other = self
		(GM.f_instance_destroy(_w7))
	for _w8 in GM.with_list((198.0), self):
		if _w8._dead:
			continue
		_w8.other = self
		(GM.f_instance_destroy(_w8))
func ev_other_2():
	GM.G["music"] = 0.0
	GM.G["skyhighscore"] = 0.0
	GM.G["doe"] = 0.0
	GM.G["asteroidshighscore"] = 0.0
	GM.G["savehigh"] = 0.0
	GM.G["shothigh"] = 0.0
	GM.G["pachigh"] = 0.0
	GM.G["missilshigh"] = 0.0
func ev_draw():
	(GM.f_action_draw_font("Arial", 8.0, 1.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(192.0, 248.0, ("High Score: " + (GM.f_string(GM.G["pachigh"])))))
	(GM.f_draw_text(192.0, 280.0, "High Score: none"))
	(GM.f_draw_text(192.0, 312.0, ("High Score: " + (GM.f_string(GM.G["savehigh"])))))
	(GM.f_draw_text(192.0, 344.0, ("High Score: " + (GM.f_string(GM.G["skyhighscore"])))))
	(GM.f_draw_text(192.0, 376.0, ("High Score: " + (GM.f_string(GM.G["asteroidshighscore"])))))
	(GM.f_draw_text(192.0, 216.0, ("High Score: " + (GM.f_string(GM.G["missilshigh"])))))
