extends "res://games/holiday_hunting/scripts.gd"
var v_brush_color = 0.0
var v_pen_color = 0.0
var v_time = 0.0
func ev_create():
	if (not (((absf(GM.room - 4.0) < 0.00001)))):
		v_time = 4470.0
func ev_step():
	if (not (((absf(GM.room - 4.0) < 0.00001)))):
		v_time = v_time - 1.0
		if ((v_time < 0.0)):
			self.ev_user(0.0)
func ev_other_10():
	(GM.f_sound_play(21.0))
	GM.G["currentscore"] = 0.0
	GM.G["combotime"] = 0.0
	GM.G["combototal"] = 1.0
	GM.score = 0.0
	if ((((await GM.f_show_question("Play Again?"))))) >= 0.5:
		(GM.f_room_goto(1.0))
	else:
		(GM.f_room_goto(2.0))
func ev_draw():
	(GM.f_draw_sprite(24.0, (-1.0), 0.0, 380.0))
	(GM.f_draw_sprite(25.0, (-1.0), 0.0, 0.0))
	if (not (((absf(GM.room - 4.0) < 0.00001)))):
		v_pen_color = 0.0
		v_brush_color = 16777215.0
		(GM.f_draw_rectangle(10.0, 5.0, 630.0, 25.0))
		v_brush_color = 16711680.0
		(GM.f_draw_rectangle(10.0, 5.0, (10.0 + ((620.0 / 4470.0) * v_time)), 25.0))
