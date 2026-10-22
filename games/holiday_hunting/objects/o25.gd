extends "res://games/holiday_hunting/scripts.gd"
var v_brush_color = 0.0
var v_pen_color = 0.0
func ev_create():
	GM.G["currentscore"] = 0.0
	GM.G["combotime"] = 0.0
	GM.G["combototal"] = 1.0
func ev_step():
	if ((GM.G["combotime"] > 0.0)):
		if (((GM.G["combotime"] - 2.0) <= 0.0)):
			GM.G["currentscore"] = (GM.G["currentscore"] * GM.G["combototal"])
			GM.score = GM.score + GM.G["currentscore"]
			GM.G["currentscore"] = 0.0
			GM.G["combototal"] = 1.0
		GM.G["combotime"] = GM.G["combotime"] - 2.0
func ev_draw():
	GM.font_align = 1.0
	v_pen_color = 0.0
	v_brush_color = 16777215.0
	(GM.f_draw_rectangle(600.0, 140.0, 620.0, 340.0))
	v_brush_color = 16711680.0
	(GM.f_draw_rectangle(600.0, 140.0, 620.0, (140.0 + ((200.0 / 100.0) * GM.G["combotime"]))))
	(GM.f_action_draw_font("Impact", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text(320.0, 50.0, ("Score: " + (GM.f_string(GM.score)))))
	(GM.f_action_draw_font("Impact", 22.0, 0.0, 0.0))
	(GM.f_draw_set_color(255.0))
	if (((GM.G["currentscore"] > 0.0))):
		(GM.f_draw_text(320.0, 100.0, ((("" + (GM.f_string(GM.G["currentscore"]))) + "  X ") + (GM.f_string(GM.G["combototal"])))))
