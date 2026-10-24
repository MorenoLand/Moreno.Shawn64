extends "res://games/mw2/scripts.gd"
var v_blah = 0.0
func ev_create():
	v_blah = 0.0
	if ((((GM.f_sound_isplaying(30.0))))) >= 0.5:
		(GM.f_sound_stop(30.0))
	(GM.f_instance_create(0.0, 0.0, 134.0))
	if (((absf((GM.f_instance_number(37.0)) - 1.0) < 0.00001))):
		for _w12 in GM.with_list((37.0), self):
			if _w12._dead:
				continue
			_w12.other = self
			(GM.f_instance_destroy(_w12))
	(GM.f_sound_play(2.0))
	alarm[int(0.0)] = 100.0
func ev_alarm_0():
	v_blah = 1.0
	if (((absf((GM.f_instance_number(14.0)) - 1.0) < 0.00001))):
		(GM.f_sound_stop(16.0))
		GM.score = 0.0
		(GM.f_game_restart())
func ev_step():
	if (((absf(v_blah - 1.0) < 0.00001))):
		(GM.f_mplay_message_send(0.0, 8.0, 0.0))
		await GM.f_show_message("You Have Lost! other player choosing to play again or not")
		v_blah = 0.0
