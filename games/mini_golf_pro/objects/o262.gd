extends "res://games/mini_golf_pro/scripts.gd"
func ev_create():
	if ((absf((GM.f_instance_number(287.0)) - 1.0) < 0.00001)):
		(GM.f_instance_destroy(self))
		return
	if (GM.eq(GM.G["levelset"], 4.0)):
		if (((absf(GM.room - 8.0) < 0.00001) or (absf(GM.room - 23.0) < 0.00001))):
			(GM.f_instance_destroy(self))
