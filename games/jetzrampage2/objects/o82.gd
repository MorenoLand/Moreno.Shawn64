extends "res://games/jetzrampage2/scripts.gd"
var v_alive = 0.0
func ev_create():
	v_alive = 1.0
	(GM.f_action_move(self, "000001000", 1.0, 0.0))
func ev_col_103():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(GM.f_sound_play(15.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
		gravity_direction = 270.0
		gravity = 0.2
		v_alive = 0.0
func ev_col_16():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
	(GM.f_instance_destroy(self))
func ev_col_10():
	if (((absf(v_alive - 1.0) < 0.00001))):
		(GM.f_sound_play(15.0))
		(GM.f_instance_create((x + 0.0), (y + 0.0), 233.0))
		gravity_direction = 270.0
		gravity = 0.2
		v_alive = 0.0
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
