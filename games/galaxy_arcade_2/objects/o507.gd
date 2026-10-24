extends "res://games/galaxy_arcade_2/scripts.gd"
func ev_step():
	if (((((absf(fmod(x, 40.0) - 0.0) < 0.00001)) and ((absf(fmod(y, 40.0) - 0.0) < 0.00001))))):
		if ((((GM.f_random(2.0)) < 1.0))):
			if ((((GM.f_random(4.0)) < 1.0))):
				if ((((GM.f_place_free(self, (x + 8.0), (y + 0.0)))))) >= 0.5:
					if (not (((absf(hspeed - (-8.0)) < 0.00001)))):
						(GM.f_action_move(self, "000001000", 8.0, 0.0))
			else:
				if ((((GM.f_random(3.0)) < 1.0))):
					if ((((GM.f_place_free(self, (x + (-8.0)), (y + 0.0)))))) >= 0.5:
						if (not (((absf(hspeed - 8.0) < 0.00001)))):
							(GM.f_action_move(self, "000100000", 8.0, 0.0))
				else:
					if ((((GM.f_random(2.0)) < 1.0))):
						if ((((GM.f_place_free(self, (x + 0.0), (y + 8.0)))))) >= 0.5:
							if (not (((absf(vspeed - (-8.0)) < 0.00001)))):
								(GM.f_action_move(self, "010000000", 8.0, 0.0))
					else:
						if ((((GM.f_place_free(self, (x + 0.0), (y + (-8.0))))))) >= 0.5:
							if (not (((absf(vspeed - 8.0) < 0.00001)))):
								(GM.f_action_move(self, "000000010", 8.0, 0.0))
func ev_col_1250():
	(GM.f_sound_play(17.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 508.0))
	(GM.f_instance_destroy(self))
func ev_col_504():
	(GM.f_sound_play(17.0))
	(GM.f_instance_create((x + 0.0), (y + 0.0), 508.0))
	(GM.f_instance_destroy(self))
func ev_col_500():
	if ((((GM.f_random(4.0)) < 1.0))):
		if ((((GM.f_place_free(self, (x + 8.0), (y + 0.0)))))) >= 0.5:
			if (not (((absf(hspeed - (-8.0)) < 0.00001)))):
				(GM.f_action_move(self, "000001000", 8.0, 0.0))
	else:
		if ((((GM.f_random(3.0)) < 1.0))):
			if ((((GM.f_place_free(self, (x + (-8.0)), (y + 0.0)))))) >= 0.5:
				if (not (((absf(hspeed - 8.0) < 0.00001)))):
					(GM.f_action_move(self, "000100000", 8.0, 0.0))
		else:
			if ((((GM.f_random(2.0)) < 1.0))):
				if ((((GM.f_place_free(self, (x + 0.0), (y + 8.0)))))) >= 0.5:
					if (not (((absf(vspeed - (-8.0)) < 0.00001)))):
						(GM.f_action_move(self, "010000000", 8.0, 0.0))
			else:
				if ((((GM.f_place_free(self, (x + 0.0), (y + (-8.0))))))) >= 0.5:
					if (not (((absf(vspeed - 8.0) < 0.00001)))):
						(GM.f_action_move(self, "000000010", 8.0, 0.0))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
