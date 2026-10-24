extends "res://games/mw2/objects/o111.gd"
func ev_create():
	(GM.f_sound_play(42.0))
	(GM.f_move_random(self, 0.0, 0.0))
	alarm[int(0.0)] = 150.0
func ev_alarm_0():
	(GM.f_sound_play(12.0))
	(GM.f_instance_destroy(self))
func ev_col_143():
	(GM.f_instance_destroy(self))
func ev_col_109():
	(GM.f_instance_destroy(self))
func ev_col_84():
	(GM.f_instance_destroy(self))
func ev_col_83():
	(GM.f_instance_destroy(self))
func ev_col_64():
	(GM.f_instance_destroy(self))
func ev_col_63():
	(GM.f_instance_destroy(self))
func ev_col_62():
	(GM.f_instance_destroy(self))
func ev_col_47():
	(GM.f_instance_destroy(self))
func ev_col_45():
	(GM.f_instance_destroy(self))
func ev_col_42():
	(GM.f_instance_destroy(self))
func ev_col_41():
	(GM.f_instance_destroy(self))
func ev_col_32():
	(GM.f_instance_destroy(self))
func ev_col_29():
	(GM.f_instance_destroy(self))
func ev_col_28():
	(GM.f_instance_destroy(self))
func ev_col_27():
	(GM.f_instance_destroy(self))
func ev_col_26():
	(GM.f_instance_destroy(self))
func ev_col_25():
	(GM.f_instance_destroy(self))
func ev_col_24():
	(GM.f_instance_destroy(self))
func ev_col_19():
	(GM.f_instance_destroy(self))
func ev_col_18():
	(GM.f_instance_destroy(self))
func ev_col_12():
	(GM.f_instance_destroy(self))
func ev_other_7():
	(GM.f_move_random(self, 0.0, 0.0))
	(GM.f_sound_play(42.0))
