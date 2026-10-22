extends "res://games/jetz_rampage_4_revenge/scripts.gd"
func ev_stepend():
	for _w740 in GM.with_list((7.0), self):
		if _w740._dead:
			continue
		_w740.other = self
		if (((GM.f_place_meeting(_w740, (_w740.x + _w740.hspeed), _w740.y, 1083.0)))) >= 0.5:
			_w740.hspeed = 0.0
		if (((GM.f_place_meeting(_w740, (_w740.x + _w740.hspeed), _w740.y, 1082.0)))) >= 0.5:
			_w740.hspeed = 0.0
func ev_step():
	GM.vsetb(7.0, "gravity", 1.3)
	GM.vsetb(7.0, "friction", 0.0)
func ev_keypress_38():
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 5.0), 1082.0))))) >= 0.5:
		GM.vsetb(7.0, "vspeed", (-40.0))
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 5.0), 1083.0))))) >= 0.5:
		GM.vsetb(7.0, "vspeed", (-40.0))
	if ((((GM.f_place_meeting(self, (x + 0.0), (y + 5.0), 489.0))))) >= 0.5:
		GM.vsetb(7.0, "vspeed", (-40.0))
