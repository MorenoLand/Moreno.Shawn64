extends "res://games/street_bike_fury/scripts.gd"
func ev_create():
	alarm[int(0.0)] = 500.0
	GM.vset(0.0, "v_weaponon", 2.0)
	(GM.f_sound_play(30.0))
	(GM.f_sound_play(70.0))
	GM.G["flipmeter"] = 0.0
	for _r98 in range(int((10.0))):
		(GM.f_instance_create(GM.vb(0.0, "x"), GM.vb(0.0, "y"), 239.0))
	(GM.f_instance_create(x, y, 217.0))
func ev_destroy():
	GM.vset(0.0, "v_weaponon", 0.0)
	(GM.f_sound_play(70.0))
func ev_alarm_0():
	(GM.f_instance_destroy(self))
func ev_step():
	x = GM.vb(0.0, "x")
