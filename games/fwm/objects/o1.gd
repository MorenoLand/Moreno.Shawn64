extends "res://games/fwm/scripts.gd"
var v_particalcolor = 0.0
var v_particalcolor2 = 0.0
var v_particalcolor3 = 0.0
var v_particalgravity = 0.0
var v_particalnumber = 0.0
var v_particalspeed = 0.0
var v_particaltime = 0.0
var v_shotgravity = 0.0
var v_shotnumber = 0.0
var v_shotspeed = 0.0
func ev_create():
	v_particalnumber = 200.0
	v_particalcolor = 0.0
	v_particalcolor2 = 0.0
	v_particalcolor3 = 0.0
	v_particalspeed = 10.0
	v_particaltime = 1.0
	v_particalgravity = 0.3
	v_shotspeed = 5.0
	v_shotnumber = 1.0
	v_shotgravity = 0.3
func ev_draw():
	(GM.f_action_draw_font("System", 10.0, 1.0, 0.0))
	(GM.f_draw_set_color(65535.0))
	(GM.f_draw_text(6.0, 94.0, (GM.f_string(v_particalnumber))))
	(GM.f_draw_text(6.0, 378.0, (GM.f_string(v_shotgravity))))
	(GM.f_draw_text(6.0, 343.0, (GM.f_string(v_shotspeed))))
	(GM.f_draw_text(6.0, 308.0, (GM.f_string(v_shotnumber))))
	(GM.f_draw_text(6.0, 203.0, (GM.f_string(v_particalspeed))))
	(GM.f_draw_text(6.0, 273.0, (GM.f_string(v_particalgravity))))
	(GM.f_draw_text(6.0, 238.0, (GM.f_string(v_particaltime))))
	if (((absf(v_particalcolor3 - 0.0) < 0.00001))):
		(GM.f_draw_text(6.0, 170.0, "blue"))
	if (((absf(v_particalcolor3 - 1.0) < 0.00001))):
		(GM.f_draw_text(6.0, 170.0, "green"))
	if (((absf(v_particalcolor3 - 2.0) < 0.00001))):
		(GM.f_draw_text(6.0, 170.0, "red"))
	if (((absf(v_particalcolor3 - 3.0) < 0.00001))):
		(GM.f_draw_text(6.0, 170.0, "orange"))
	if (((absf(v_particalcolor3 - 4.0) < 0.00001))):
		(GM.f_draw_text(6.0, 170.0, "yellow"))
	if (((absf(v_particalcolor2 - 0.0) < 0.00001))):
		(GM.f_draw_text(6.0, 150.0, "blue"))
	if (((absf(v_particalcolor2 - 1.0) < 0.00001))):
		(GM.f_draw_text(6.0, 150.0, "green"))
	if (((absf(v_particalcolor2 - 2.0) < 0.00001))):
		(GM.f_draw_text(6.0, 150.0, "red"))
	if (((absf(v_particalcolor2 - 3.0) < 0.00001))):
		(GM.f_draw_text(6.0, 150.0, "orange"))
	if (((absf(v_particalcolor2 - 4.0) < 0.00001))):
		(GM.f_draw_text(6.0, 150.0, "yellow"))
	if (((absf(v_particalcolor - 0.0) < 0.00001))):
		(GM.f_draw_text(6.0, 130.0, "blue"))
	if (((absf(v_particalcolor - 1.0) < 0.00001))):
		(GM.f_draw_text(6.0, 130.0, "green"))
	if (((absf(v_particalcolor - 2.0) < 0.00001))):
		(GM.f_draw_text(6.0, 130.0, "red"))
	if (((absf(v_particalcolor - 3.0) < 0.00001))):
		(GM.f_draw_text(6.0, 130.0, "orange"))
	if (((absf(v_particalcolor - 4.0) < 0.00001))):
		(GM.f_draw_text(6.0, 130.0, "yellow"))
