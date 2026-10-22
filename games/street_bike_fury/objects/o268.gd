extends "res://games/street_bike_fury/scripts.gd"
var v_die = 0.0
var v_set = 0.0
var v_wee = 0.0
func ev_create():
	hspeed = (GM.vb(0.0, "hspeed") + 11.0)
	v_die = 0.0
func ev_step():
	if ((x > (GM.view_xview[0] + GM.view_wview[0]))):
		(GM.f_instance_destroy(self))
	if ((y > (GM.view_yview[0] + 700.0))):
		(GM.f_instance_destroy(self))
func ev_col_0():
	if ((absf(v_die - 0.0) < 0.00001)):
		GM.vset(self.other, "v_rate", 6.0)
		(self.script_addmessage("SMOKIN +100", 255.0, 100.0))
		GM.G["baddies"] = GM.G["baddies"] + 100.0
		v_die = 1.0
		(GM.f_instance_create(x, y, 218.0))
		(GM.f_instance_create(x, y, 138.0))
		(GM.f_sound_play(52.0))
		(GM.f_motion_add(self, GM.vb(self.other, "direction"), (5.0 + (GM.f_random(3.0)))))
		alarm[int(3.0)] = 120.0
		for _w122 in GM.with_list((v_wee), self):
			if _w122._dead:
				continue
			_w122.other = self
			(GM.f_motion_add(_w122, (GM.f_random(360.0)), (10.0 + (GM.f_random(3.0)))))
		(GM.f_instance_create(x, y, 261.0))
		for _r123 in range(int((50.0))):
			v_set = (GM.f_instance_create(((x - 80.0) + (GM.f_random(160.0))), ((y - 50.0) + (GM.f_random(100.0))), 249.0))
			GM.vsetb(v_set, "hspeed", GM.vb(v_set, "hspeed") + hspeed)
			GM.vsetb(v_set, "vspeed", GM.vb(v_set, "vspeed") + vspeed)
		gravity = 0.4
