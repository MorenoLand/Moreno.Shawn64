extends "res://games/net_racer/scripts.gd"
func ev_create():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
func ev_step():
	(self.script_script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_mouse_0():
	(GM.f_sound_play(11.0))
	if GM.truth(((GM.f_mplay_init_ipx()))):
		(GM.f_room_goto_next())
	else:
		await GM.f_show_message("Failed to initialize IPX connection.")
