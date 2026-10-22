extends "res://games/ski_racer_2/scripts.gd"
func ev_create():
	(GM.f_sound_loop(8.0))
	(GM.f_action_move(self, "010000000", 20.0, 0.0))
	alarm[int(0.0)] = 15.0
func ev_destroy():
	(GM.f_sound_stop(8.0))
func ev_alarm_0():
	(GM.f_instance_create((x + 0.0), (y + 0.0), 60.0))
	alarm[int(0.0)] = 15.0
func ev_draw():
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_rectangle(x, (y + 150.0), (x + 1024.0), (y - 768.0), (1.0 if not (((0.0)) >= 0.5) else 0.0)))
