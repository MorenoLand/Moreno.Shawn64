extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_image_single = 0.0
var v_wee = 0.0
func ev_create():
	v_image_single = 0.0
	gravity = 0.2
	gravity_direction = 270.0
func ev_col_489():
	vspeed = 0.0
func ev_col_7():
	GM.G["j4var5"] = 1.0
	(GM.f_sound_play(224.0))
	v_wee = (GM.f_instance_create(x, y, 974.0))
	GM.vset(v_wee, "v_powerupz", "Machinegun 2")
	(GM.f_instance_destroy(self))
