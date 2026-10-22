extends "res://games/holiday_hunting/scripts.gd"
var v_shoot = 0.0
func ev_create():
	(GM.f_sound_play(2.0))
	v_shoot = 0.0
	for _r1 in range(int((50.0))):
		(GM.f_instance_create((GM.f_random((GM.room_width - 50.0))), (GM.f_random((GM.room_height - 150.0))), 16.0))
func ev_alarm_1():
	(GM.f_sound_play(0.0))
func ev_alarm_0():
	v_shoot = 0.0
func ev_step():
	x = (GM.mouse_x - (sprite_width / 2.0))
	y = (GM.mouse_y - (sprite_height / 2.0))
	if ((((GM.f_random(1000.0)) < 1.0))):
		if (((absf((GM.f_instance_number(37.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create((-20.0), 0.0, 37.0))
	if ((((GM.f_random(1000.0)) < 1.0))):
		if (((absf((GM.f_instance_number(43.0)) - 0.0) < 0.00001))):
			(GM.f_instance_create((-200.0), 100.0, 43.0))
	if ((((GM.f_random(100.0)) < 1.0))):
		(GM.f_instance_create(0.0, 0.0, 32.0))
	if ((((GM.f_random(50.0)) < 1.0))):
		if ((((GM.f_instance_number(0.0)) < 3.0))):
			(GM.f_instance_create((-800.0), 0.0, 0.0))
	if ((((GM.f_random(50.0)) < 1.0))):
		if ((((GM.f_instance_number(20.0)) < 2.0))):
			(GM.f_instance_create((-1000.0), 0.0, 20.0))
	if ((((GM.f_random(50.0)) < 1.0))):
		(GM.f_instance_create(GM.room_width, (50.0 + (GM.f_random(150.0))), 23.0))
	if ((((GM.f_random(50.0)) < 1.0))):
		if ((((GM.f_instance_number(29.0)) < 2.0))):
			(GM.f_instance_create((-200.0), 0.0, 29.0))
func ev_mouse_4():
	if (not ((((GM.f_sound_isplaying(0.0)))) >= 0.5)):
		if (((absf((GM.f_instance_number(9.0)) - 0.0) < 0.00001))):
			if (((GM.mouse_y < 440.0))):
				if (((absf(v_shoot - 0.0) < 0.00001))):
					if (not ((((GM.f_place_meeting(self, GM.mouse_x, GM.mouse_y, 19.0)))) >= 0.5)):
						if (not ((((GM.f_place_meeting(self, GM.mouse_x, GM.mouse_y, 20.0)))) >= 0.5)):
							(GM.f_sound_play(1.0))
							for _r2 in range(int((50.0))):
								(GM.f_instance_create((GM.mouse_x - 5.0), (GM.mouse_y - 5.0), 18.0))
					(GM.f_instance_create((GM.mouse_x + 10.0), (GM.mouse_y - 5.0), 17.0))
					for _w3 in GM.with_list((8.0), self):
						if _w3._dead:
							continue
						_w3.other = self
						(GM.f_instance_create((_w3.x + 0.0), (_w3.y + 0.0), 9.0))
					for _w4 in GM.with_list((8.0), self):
						if _w4._dead:
							continue
						_w4.other = self
						(GM.f_instance_destroy(_w4))
					v_shoot = 1.0
					alarm[int(0.0)] = 4.0
					alarm[int(1.0)] = 1.0
func ev_draw():
	(GM.f_draw_sprite(5.0, (-1.0), (GM.mouse_x - 3.0), (GM.mouse_y - 3.0)))
	if (((absf(v_shoot - 1.0) < 0.00001))):
		(GM.f_draw_sprite(4.0, (-1.0), GM.mouse_x, (GM.mouse_y - 104.0)))
	else:
		(GM.f_draw_sprite(8.0, (GM.f_floor((GM.mouse_y / ((GM.room_height / 20.0))))), GM.mouse_x, (GM.mouse_y - 104.0)))
