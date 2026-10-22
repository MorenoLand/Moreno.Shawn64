extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_image_single = 0.0
func ev_create():
	(self.script_adddamage())
	v_image_single = 1.0
func ev_col_656():
	(GM.f_instance_destroy(self))
