extends "res://games/galaxy_arcade_2/scripts.gd"
var v_bb = 0.0
var v_exploding = 0.0
var v_myAcceleration = 0.0
var v_myArmor = 0.0
var v_myFriction = 0.0
var v_myTopSpeed = 0.0
var v_my_direction = 0.0
func ev_create():
	v_bb = 1.0
	image_single = 0.0
	v_my_direction = 0.0
	v_myAcceleration = 0.5
	v_myTopSpeed = 10.0
	v_myFriction = 0.02
	v_myArmor = 10.0
	v_exploding = 0.0
	visible = 1.0
func ev_destroy():
	GM.lives = GM.lives + (-1.0)
func ev_alarm_0():
	v_bb = 1.0
func ev_col_490():
	for _r110 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
	(GM.f_sound_play(135.0))
	(GM.f_instance_destroy(self))
func ev_col_487():
	for _r111 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
	(GM.f_sound_play(135.0))
	(GM.f_instance_destroy(self))
func ev_col_486():
	for _r112 in range(int((50.0))):
		(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 494.0))
	(GM.f_sound_play(135.0))
	(GM.f_instance_destroy(self))
func ev_key_39():
	v_my_direction = fmod(((v_my_direction - 11.25)), 360.0)
	if (v_my_direction < 0.0):
		v_my_direction = v_my_direction + 360.0
	(self.script_SetShip1Sprite())
func ev_key_38():
	for _r113 in range(int((5.0))):
		(GM.f_instance_create((x + 25.0), (y + 25.0), 485.0))
	(GM.f_motion_add(self, v_my_direction, v_myAcceleration))
	speed = (GM.f_min(speed, v_myTopSpeed))
	if (not ((((GM.f_sound_isplaying(133.0)))) >= 0.5)):
		(GM.f_sound_play(133.0))
func ev_key_37():
	v_my_direction = fmod(((v_my_direction + 11.25)), 360.0)
	(self.script_SetShip1Sprite())
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	(GM.f_draw_sprite(sprite_index, image_single, x, y))
func ev_keypress_32():
	(GM.f_sound_play(30.0))
	(GM.f_instance_create((x + 25.0), (y + 25.0), 489.0))
	alarm[int(0.0)] = 7.0
	v_bb = 0.0
func ev_keyrelease_38():
	(GM.f_sound_stop(133.0))
