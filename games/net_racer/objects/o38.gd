extends "res://games/net_racer/scripts.gd"
var v_str = ""
func ev_create():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
	GM.G["masterscore"] = 0.0
	GM.G["slavescore"] = 0.0
func ev_step():
	(self.script_script_hover(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_keypress_13():
	(GM.f_sound_play(11.0))
	v_str = (await GM.f_get_string("Give the address (or an empty string for local network).", ""))
	if GM.truth(((GM.f_mplay_init_tcpip(v_str)))):
		(GM.f_room_goto_next())
	else:
		await GM.f_show_message("Failed to initialize TCP/IP connection.")
