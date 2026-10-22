extends "res://games/holiday_hunting/scripts.gd"
var v_image_single = 0.0
var v_wow = 0.0
func ev_create():
	(GM.f_action_move(self, "000001000", 1.0, 0.0))
	v_wow = (GM.f_round((GM.f_random(5.0))))
	if ((absf(v_wow - 0.0) < 0.00001)):
		y = 280.0
		v_image_single = 0.0
		hspeed = 6.0
		depth = 5.0
	if ((absf(v_wow - 1.0) < 0.00001)):
		y = 200.0
		v_image_single = 1.0
		hspeed = 4.0
		depth = 20.0
	if ((absf(v_wow - 2.0) < 0.00001)):
		y = 120.0
		v_image_single = 2.0
		hspeed = 2.0
		depth = 40.0
	if ((absf(v_wow - 3.0) < 0.00001)):
		y = 280.0
		v_image_single = 3.0
		hspeed = 6.0
		depth = 5.0
	if ((absf(v_wow - 4.0) < 0.00001)):
		y = 200.0
		v_image_single = 4.0
		hspeed = 4.0
		depth = 20.0
	if ((absf(v_wow - 5.0) < 0.00001)):
		y = 120.0
		v_image_single = 5.0
		hspeed = 2.0
		depth = 40.0
func ev_col_0():
	if (((absf(GM.vb(self.other, "depth") - depth) < 0.00001))):
		(GM.f_instance_destroy(self))
func ev_other_0():
	if (((x > GM.room_width))):
		(GM.f_instance_destroy(self))
