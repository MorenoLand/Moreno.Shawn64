extends "res://games/street_bike_fury/scripts.gd"
var v_set = 0.0
func ev_col_0():
	if ((((absf(GM.vget(self.other, "v_die") - 0.0) < 0.00001) and (GM.vb(self.other, "vspeed") < 5.0)) and (GM.vb(self.other, "vspeed") > (-5.0)))):
		(GM.f_instance_create(x, y, 214.0))
		(GM.f_instance_create((x + 500.0), y, 140.0))
		(self.script_addmessage("BUSTIN THE PARTY! +15", 32768.0, 15.0))
		GM.G["shortcuts"] = GM.G["shortcuts"] + 15.0
		for _w53 in GM.with_list((69.0), self):
			if _w53._dead:
				continue
			_w53.other = self
			(GM.f_instance_create(_w53.x, _w53.y, 70.0))
			(GM.f_instance_destroy(_w53))
		for _r54 in range(int((50.0))):
			v_set = (GM.f_instance_create(x, ((y - 30.0) + (GM.f_random(60.0))), 72.0))
			GM.vsetb(v_set, "direction", (90.0 + (GM.f_random(180.0))))
			GM.vsetb(v_set, "speed", (1.0 + (GM.f_random(5.0))))
		(GM.f_effect_create_above(4.0, x, y, 2.0, 8421504.0))
		(GM.f_sound_play(18.0))
		(GM.f_instance_destroy(self))
