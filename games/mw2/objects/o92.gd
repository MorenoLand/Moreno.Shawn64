extends "res://games/mw2/scripts.gd"
func ev_create():
	GM.G["cool2"] = GM.G["cool2"] + 1.0
	if ((((GM.f_place_free(self, 560.0, 40.0))))) >= 0.5:
		(GM.f_sound_play(4.0))
		(GM.f_instance_create(560.0, 40.0, 30.0))
		(GM.f_instance_destroy(self))
	else:
		if ((((GM.f_place_free(self, 600.0, 40.0))))) >= 0.5:
			(GM.f_sound_play(4.0))
			(GM.f_instance_create(600.0, 40.0, 30.0))
			(GM.f_instance_destroy(self))
		else:
			if ((((GM.f_place_free(self, 640.0, 40.0))))) >= 0.5:
				(GM.f_sound_play(4.0))
				(GM.f_instance_create(640.0, 40.0, 30.0))
				(GM.f_instance_destroy(self))
			else:
				if ((((GM.f_place_free(self, 680.0, 40.0))))) >= 0.5:
					(GM.f_sound_play(4.0))
					(GM.f_instance_create(680.0, 40.0, 30.0))
					(GM.f_instance_destroy(self))
				else:
					if ((((GM.f_place_free(self, 720.0, 40.0))))) >= 0.5:
						(GM.f_sound_play(4.0))
						(GM.f_instance_create(720.0, 40.0, 30.0))
						(GM.f_instance_destroy(self))
					else:
						if ((((GM.f_place_free(self, 760.0, 40.0))))) >= 0.5:
							(GM.f_sound_play(4.0))
							(GM.f_instance_create(760.0, 40.0, 30.0))
							(GM.f_instance_destroy(self))
						else:
							alarm[int(0.0)] = 1.0
func ev_destroy():
	GM.G["cool2"] = GM.G["cool2"] + (-1.0)
func ev_alarm_0():
	if ((((GM.f_place_free(self, 560.0, 40.0))))) >= 0.5:
		(GM.f_instance_create(560.0, 40.0, 30.0))
		(GM.f_instance_destroy(self))
	else:
		if ((((GM.f_place_free(self, 600.0, 40.0))))) >= 0.5:
			(GM.f_instance_create(600.0, 40.0, 30.0))
			(GM.f_instance_destroy(self))
		else:
			if ((((GM.f_place_free(self, 640.0, 40.0))))) >= 0.5:
				(GM.f_instance_create(640.0, 40.0, 30.0))
				(GM.f_instance_destroy(self))
			else:
				if ((((GM.f_place_free(self, 680.0, 40.0))))) >= 0.5:
					(GM.f_instance_create(680.0, 40.0, 30.0))
					(GM.f_instance_destroy(self))
				else:
					if ((((GM.f_place_free(self, 720.0, 40.0))))) >= 0.5:
						(GM.f_instance_create(720.0, 40.0, 30.0))
						(GM.f_instance_destroy(self))
					else:
						if ((((GM.f_place_free(self, 760.0, 40.0))))) >= 0.5:
							(GM.f_instance_create(760.0, 40.0, 30.0))
							(GM.f_instance_destroy(self))
						else:
							alarm[int(0.0)] = 1.0
