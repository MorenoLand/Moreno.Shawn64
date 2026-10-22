extends "res://games/jetz_rampage_4_revenge/scripts.gd"
var v_wee = 0.0
func ev_create():
	alarm[int(0.0)] = 100.0
func ev_alarm_1():
	(GM.f_instance_create(x, y, 901.0))
func ev_alarm_0():
	if ((absf(GM.room - 1.0) < 0.00001)):
		GM.G["j4var8"] = 1.0
		(GM.f_sound_play(224.0))
		v_wee = (GM.f_instance_create(x, y, 974.0))
		GM.vset(v_wee, "v_powerupz", "the Sniper")
	if ((absf(GM.room - 16.0) < 0.00001)):
		GM.G["j4var7"] = 1.0
		(GM.f_sound_play(224.0))
		v_wee = (GM.f_instance_create(x, y, 974.0))
		GM.vset(v_wee, "v_powerupz", "the Gravity Gun")
	alarm[int(1.0)] = 120.0
func ev_col_603():
	(self.script_bosscrash())
