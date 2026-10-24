extends "res://games/mw2/scripts.gd"
func ev_create():
	if ((((GM.f_place_free(self, 760.0, 40.0))))) >= 0.5:
		(GM.f_instance_create(760.0, 40.0, 129.0))
	else:
		if ((((GM.f_place_free(self, 760.0, 0.0))))) >= 0.5:
			(GM.f_instance_create(760.0, 0.0, 129.0))
		else:
			if ((((GM.f_place_free(self, 760.0, (-40.0)))))) >= 0.5:
				(GM.f_instance_create(760.0, (-40.0), 129.0))
	(GM.f_instance_destroy(self))
