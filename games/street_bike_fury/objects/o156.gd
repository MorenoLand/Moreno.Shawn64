extends "res://games/street_bike_fury/objects/o127.gd"
func ev_create():
	v_psound = 1.0
func ev_mouse_4():
	(GM.f_sound_play(16.0))
	if ((((await GM.f_show_question("Would you like to show your support by donating to S64 Games?"))))) >= 0.5:
		(GM.f_execute_shell("http://s64games.com/donate.php", ""))
