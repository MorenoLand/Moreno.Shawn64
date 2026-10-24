extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_alarm_1():
	await GM.f_show_message("p2 wins")
	if ((((await GM.f_show_question("play a rematch?"))))) >= 0.5:
		(GM.f_room_restart())
	else:
		(GM.f_sound_stop(133.0))
		(GM.f_room_goto(1.0))
func ev_alarm_0():
	await GM.f_show_message("p1 wins")
	if ((((await GM.f_show_question("play a rematch?"))))) >= 0.5:
		(GM.f_room_restart())
	else:
		(GM.f_sound_stop(133.0))
		(GM.f_room_goto(1.0))
