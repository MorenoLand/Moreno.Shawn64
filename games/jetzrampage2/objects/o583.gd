extends "res://games/jetzrampage2/scripts.gd"
func ev_keypress_40():
	if ((not (((GM.f_place_empty(self, (x + 0.0), (y + 40.0)))) >= 0.5))):
		(GM.f_sound_play(177.0))
		x = x + 0.0
		y = y + 40.0
func ev_keypress_38():
	if ((not (((GM.f_place_empty(self, (x + 0.0), (y + (-40.0))))) >= 0.5))):
		(GM.f_sound_play(177.0))
		x = x + 0.0
		y = y + (-40.0)
