extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	alarm[int(1.0)] = 1.0
func ev_alarm_1():
	if ((GM.G["j4var11"] >= 1000.0)):
		GM.vsetb(7.0, "speed", 0.0)
		GM.vset(7.0, "v_movenow", 0.0)
		(GM.f_sound_play(224.0))
		GM.G["j4var11"] = GM.G["j4var11"] - 1000.0
		(GM.f_instance_create(x, y, 1073.0))
		(GM.f_game_save("Jetz4TempData"))
		(GM.f_instance_create(x, y, 901.0))
		(GM.f_instance_destroy(self))
	else:
		(GM.f_sound_play(245.0))
