extends "res://games/bubblegum/scripts.gd"
func ev_create():
	gravity_direction = 270.0
	gravity = 0.5
	if (((speed > 0.0))):
		sprite_index = 47.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	else:
		sprite_index = 48.0
		if ((1.0 >= 0.0)):
			image_index = 1.0
		image_speed = 0.0
	friction = 0.1
func ev_step():
	if (((speed > 15.0))):
		speed = 15.0
func ev_col_77():
	(GM.f_sound_play(18.0))
	(GM.f_room_restart())
func ev_col_65():
	GM.view_object[int(0.0)] = 0.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 0.0))
	GM.vsetb(0.0, "vspeed", vspeed)
	GM.vsetb(0.0, "hspeed", hspeed)
	(GM.f_instance_destroy(self))
func ev_col_1():
	hspeed = 0.0
func ev_key_39():
	(GM.f_motion_add(self, 0.0, 0.5))
	sprite_index = 47.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
func ev_key_37():
	(GM.f_motion_add(self, 180.0, 0.5))
	sprite_index = 48.0
	if ((1.0 >= 0.0)):
		image_index = 1.0
	image_speed = 0.0
