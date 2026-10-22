extends "res://games/holiday_hunting/scripts.gd"
var v_image_single = 0.0
var v_wow = 0.0
func ev_create():
	direction = 270.0
	v_wow = (GM.f_round((GM.f_random(5.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		v_image_single = 0.0
		speed = 6.0
		depth = 1.0
	if ((absf(v_wow - 1.0) < 0.00001)):
		v_image_single = 1.0
		speed = 5.0
		depth = 2.0
	if ((absf(v_wow - 2.0) < 0.00001)):
		v_image_single = 2.0
		speed = 4.0
		depth = 3.0
	if ((absf(v_wow - 3.0) < 0.00001)):
		v_image_single = 3.0
		speed = 3.0
		depth = 4.0
	if ((absf(v_wow - 4.0) < 0.00001)):
		v_image_single = 4.0
		speed = 2.0
		depth = 5.0
	if ((absf(v_wow - 5.0) < 0.00001)):
		v_image_single = 5.0
		speed = 1.0
		depth = 6.0
func ev_col_15():
	if ((absf(v_image_single - 5.0) < 0.00001)):
		(GM.f_instance_create((GM.f_random((GM.room_width - 45.0))), (-50.0), 16.0))
		(GM.f_instance_destroy(self))
func ev_col_14():
	if ((absf(v_image_single - 4.0) < 0.00001)):
		(GM.f_instance_create((GM.f_random((GM.room_width - 45.0))), (-50.0), 16.0))
		(GM.f_instance_destroy(self))
func ev_col_13():
	if ((absf(v_image_single - 3.0) < 0.00001)):
		(GM.f_instance_create((GM.f_random((GM.room_width - 45.0))), (-50.0), 16.0))
		(GM.f_instance_destroy(self))
func ev_col_12():
	if ((absf(v_image_single - 2.0) < 0.00001)):
		(GM.f_instance_create((GM.f_random((GM.room_width - 45.0))), (-50.0), 16.0))
		(GM.f_instance_destroy(self))
func ev_col_11():
	if ((absf(v_image_single - 1.0) < 0.00001)):
		(GM.f_instance_create((GM.f_random((GM.room_width - 45.0))), (-50.0), 16.0))
		(GM.f_instance_destroy(self))
func ev_col_10():
	if ((absf(v_image_single - 0.0) < 0.00001)):
		(GM.f_instance_create((GM.f_random((GM.room_width - 45.0))), (-50.0), 16.0))
		(GM.f_instance_destroy(self))
