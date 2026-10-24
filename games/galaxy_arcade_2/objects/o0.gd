extends "res://games/galaxy_arcade_2/scripts.gd"
var v_great = 0.0
var v_poison = 0.0
var v_wow = 0.0
func ev_create():
	v_poison = 0.0
	v_wow = 1.0
	v_great = 0.0
func ev_alarm_1():
	v_great = 0.0
	(GM.f_sound_play(17.0))
func ev_alarm_0():
	(GM.f_sound_play(17.0))
	v_poison = 0.0
	v_wow = 1.0
	sprite_index = 5.0
	image_speed = 1.0
func ev_step():
	if (((absf(v_poison - 1.0) < 0.00001))):
		v_wow = 0.0
func ev_mouse_0():
	if (((absf(v_wow - 1.0) < 0.00001))):
		sprite_index = 4.0
		image_speed = 1.0
		(GM.f_instance_create((x + 0.0), (y + 0.0), 1.0))
		v_wow = 0.0
