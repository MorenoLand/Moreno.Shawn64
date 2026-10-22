extends "res://games/jetzfusion/scripts.gd"
var v_wee = 0.0
func ev_create():
	(GM.f_sound_volume(59.0, 1.0))
	(GM.f_action_move(self, "000001000", 30.0, 0.0))
	(GM.f_sound_loop(59.0))
func ev_alarm_0():
	(GM.f_instance_create((x + 10.0), (y + 10.0), 338.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 278.0))
	GM.vsetb(338.0, "direction", direction)
	GM.vsetb(338.0, "speed", speed)
	GM.vsetb(278.0, "direction", direction)
	GM.vsetb(278.0, "speed", speed)
	(GM.f_sound_stop(59.0))
	(GM.f_instance_destroy(self))
func ev_col_276():
	alarm[int(0.0)] = 3.0
	direction = 45.0
func ev_col_266():
	alarm[int(0.0)] = 3.0
	direction = 45.0
func ev_draw():
	if ((vspeed <= 0.0)):
		v_wee = (direction / 6.0)
	else:
		v_wee = 0.0
	(GM.f_draw_sprite(299.0, v_wee, (x + 0.0), (y + 0.0)))
