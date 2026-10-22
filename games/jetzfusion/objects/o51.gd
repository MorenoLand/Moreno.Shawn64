extends "res://games/jetzfusion/scripts.gd"
func ev_create():
	y = (-50.0)
	(GM.f_action_move(self, "000100000", 11.5, 0.0))
func ev_step():
	if (((x < 0.0))):
		GM.view_object[0] = 7.0
		for _w46 in GM.with_list((11.0), self):
			if _w46._dead:
				continue
			_w46.other = self
			(GM.f_instance_create((_w46.x + 0.0), (_w46.y + 0.0), 9.0))
		for _w47 in GM.with_list((11.0), self):
			if _w47._dead:
				continue
			_w47.other = self
			(GM.f_instance_destroy(_w47))
		(GM.f_instance_destroy(self))
	if not ((((absf(GM.view_xview[0] - 0.0) < 0.00001) or (absf(GM.view_xview[0] - (GM.room_width - 800.0)) < 0.00001)))):
		GM.background_hspeed[int(1.0)] = (hspeed / 15.0)
		GM.background_hspeed[int(0.0)] = (hspeed / 10.0)
	else:
		GM.background_hspeed[int(1.0)] = 0.0
		GM.background_hspeed[int(0.0)] = 0.0
func ev_draw():
	(GM.f_draw_sprite(62.0, (-1.0), ((GM.view_xview[0] + 400.0) - 373.0), 35.0))
