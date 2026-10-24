extends "res://gm/gm_inst.gd"
func script_wraparoundscreen(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((x < 0.0)) and ((hspeed < 0.0))):
		x = x + ((GM.screen_w + sprite_width))
	if (((x > ((GM.screen_w - sprite_width)))) and ((hspeed > 0.0))):
		x = x - ((GM.screen_w + sprite_width))
	if (((y < 0.0)) and ((vspeed < 0.0))):
		y = y + ((GM.screen_h + sprite_height))
	if (((y > ((GM.screen_h - sprite_height)))) and ((vspeed > 0.0))):
		y = y - ((GM.screen_h + sprite_height))
	return 0.0
func script_baddies_direction(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(hspeed - 0.0) < 0.00001)):
		if ((((GM.f_random(3.0)) < 1.0) and ((GM.f_place_free(self, (x - 4.0), y))) >= 0.5)):
			hspeed = (-4.0)
			vspeed = 0.0
		if ((((GM.f_random(3.0)) < 1.0) and ((GM.f_place_free(self, (x + 4.0), y))) >= 0.5)):
			hspeed = 4.0
			vspeed = 0.0
	else:
		if ((((GM.f_random(3.0)) < 1.0) and ((GM.f_place_free(self, x, (y - 4.0)))) >= 0.5)):
			hspeed = 0.0
			vspeed = (-4.0)
		if ((((GM.f_random(3.0)) < 1.0) and ((GM.f_place_free(self, x, (y + 4.0)))) >= 0.5)):
			hspeed = 0.0
			vspeed = 4.0
	return 0.0
