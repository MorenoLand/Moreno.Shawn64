extends "res://games/street_bike_fury/scripts.gd"
var v_hit = 0.0
var v_set = 0.0
var v_watertoshoot = 0.0
func ev_create():
	image_speed = 0.0
	image_index = 0.0
	v_hit = 0.0
	v_watertoshoot = 40.0
func ev_alarm_0():
	if ((v_watertoshoot > 0.0)):
		v_watertoshoot = v_watertoshoot - 1.0
		alarm[int(0.0)] = 1.0
		for _r131 in range(int((10.0))):
			v_set = (GM.f_instance_create((x + 12.0), (y + 16.0), 81.0))
			GM.vsetb(v_set, "direction", (70.0 + (GM.f_random(40.0))))
			GM.vsetb(v_set, "speed", (GM.f_random(30.0)))
func ev_col_0():
	if ((absf(v_hit - 0.0) < 0.00001)):
		(self.script_addmessage("HYDRANT HOP! +25", 65535.0, 10.0))
		(GM.f_instance_create(x, y, 217.0))
		GM.vsetb(self.other, "vspeed", GM.vb(self.other, "vspeed") - 15.0)
		alarm[int(0.0)] = 1.0
		(GM.f_sound_play(92.0))
		image_speed = 0.0
		image_index = 1.0
		v_hit = 1.0
