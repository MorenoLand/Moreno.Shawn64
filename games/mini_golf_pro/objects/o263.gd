extends "res://games/mini_golf_pro/scripts.gd"
var v_number = 0.0
func ev_mouse_4():
	if ((GM.eq(GM.G["yourplayer"], 1.0) or (absf(GM.G["hostchange"] - 1.0) < 0.00001))):
		if ((((absf(GM.G["swisscreg"] - 1.0) < 0.00001) or GM.eq(v_number, 1.0)) or GM.eq(v_number, 9.0))):
			GM.G["levelset"] = v_number
			(GM.f_mplay_message_send(0.0, 1001.0, GM.G["levelset"]))
			(GM.f_sound_play(25.0))
		else:
			(GM.f_sound_play(2.0))
			await GM.f_show_message("Please Register!")
func ev_draw():
	if (((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self)))) >= 0.5:
		(GM.f_draw_sprite(168.0, 1.0, x, y))
	if (GM.eq(GM.G["levelset"], v_number)):
		(GM.f_draw_sprite(168.0, 0.0, x, y))
