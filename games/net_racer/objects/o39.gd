extends "res://games/net_racer/scripts.gd"
func ev_create():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
func ev_step():
	(self.script_script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_keypress_49():
	(GM.f_sound_play(11.0))
	if GM.truth(((GM.f_mplay_session_create("", 2.0, "")))):
		GM.G["master"] = 1.0
		(GM.f_room_goto_next())
	else:
		await GM.f_show_message("Failed to create a session.")
