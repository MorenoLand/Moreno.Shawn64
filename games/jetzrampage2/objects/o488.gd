extends "res://games/jetzrampage2/objects/o85.gd"
var v_working = 0.0
func ev_create():
	v_mypower = 2.0
	v_alive = 1.0
	v_working = 0.0
	x = (GM.f_random(GM.room_width))
	y = y
	v_door = 0.0
	(GM.f_action_move(self, "000001000", 4.0, 0.0))
func ev_alarm_0():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 489.0))
		v_working = 0.0
		if ((((GM.f_random(2.0)) < 1.0))):
			(GM.f_action_move(self, "000100000", 4.0, 0.0))
			sprite_index = 477.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
		else:
			(GM.f_action_move(self, "000001000", 4.0, 0.0))
			sprite_index = 476.0
			if ((1.0 >= 0.0)):
				image_index = 1.0
			image_speed = 0.0
func ev_col_531():
	pass
func ev_col_497():
	pass
func ev_col_243():
	pass
func ev_col_233():
	pass
func ev_col_202():
	pass
func ev_col_166():
	pass
func ev_col_103():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(GM.f_instance_create((-39.0), y, 504.0))
		(self.script_random_die(0.0, 0.0, 0.0, 0.0, 0.0))
		x = (x - 10.0)
		y = y
		(GM.f_instance_create(0.0, 0.0, 130.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
		for _r369 in range(int((30.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
		(self.script_person_died(0.0, 0.0, 0.0, 0.0, 0.0))
		if ((absf(direction - 0.0) < 0.00001)):
			v_image_single = 0.0
		else:
			v_image_single = 1.0
		(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_80():
	if (((absf(v_alive - 1.0) < 0.00001))):
		if (((absf(v_alive - 0.0) < 0.00001))):
			if (((absf(v_working - 0.0) < 0.00001))):
				if (not ((((GM.f_place_meeting(self, GM.vb(self.other, "x"), GM.vb(self.other, "y"), 488.0)))) >= 0.5)):
					(GM.f_instance_create((x + 0.0), (y + 0.0), 490.0))
					(GM.f_action_move(self, "000010000", 0.0, 0.0))
					x = GM.vb(self.other, "x")
					y = y
					sprite_index = 478.0
					if ((1.0 >= 0.0)):
						image_index = 1.0
					image_speed = 0.0
					alarm[int(0.0)] = 150.0
					v_working = 1.0
func ev_col_10():
	if (((absf(v_alive - 1.0) < 0.00001))):
		v_mypower = v_mypower + (-1.0)
		if (((v_mypower > 0.0))):
			(self.script_random_die(0.0, 0.0, 0.0, 0.0, 0.0))
		if (((absf(v_mypower - 0.0) < 0.00001))):
			(GM.f_instance_create((-39.0), y, 504.0))
			(self.script_person_died(0.0, 0.0, 0.0, 0.0, 0.0))
			x = (x - 10.0)
			y = y
			(GM.f_instance_create(0.0, 0.0, 130.0))
			(GM.f_instance_create((x + 0.0), (y + 0.0), 106.0))
			for _r370 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
			if ((absf(direction - 0.0) < 0.00001)):
				v_image_single = 0.0
			else:
				v_image_single = 1.0
			(GM.f_action_move(self, "000010000", 0.0, 0.0))
		else:
			(GM.f_sound_play(12.0))
			for _r371 in range(int((30.0))):
				(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 68.0))
