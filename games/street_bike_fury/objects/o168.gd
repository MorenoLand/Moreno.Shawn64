extends "res://games/street_bike_fury/scripts.gd"
var v_set = 0.0
var v_wee = 0.0
func ev_col_197():
	if ((GM.vb(self.other, "vspeed") < (-2.0))):
		(GM.f_instance_create(x, y, 169.0))
		for _r75 in range(int((100.0))):
			v_set = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 72.0))
			GM.vsetb(v_set, "direction", (GM.f_random(180.0)))
			GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(9.0))))
		if ((absf((1.0 if not ((GM.room) >= 0.5) else 0.0) - 38.0) < 0.00001)):
			(GM.f_sound_play(53.0))
			(GM.f_sound_play(52.0))
		v_wee = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 170.0))
		GM.vsetb(v_wee, "direction", (GM.vb(self.other, "direction") + 20.0))
		GM.vsetb(v_wee, "speed", (GM.vb(self.other, "speed") / 2.0))
		GM.vsetb(self.other, "depth", (-18.0))
		(GM.f_instance_destroy(self))
func ev_col_0():
	if ((GM.vb(self.other, "vspeed") < (-2.0))):
		(GM.f_instance_create(x, y, 217.0))
		(self.script_addmessage("Sewer Slammin! +25", 32768.0, 15.0))
		GM.G["shortcuts"] = GM.G["shortcuts"] + 25.0
		(GM.f_instance_create(x, y, 169.0))
		for _r76 in range(int((100.0))):
			v_set = (GM.f_instance_create((x + (GM.f_random(sprite_width))), (y + (GM.f_random(sprite_height))), 72.0))
			GM.vsetb(v_set, "direction", (GM.f_random(180.0)))
			GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(9.0))))
		(GM.f_sound_play(53.0))
		(GM.f_sound_play(52.0))
		v_wee = (GM.f_instance_create((x + (sprite_width / 2.0)), (y + (sprite_height / 2.0)), 170.0))
		GM.vsetb(v_wee, "direction", (GM.vb(0.0, "direction") + 20.0))
		GM.vsetb(v_wee, "speed", (GM.vb(0.0, "speed") / 2.0))
		GM.vsetb(self.other, "depth", (-18.0))
		(GM.f_instance_destroy(self))
