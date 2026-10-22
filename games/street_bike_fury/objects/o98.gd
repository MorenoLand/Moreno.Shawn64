extends "res://games/street_bike_fury/scripts.gd"
var v_this = 0.0
func ev_col_0():
	v_this = (GM.f_floor((GM.f_random(2.0))))
	if (GM.eq(v_this, 0.0)):
		(self.script_addmessage("RIGHT CLICK FOR TURBO +35", 32768.0, 3.0))
		for _r64 in range(int((15.0))):
			(GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 100.0))
		if ((GM.vget(18.0, "v_powerups") < GM.G["maxturbo"])):
			GM.vset(18.0, "v_powerups", GM.vget(18.0, "v_powerups") + 1.0)
		(GM.f_sound_play(43.0))
	(GM.f_instance_destroy(self))
