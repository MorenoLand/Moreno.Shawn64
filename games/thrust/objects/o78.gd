extends "res://games/thrust/objects/o4.gd"
func ev_step():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + (-2.0)), 0.0))))) >= 0.5:
		if ((((GM.f_place_meeting(self, (x + 0.0), (y + 1.0), 1.0))))) >= 0.5:
			for _w35 in GM.with_list((80.0), self):
				if _w35._dead:
					continue
				_w35.other = self
				_w35.vspeed = 0.0
			vspeed = 0.0
		else:
			for _w36 in GM.with_list((80.0), self):
				if _w36._dead:
					continue
				_w36.other = self
				_w36.vspeed = (-1.0)
			vspeed = 1.0
	else:
		if ((((GM.f_place_meeting(self, (x + 0.0), (y + (-1.0)), 79.0))))) >= 0.5:
			for _w37 in GM.with_list((80.0), self):
				if _w37._dead:
					continue
				_w37.other = self
				_w37.vspeed = 0.0
			vspeed = 0.0
		else:
			for _w38 in GM.with_list((80.0), self):
				if _w38._dead:
					continue
				_w38.other = self
				_w38.vspeed = 0.3
			vspeed = (-0.3)
	if ((vspeed > 0.0)):
		if not ((((GM.f_sound_isplaying(19.0)))) >= 0.5):
			(GM.f_sound_loop(19.0))
	else:
		(GM.f_sound_stop(19.0))
	if ((vspeed < 0.0)):
		if not ((((GM.f_sound_isplaying(16.0)))) >= 0.5):
			(GM.f_sound_loop(16.0))
	else:
		(GM.f_sound_stop(16.0))
func ev_other_5():
	(GM.f_sound_stop(19.0))
	(GM.f_sound_stop(16.0))
