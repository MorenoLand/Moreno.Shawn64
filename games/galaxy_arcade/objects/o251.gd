extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	if ((((GM.f_random(3.0)) < 1.0))):
		alarm[int(0.0)] = 1.0
	else:
		if ((((GM.f_random(3.0)) < 1.0))):
			alarm[int(1.0)] = 1.0
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				alarm[int(2.0)] = 1.0
			else:
				alarm[int(3.0)] = 1.0
func ev_alarm_3():
	if ((((GM.f_random(3.0)) < 1.0))):
		(GM.f_action_move(self, "000001000", 4.0, 0.0))
		(GM.f_instance_change(self, 263.0, 0.0))
	else:
		(GM.f_path_start(self, 6.0, 4.0, 0.0, 0.0))
		(GM.f_instance_change(self, 264.0, 0.0))
func ev_alarm_2():
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_path_start(self, 4.0, 5.0, 0.0, 0.0))
		(GM.f_instance_change(self, 259.0, 0.0))
	else:
		(GM.f_path_start(self, 5.0, 5.0, 0.0, 0.0))
		(GM.f_instance_change(self, 261.0, 0.0))
func ev_alarm_1():
	if ((((GM.f_random(2.0)) < 1.0))):
		(GM.f_path_start(self, 3.0, 5.0, 0.0, 0.0))
		(GM.f_instance_change(self, 258.0, 0.0))
	else:
		sprite_index = 158.0
		image_speed = 1.0
		(GM.f_action_move(self, "000001000", 5.0, 0.0))
func ev_alarm_0():
	if ((((GM.f_random(2.0)) < 1.0))):
		sprite_index = 160.0
		image_speed = 1.0
		(GM.f_action_move(self, "000001000", 3.0, 0.0))
	else:
		sprite_index = 159.0
		image_speed = 1.0
		(GM.f_action_move(self, "000001000", 4.0, 0.0))
func ev_col_245():
	(GM.f_sound_play(1.0))
	(GM.f_instance_destroy(self))
func ev_col_98():
	if (((GM.G["missils"] > GM.G["missilshigh"]))):
		(GM.f_sound_play(10.0))
		await GM.f_show_message("NEW HIGH SCORE!")
		GM.G["missilshigh"] = GM.G["missils"]
		(GM.f_room_goto(3.0))
	else:
		(GM.f_sound_play(10.0))
		(GM.f_room_goto(3.0))
func ev_mouse_0():
	GM.G["missils"] = GM.G["missils"] + 1.0
	GM.G["missilspeed"] = GM.G["missilspeed"] + (-5.0)
	(GM.f_sound_play(1.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 254.0))
	(GM.f_instance_destroy(self))
