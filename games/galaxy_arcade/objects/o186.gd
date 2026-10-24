extends "res://games/galaxy_arcade/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000001000", 10.0, 0.0))
	alarm[int(0.0)] = GM.G["firep1"]
	alarm[int(1.0)] = 1.0
func ev_alarm_1():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 193.0))
	alarm[int(1.0)] = 1.0
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_col_219():
	alarm[int(0.0)] = GM.G["firep3"]
	alarm[int(1.0)] = 2.0
func ev_col_216():
	alarm[int(0.0)] = GM.G["firep3"]
	alarm[int(1.0)] = 2.0
func ev_col_203():
	alarm[int(0.0)] = GM.G["firep2"]
	alarm[int(1.0)] = 2.0
func ev_col_202():
	alarm[int(0.0)] = GM.G["firep1"]
	alarm[int(1.0)] = 2.0
func ev_col_198():
	alarm[int(0.0)] = GM.G["firep2"]
	alarm[int(1.0)] = 2.0
func ev_col_180():
	(GM.f_instance_destroy(self))
func ev_col_179():
	(GM.f_instance_destroy(self))
func ev_col_178():
	alarm[int(0.0)] = GM.G["firep1"]
	alarm[int(1.0)] = 2.0
func ev_other_0():
	(GM.f_instance_destroy(self))
