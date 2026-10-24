extends "res://games/galaxy_arcade_2/scripts.gd"
var v_aster = 0.0
var v_butt = 0.0
var v_butt2 = 0.0
var v_ham = 0.0
func ev_create():
	v_aster = 2.0
	v_ham = 1.0
	v_butt = 0.0
	v_butt2 = 0.0
func ev_alarm_0():
	(GM.f_sound_play(17.0))
	(GM.f_instance_create(400.0, 272.0, 482.0))
	v_ham = 1.0
func ev_step():
	if (((absf((GM.f_instance_number(486.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(487.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(490.0)) - 0.0) < 0.00001))):
				for _w129 in GM.with_list((482.0), self):
					if _w129._dead:
						continue
					_w129.other = self
					_w129.x = _w129.xstart
					_w129.y = _w129.ystart
				for _w130 in GM.with_list((1245.0), self):
					if _w130._dead:
						continue
					_w130.other = self
					_w130.x = _w130.xstart
					_w130.y = _w130.ystart
				for _w131 in GM.with_list((482.0), self):
					if _w131._dead:
						continue
					_w131.other = self
					(GM.f_action_move(_w131, "000010000", 0.0, 0.0))
				v_aster = v_aster + 1.0
				for _r132 in range(int((v_aster))):
					if ((((GM.f_random(2.0)) < 1.0))):
						(GM.f_instance_create((GM.f_random(750.0)), 0.0, 486.0))
					else:
						(GM.f_instance_create((GM.f_random(750.0)), 496.0, 486.0))
	if (((absf((GM.f_instance_number(482.0)) - 0.0) < 0.00001))):
		v_butt = 1.0
	else:
		v_butt = 0.0
	if (((absf((GM.f_instance_number(1245.0)) - 0.0) < 0.00001))):
		v_butt2 = 1.0
	else:
		v_butt2 = 0.0
	if (((absf(GM.lives - 0.0) < 0.00001))):
		if (((GM.G["roids"] > GM.G["roidshigh"]))):
			(GM.f_sound_play(131.0))
			GM.G["roidshigh"] = GM.G["roids"]
		(GM.f_sound_stop(133.0))
		(GM.f_room_goto(1.0))
func ev_other_4():
	GM.G["roids"] = 0.0
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(12632256.0))
	(GM.f_draw_text(20.0, 500.0, ("Score: " + (GM.f_string(GM.G["roids"])))))
	(GM.f_draw_text(20.0, 520.0, ("ships: " + (GM.f_string(GM.lives)))))
func ev_keypress_71():
	if (((absf(v_butt2 - 1.0) < 0.00001))):
		(GM.f_instance_create((((-sprite_width) / 2.0) + 400.0), (((-sprite_height) / 2.0) + 300.0), 1245.0))
func ev_keypress_32():
	if (((absf(v_butt - 1.0) < 0.00001))):
		(GM.f_instance_create((((-sprite_width) / 2.0) + 400.0), (((-sprite_height) / 2.0) + 300.0), 482.0))
