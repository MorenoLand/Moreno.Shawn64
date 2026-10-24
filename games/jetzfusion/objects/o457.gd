extends "res://games/jetzfusion/scripts.gd"
var v_push = 0.0
var v_spite_height = 0.0
var v_wee = 0.0
func ev_create():
	image_single = 0.0
	v_wee = 5.0
	v_push = 1.0
	alarm[int(0.0)] = v_wee
func ev_alarm_2():
	v_push = 1.0
func ev_alarm_1():
	image_single = 0.0
	alarm[int(0.0)] = v_wee
func ev_alarm_0():
	image_single = 1.0
	alarm[int(1.0)] = v_wee
func ev_keypress_13():
	if (((absf(v_push - 1.0) < 0.00001))):
		if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
			if (((absf(image_single - 0.0) < 0.00001))):
				(GM.f_sound_play(36.0))
				for _r602 in range(int((20.0))):
					(GM.f_instance_create((x + 0.0), (y + 0.0), 47.0))
				if (((absf((GM.f_instance_number(457.0)) - 1.0) < 0.00001))):
					(GM.f_sound_play(48.0))
					for _w603 in GM.with_list((170.0), self):
						if _w603._dead:
							continue
						_w603.other = self
						(GM.f_instance_destroy(_w603))
					GM.G["money"] = GM.G["money"] + 300.0
					for _w604 in GM.with_list((454.0), self):
						if _w604._dead:
							continue
						_w604.other = self
						(GM.f_instance_create((_w604.x + 0.0), (_w604.y + 0.0), 455.0))
					for _w605 in GM.with_list((454.0), self):
						if _w605._dead:
							continue
						_w605.other = self
						(GM.f_instance_destroy(_w605))
				(GM.f_instance_destroy(self))
			if (((absf(image_single - 1.0) < 0.00001))):
				(GM.f_instance_create((x + (-150.0)), (y + (-150.0)), 59.0))
				(GM.f_instance_create(((x + (sprite_width / 2.0)) - 75.0), ((y + (sprite_height / 2.0)) - 75.0), 14.0))
				(GM.f_instance_create(((x + (sprite_width / 2.0)) - 40.0), ((y + (sprite_height / 2.0)) - 40.0), 13.0))
				(GM.f_sound_play(23.0))
				for _r606 in range(int((50.0))):
					(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(v_spite_height))), 26.0))
				alarm[int(2.0)] = 15.0
				v_push = 0.0
