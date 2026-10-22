extends "res://games/mini_golf_pro/scripts.gd"
var v_wee = 0.0
func ev_create():
	v_wee = 1.0
	if (((((((((absf(GM.room - 53.0) < 0.00001) or (absf(GM.room - 54.0) < 0.00001)) or (absf(GM.room - 58.0) < 0.00001)) or (absf(GM.room - 29.0) < 0.00001)) or (absf(GM.room - 19.0) < 0.00001)) or (absf(GM.room - 36.0) < 0.00001)) or (absf(GM.room - 60.0) < 0.00001)) or (absf(GM.room - 61.0) < 0.00001))):
		if (GM.eq(GM.G["levelset"], 4.0)):
			if not (((absf(GM.room - 29.0) < 0.00001))):
				return
		(GM.f_instance_destroy(self))
		return
func ev_step():
	v_wee = v_wee - 0.05
	if ((v_wee < 0.0)):
		self.ev_user(0.0)
func ev_other_10():
	(GM.f_draw_set_alpha(1.0))
	(GM.f_instance_destroy(self))
func ev_draw():
	(GM.f_draw_set_alpha(v_wee))
	(GM.f_draw_set_color(0.0))
	(GM.f_draw_rectangle(0.0, 0.0, GM.room_width, GM.room_height, 0.0))
	(GM.f_draw_set_alpha(1.0))
