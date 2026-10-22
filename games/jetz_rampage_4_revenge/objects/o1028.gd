extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_draw():
	if ((absf((GM.f_instance_number(1010.0)) - 0.0) < 0.00001)):
		for _w684 in GM.with_list((531.0), self):
			if _w684._dead:
				continue
			_w684.other = self
			if ((_w684.y > 1000.0)):
				(GM.f_draw_sprite(840.0, (-1.0), _w684.x, ((GM.view_yview[0] + 600.0) - 40.0)))
	else:
		if ((GM.vb(1010.0, "y") < (GM.room_height - 400.0))):
			for _w685 in GM.with_list((531.0), self):
				if _w685._dead:
					continue
				_w685.other = self
				if ((_w685.y > 1000.0)):
					(GM.f_draw_sprite(840.0, (-1.0), _w685.x, ((GM.view_yview[0] + 600.0) - 40.0)))
