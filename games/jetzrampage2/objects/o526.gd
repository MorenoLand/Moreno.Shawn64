extends "res://games/jetzrampage2/scripts.gd"
var v_alive = 0.0
var v_image_single = 0.0
func ev_create():
	v_alive = 1.0
	(GM.f_path_start(self, 1.0, (2.0 + (GM.f_random(5.0))), (GM.f_random(4.0)), 0.0))
	x = (GM.f_random(GM.room_width))
	y = (GM.f_random(200.0))
	v_image_single = 0.0
func ev_col_517():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
	(GM.f_instance_destroy(self))
func ev_col_142():
	(GM.f_sound_play(15.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(GM.f_path_start(self, (-1.0), 0.0, 0.0, 0.0))
		v_image_single = 1.0
		gravity_direction = 270.0
		gravity = 0.5
		(GM.f_sound_play(177.0))
		v_alive = 0.0
func ev_col_0():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(GM.f_path_start(self, (-1.0), 0.0, 0.0, 0.0))
		v_image_single = 1.0
		gravity_direction = 270.0
		gravity = 0.5
		(GM.f_sound_play(177.0))
		v_alive = 0.0
func ev_other_0():
	(GM.f_instance_destroy(self))
