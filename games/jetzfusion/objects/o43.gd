extends "res://games/jetzfusion/scripts.gd"
func ev_step():
	x = ((GM.room_width / 2.0) - (sprite_width / 2.0))
	if not (((absf(GM.vget(42.0, "v_selection") - 1.0) < 0.00001))):
		visible = 1.0
	else:
		visible = 0.0
