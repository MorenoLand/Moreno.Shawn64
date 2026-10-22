extends "res://games/mini_golf_pro/scripts.gd"
var v_number = 0.0
func ev_mouse_4():
	if (GM.eq(GM.G["yourplayer"], 1.0)):
		GM.G["collision"] = v_number
		(GM.f_mplay_message_send(0.0, 6.0, GM.G["collision"]))
		(GM.f_sound_play(25.0))
func ev_draw():
	if (((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self)))) >= 0.5:
		(GM.f_draw_sprite(160.0, 1.0, x, y))
	if (GM.eq(GM.G["collision"], v_number)):
		(GM.f_draw_sprite(160.0, 0.0, x, y))
