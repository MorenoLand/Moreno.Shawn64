extends "res://games/jetzrampage2/scripts.gd"
var v_image_single = 0.0
var v_psound = 0.0
func ev_create():
	x = (400.0 - (sprite_width / 2.0))
	v_psound = 1.0
func ev_step():
	(self.script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_keypress_13():
	if (((absf(v_image_single - 1.0) < 0.00001))):
		(GM.f_sound_stop(85.0))
		(GM.f_room_goto(10.0))
