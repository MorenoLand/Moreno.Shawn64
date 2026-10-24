extends "res://games/galaxy_arcade_2/scripts.gd"
var v_show_cursor = 0.0
func ev_other_4():
	v_show_cursor = 1.0
func ev_draw():
	if (((absf(GM.background_index[int(6.0)] - 126.0) < 0.00001))):
		(GM.f_action_draw_font("Times New Roman", 12.0, 0.0, 0.0))
		(GM.f_draw_set_color(12632256.0))
		(GM.f_draw_text(355.0, 494.0, ("HighScore: " + (GM.f_string(GM.G["snows"])))))
	if (((absf(GM.background_index[int(6.0)] - 116.0) < 0.00001))):
		(GM.f_action_draw_font("Times New Roman", 12.0, 0.0, 0.0))
		(GM.f_draw_set_color(12632256.0))
		(GM.f_draw_text(355.0, 494.0, ("HighScore: " + (GM.f_string(GM.G["pphigh"])))))
	if (((absf(GM.background_index[int(6.0)] - 41.0) < 0.00001))):
		(GM.f_action_draw_font("Times New Roman", 12.0, 0.0, 0.0))
		(GM.f_draw_set_color(12632256.0))
		(GM.f_draw_text(355.0, 494.0, ("HighScore: " + (GM.f_string(GM.G["sdhigh"])))))
	if (((absf(GM.background_index[int(6.0)] - 40.0) < 0.00001))):
		(GM.f_action_draw_font("Times New Roman", 12.0, 0.0, 0.0))
		(GM.f_draw_set_color(12632256.0))
		(GM.f_draw_text(355.0, 494.0, ("HighScore: " + (GM.f_string(GM.G["srhigh"])))))
	if (((absf(GM.background_index[int(6.0)] - 46.0) < 0.00001))):
		(GM.f_action_draw_font("Times New Roman", 12.0, 0.0, 0.0))
		(GM.f_draw_set_color(12632256.0))
		(GM.f_draw_text(355.0, 494.0, ("HighScore: " + (GM.f_string(GM.G["roidshigh"])))))
	if (((absf(GM.background_index[int(6.0)] - 48.0) < 0.00001))):
		(GM.f_action_draw_font("Times New Roman", 12.0, 0.0, 0.0))
		(GM.f_draw_set_color(12632256.0))
		(GM.f_draw_text(355.0, 494.0, ("HighScore: " + (GM.f_string(GM.G["pachigh"])))))
	if (((absf(GM.background_index[int(6.0)] - 42.0) < 0.00001))):
		(GM.f_action_draw_font("Times New Roman", 12.0, 0.0, 0.0))
		(GM.f_draw_set_color(12632256.0))
		(GM.f_draw_text(355.0, 494.0, ("HighScore: " + (GM.f_string(GM.G["zzhigh"])))))
