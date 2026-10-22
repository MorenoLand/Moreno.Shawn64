extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_create():
	GM.G["selection"] = 1.0
	GM.G["songc"] = 0.0
	GM.G["colordepth"] = 0.0
	GM.G["pri"] = 0.0
	GM.G["gogo1"] = 0.0
	for _r164 in range(int((100.0))):
		(GM.f_instance_create((GM.f_random(GM.room_width)), (GM.f_random(GM.room_height)), 672.0))
func ev_draw():
	(GM.f_draw_sprite(620.0, 0.0, x, y))
	GM.font_align = 2.0
	(GM.f_action_draw_font("Arial", 18.0, 0.0, 0.0))
	(GM.f_draw_set_color(128.0))
	(GM.f_draw_text(790.0, 550.0, "http://shawn64.com"))
func ev_keypress_27():
	(GM.f_game_end())
