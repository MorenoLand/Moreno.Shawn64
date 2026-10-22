extends "res://games/bubblegum/scripts.gd"
func ev_create():
	(GM.f_action_move(self, "000000010", 4.0, 0.0))
	(GM.f_sound_loop(21.0))
	alarm[int(0.0)] = 100.0
	friction = 0.1
func ev_alarm_0():
	(GM.f_sound_stop(21.0))
	(GM.f_sound_play(3.0))
	GM.view_object[int(0.0)] = 0.0
	(GM.f_instance_create((x + 0.0), (y + 0.0), 0.0))
	await GM.f_show_message("MACHINE GUN POWERUP")
	await GM.f_show_message("use control to shoot")
	for _w49 in GM.with_list((76.0), self):
		if _w49._dead:
			continue
		_w49.other = self
		GM.vset(_w49, "v_gungot", 1.0)
	(GM.f_instance_destroy(self))
