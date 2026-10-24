extends "res://gm/gm_inst.gd"
func script_outside_wrap(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((x < 0.0) and (hspeed < 0.0))):
		x = (GM.room_width + sprite_xoffset)
	if (((x > GM.room_width) and (hspeed > 0.0))):
		x = ((-sprite_width) + sprite_xoffset)
	if (((y < 0.0) and (vspeed < 0.0))):
		y = (GM.room_height + sprite_yoffset)
	if (((y > GM.room_height) and (vspeed > 0.0))):
		y = ((-sprite_height) + sprite_yoffset)
	return 0.0
func script_script_initlines(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.G["maxline"] = 18.0
	GM.vset(self, "v_i", 0.0)
	while (GM.vget(self, "v_i") < GM.G["maxline"]):
		GM.aset(GM.G["line"], GM.vget(self, "v_i"), "")
		GM.aset(GM.G["color"], GM.vget(self, "v_i"), 0.0)
		GM.vset(self, "v_i", GM.vget(self, "v_i") + 1.0)
	return 0.0
func script_script_addline(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_i", 0.0)
	while (GM.vget(self, "v_i") < (GM.G["maxline"] - 1.0)):
		GM.aset(GM.G["line"], GM.vget(self, "v_i"), GM.aget(GM.G["line"], (GM.vget(self, "v_i") + 1.0)))
		GM.aset(GM.G["color"], GM.vget(self, "v_i"), GM.aget(GM.G["color"], (GM.vget(self, "v_i") + 1.0)))
		GM.vset(self, "v_i", GM.vget(self, "v_i") + 1.0)
	GM.aset(GM.G["line"], (GM.G["maxline"] - 1.0), argument0)
	GM.aset(GM.G["color"], (GM.G["maxline"] - 1.0), argument1)
	return 0.0
func script_script_drawlines(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v__xxx", argument0)
	GM.vset(self, "v__yyy", argument1)
	GM.vset(self, "v_i", 0.0)
	while (GM.vget(self, "v_i") < GM.G["maxline"]):
		GM.font_color = GM.aget(GM.G["color"], GM.vget(self, "v_i"))
		(GM.f_draw_text(GM.vget(self, "v__xxx"), GM.vget(self, "v__yyy"), GM.aget(GM.G["line"], GM.vget(self, "v_i"))))
		GM.vset(self, "v__yyy", GM.add(GM.vget(self, "v__yyy"), 15.0))
		GM.vset(self, "v_i", GM.vget(self, "v_i") + 1.0)
	return 0.0
