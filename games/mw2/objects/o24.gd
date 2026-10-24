extends "res://games/mw2/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 3.0, 0.0))
func ev_step():
	image_single = (direction / ((360.0 / image_number)))
	if (((absf(GM.G["glue"] - 1.0) < 0.00001))):
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
	if (((absf((GM.f_instance_number(123.0)) - 1.0) < 0.00001))):
		(GM.f_sound_play(8.0))
		GM.score = GM.score + 1.0
		(GM.f_instance_create((x + 0.0), (y + 0.0), 36.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
		GM.G["missils"] = GM.G["missils"] + (-1.0)
		(GM.f_instance_destroy(self))
func ev_col_126():
	(GM.f_sound_play(8.0))
	GM.score = GM.score + 1.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 36.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	GM.G["missils"] = GM.G["missils"] + (-1.0)
	(GM.f_instance_destroy(self))
func ev_col_111():
	(GM.f_sound_play(8.0))
	GM.score = GM.score + 1.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 36.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	GM.G["missils"] = GM.G["missils"] + (-1.0)
	(GM.f_instance_destroy(self))
func ev_col_30():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 36.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	GM.G["missils"] = GM.G["missils"] + (-1.0)
	(GM.f_instance_destroy(self))
func ev_col_15():
	(GM.f_instance_destroy(self))
	if (((absf((GM.f_instance_number(37.0)) - 0.0) < 0.00001))):
		(GM.f_instance_create(797.0, 40.0, 37.0))
func ev_key_40():
	if (direction > 0.0):
		direction = direction - (360.0 / image_number)
	else:
		direction = (360.0 - (360.0 / image_number))
func ev_key_39():
	if (speed < 7.0):
		speed = speed + 0.2
	else:
		speed = 5.0
func ev_key_38():
	direction = direction + (360.0 / image_number)
func ev_key_37():
	if (speed > 1.0):
		speed = speed - 0.2
	else:
		speed = 1.0
func ev_mouse_0():
	(GM.f_mplay_message_send(0.0, 11.0, 0.0))
	(GM.f_sound_play(8.0))
	GM.score = GM.score + 1.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 36.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	(GM.f_instance_create((x + 23.0), (y + 23.0), 21.0))
	GM.G["missils"] = GM.G["missils"] + (-1.0)
	(GM.f_instance_destroy(self))
func ev_other_0():
	(GM.f_instance_destroy(self))
