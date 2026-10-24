extends "res://games/galaxy_arcade_2/scripts.gd"
var v_pie = 0.0
func ev_create():
	(GM.f_action_move(self, "000000010", 2.0, 0.0))
	v_pie = 1.0
func ev_step():
	if (((y < 0.0))):
		y = 600.0
		v_pie = v_pie + 1.0
func ev_draw():
	(GM.f_action_draw_font("Times New Roman", 26.0, 1.0, 0.0))
	(GM.f_draw_set_color(8388608.0))
	if (((absf(v_pie - 1.0) < 0.00001))):
		(GM.f_draw_text((x + (-5.0)), (y + 0.0), "Creator: Shawn Noel"))
	if (((absf(v_pie - 2.0) < 0.00001))):
		(GM.f_draw_text((x + (-150.0)), (y + 0.0), "Tester: Chris Royer (Crimax Games)"))
	if (((absf(v_pie - 3.0) < 0.00001))):
		(GM.f_draw_text((x + (-90.0)), (y + 0.0), "Tester: Skiracer901 (Ski Soft)"))
	if (((absf(v_pie - 4.0) < 0.00001))):
		(GM.f_draw_text((x + (-30.0)), (y + 0.0), "Tester: Jonathan Miller"))
	if (((absf(v_pie - 5.0) < 0.00001))):
		(GM.f_draw_text((x + (-40.0)), (y + 0.0), "Tools: Mark Overmars"))
	if (((absf(v_pie - 6.0) < 0.00001))):
		(GM.f_draw_text((x + (-120.0)), (y + 0.0), "Shawn64's Creations 2002/2003"))
	if (((absf(v_pie - 7.0) < 0.00001))):
		(GM.f_room_goto(1.0))
