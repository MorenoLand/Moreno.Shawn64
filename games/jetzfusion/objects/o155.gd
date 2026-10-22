extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	(GM.f_path_start(self, 0.0, 6.0, 0.0, 0.0))
func ev_alarm_0():
	x = GM.vb(154.0, "x")
	y = (GM.vb(154.0, "y") + 95.0)
	(GM.f_instance_create((x + 0.0), (y + 0.0), 155.0))
	(GM.f_instance_destroy(self))
func ev_other_8():
	(GM.f_path_start(self, (-1.0), 0.0, 0.0, 0.0))
	(GM.f_action_move(self, "000010000", 0.0, 0.0))
	alarm[int(0.0)] = 100.0
func ev_draw():
	(GM.f_draw_sprite(200.0, (direction / 10.0), (x + 0.0), (y + 0.0)))
