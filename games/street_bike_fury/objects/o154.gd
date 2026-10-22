extends "res://games/street_bike_fury/scripts.gd"
var v_aa = 0.0
var v_gg = 0.0
var v_omlet = 0.0
var v_set1 = 0.0
var v_wee = 0.0
func ev_create():
	v_aa = 1.0
	v_gg = 255.0
	v_omlet = 0.0
	(GM.f_sound_play(16.0))
	v_set1 = 16777215.0
	(GM.f_sound_play(48.0))
	v_wee = (GM.f_instance_create(x, y, 212.0))
	if ((absf(GM.G["level"] - 2.0) < 0.00001)):
		GM.G["makewaternow"] = 10.0
		GM.G["levelmin"] = 5.0
		GM.G["levelrange"] = 5.0
		GM.vset(v_wee, "v_textt", "Keep It Up! You can ESCAPE!")
	if ((absf(GM.G["level"] - 3.0) < 0.00001)):
		GM.G["makewaternow"] = 10.0
		GM.G["levelmin"] = 10.0
		GM.G["levelrange"] = 2.0
		GM.vset(v_wee, "v_textt", "Watch out for GRENADES!")
	if ((absf(GM.G["level"] - 4.0) < 0.00001)):
		GM.G["makewaternow"] = 5.0
		GM.G["levelmin"] = 199.0
		GM.G["levelrange"] = 0.0
		GM.vset(v_wee, "v_textt", "FLIGHT ZONE AHEAD!!")
		GM.G["speedzone"] = 1.0
	if ((absf(GM.G["level"] - 5.0) < 0.00001)):
		GM.G["makewaternow"] = 10.0
		GM.G["levelmin"] = 0.0
		GM.G["levelrange"] = 11.0
		GM.vset(v_wee, "v_textt", "When will these guys stop??")
	if ((absf(GM.G["level"] - 6.0) < 0.00001)):
		GM.G["makewaternow"] = 10.0
		GM.G["levelmin"] = 0.0
		GM.G["levelrange"] = 11.0
		GM.vset(v_wee, "v_textt", "Those bastards don't stand a chance!")
	if ((absf(GM.G["level"] - 7.0) < 0.00001)):
		GM.G["makewaternow"] = 5.0
		GM.G["levelmin"] = 199.0
		GM.G["levelrange"] = 0.0
		GM.vset(v_wee, "v_textt", "FLIGHT ZONE AHEAD!!")
		GM.G["speedzone"] = 1.0
	if ((absf(GM.G["level"] - 8.0) < 0.00001)):
		GM.G["makewaternow"] = 10.0
		GM.G["levelmin"] = 0.0
		GM.G["levelrange"] = 11.0
		GM.vset(v_wee, "v_textt", "Watch out for rockets!!")
	if ((absf(GM.G["level"] - 9.0) < 0.00001)):
		GM.G["makewaternow"] = 10.0
		GM.G["levelmin"] = 0.0
		GM.G["levelrange"] = 11.0
		GM.vset(v_wee, "v_textt", "TOO MUCH PRESSURE....")
	if ((absf(GM.G["level"] - 10.0) < 0.00001)):
		GM.G["makewaternow"] = 5.0
		GM.G["levelmin"] = 199.0
		GM.G["levelrange"] = 0.0
		GM.vset(v_wee, "v_textt", "FLIGHT ZONE AHEAD!!")
		GM.G["speedzone"] = 1.0
	if ((absf(GM.G["level"] - 11.0) < 0.00001)):
		GM.G["makewaternow"] = 10.0
		GM.G["levelmin"] = 0.0
		GM.G["levelrange"] = 11.0
		GM.vset(v_wee, "v_textt", "Someone on your face?  Just flip over!")
	if ((absf(GM.G["level"] - 12.0) < 0.00001)):
		GM.G["makewaternow"] = 10.0
		GM.G["levelmin"] = 0.0
		GM.G["levelrange"] = 11.0
		GM.vset(v_wee, "v_textt", "Almost home free!  Planes are on your tail!")
	if ((absf(GM.G["level"] - 13.0) < 0.00001)):
		GM.G["makewaternow"] = 5.0
		GM.G["levelmin"] = 199.0
		GM.G["levelrange"] = 0.0
		GM.vset(v_wee, "v_textt", "FLIGHT ZONE AHEAD!!")
		GM.G["speedzone"] = 1.0
	if ((absf(GM.G["level"] - 14.0) < 0.00001)):
		GM.G["makewaternow"] = 5.0
		GM.G["levelmin"] = 199.0
		GM.G["levelrange"] = 0.0
		GM.vset(v_wee, "v_textt", "SO DAMN CLOSE!")
func ev_step():
	v_aa = v_aa - 0.01
	v_gg = v_gg - 1.0
	if ((v_aa < 0.0)):
		(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_halign(1.0))
	(GM.f_draw_set_alpha(v_aa))
	(GM.f_draw_set_font(3.0))
	(GM.f_texture_set_interpolation(1.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text_transformed((GM.view_xview[0] + (GM.view_wview[0] / 2.0)), ((GM.view_yview[0] + 250.0) - (((255.0 - v_gg)) / 1.8)), (("WAVE " + (GM.f_string(GM.G["level"]))) + "!!!"), v_aa, v_aa, 0.0))
	(GM.f_texture_set_interpolation(0.0))
	(GM.f_draw_set_alpha(1.0))
	(GM.f_draw_set_halign(0.0))
