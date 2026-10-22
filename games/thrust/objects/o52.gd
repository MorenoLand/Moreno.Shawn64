extends "res://games/thrust/scripts.gd"
func ev_step():
	for _w22 in GM.with_list((0.0), self):
		if _w22._dead:
			continue
		_w22.other = self
		if not ((((absf(GM.view_xview[0] - 0.0) < 0.00001) or (absf(GM.view_xview[0] - (GM.room_width - 800.0)) < 0.00001)))):
			GM.background_hspeed[int(1.0)] = (_w22.hspeed / 2.0)
			GM.background_hspeed[int(2.0)] = (_w22.hspeed / 4.0)
			GM.background_hspeed[int(3.0)] = (_w22.hspeed / 6.0)
		else:
			GM.background_hspeed[int(1.0)] = 0.0
			GM.background_hspeed[int(2.0)] = 0.0
			GM.background_hspeed[int(3.0)] = 0.0
		if not ((((absf(GM.view_yview[0] - 0.0) < 0.00001) or (absf(GM.view_yview[0] - (GM.room_height - 600.0)) < 0.00001)))):
			GM.background_vspeed[int(1.0)] = (_w22.vspeed / 2.0)
			GM.background_vspeed[int(2.0)] = (_w22.vspeed / 4.0)
			GM.background_vspeed[int(3.0)] = (_w22.vspeed / 6.0)
		else:
			GM.background_vspeed[int(1.0)] = 0.0
			GM.background_vspeed[int(2.0)] = 0.0
			GM.background_vspeed[int(3.0)] = 0.0
