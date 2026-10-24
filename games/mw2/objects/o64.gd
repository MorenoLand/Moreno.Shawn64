extends "res://games/mw2/scripts.gd"
var v_drawready = 0.0
func ev_create():
	v_drawready = 0.0
	x = x + 0.0
	y = y + (-25.0)
	(GM.f_action_move(self, "000001000", 4.0, 0.0))
	alarm[int(0.0)] = 60.0
	alarm[int(1.0)] = 1.0
func ev_destroy():
	(GM.f_sound_play(21.0))
func ev_alarm_1():
	if (((absf(v_drawready - 1.0) < 0.00001))):
		(GM.f_instance_create((x + 0.0), (y + 0.0), 75.0))
	alarm[int(1.0)] = 1.0
func ev_alarm_0():
	(GM.f_sound_play(20.0))
	sprite_index = 69.0
	image_speed = 1.0
	v_drawready = 1.0
	gravity_direction = gravity_direction + 0.0
	gravity = gravity + 0.5
	(GM.f_motion_set(self, 50.0, 20.0))
func ev_step():
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
func ev_draw():
	if (((absf(v_drawready - 1.0) < 0.00001))):
		(GM.f_draw_sprite(69.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
	else:
		(GM.f_draw_sprite(93.0, (-1.0), (x + 0.0), (y + 0.0)))
