extends "res://gm/gm_inst.gd"
func script_script_hover(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self)))) >= 0.5:
		if ((absf(GM.vget(self, "v_psound") - 1.0) < 0.00001)):
			(GM.f_sound_play(GM.vget(self, "v_grag")))
			GM.vset(self, "v_psound", 0.0)
		GM.vset(self, "v_image_single", 1.0)
	else:
		GM.vset(self, "v_psound", 1.0)
		GM.vset(self, "v_image_single", 0.0)
	return 0.0
func script_SetShip1Sprite(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_image_single", (GM.f_floor(((fmod(((GM.vget(self, "v_my_direction") + 5.625)), 360.0)) / 11.25))))
	return 0.0
func script_outside_bounce(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((bbox_left < 0.0) and (hspeed < 0.0))):
		hspeed = (-hspeed)
	if (((bbox_right > GM.room_width) and (hspeed > 0.0))):
		hspeed = (-hspeed)
	if (((bbox_top < 0.0) and (vspeed < 0.0))):
		vspeed = (-vspeed)
	if (((bbox_bottom > GM.room_height) and (vspeed > 0.0))):
		vspeed = (-vspeed)
	return 0.0
func script_hover(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_position_meeting(GM.mouse_x, GM.mouse_y, self)))) >= 0.5:
		if ((absf(GM.vget(self, "v_psound") - 1.0) < 0.00001)):
			(GM.f_sound_play(308.0))
			GM.vset(self, "v_psound", 0.0)
		GM.vset(self, "v_image_single", 1.0)
	else:
		GM.vset(self, "v_psound", 1.0)
		GM.vset(self, "v_image_single", 0.0)
	return 0.0
func script_init_typewriter(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.aset(GM.vget(self, "v_ttext"), 0.0, "3024, Space is in an endless battle for the sacred Pirates pearl.")
	GM.aset(GM.vget(self, "v_ttext"), 1.0, "The power of this pearl has been known to harness black holes#and use them as portals to other dimensions.")
	GM.aset(GM.vget(self, "v_ttext"), 2.0, "Many bounty hunters have gone after this pearl and failed.")
	GM.aset(GM.vget(self, "v_ttext"), 3.0, "A legend says it was locked away behind an invisible barrier in#space almost impossible to find.")
	GM.aset(GM.vget(self, "v_ttext"), 4.0, "It is up to you to uncover the secrets and location of this pearl.")
	GM.aset(GM.vget(self, "v_ttext"), 5.0, "We have information that the merchants on the planets are#selling priceless maps behind the counter.")
	GM.aset(GM.vget(self, "v_ttext"), 6.0, "These merchants will not give you any information unless you can#show you can be trusted.")
	GM.aset(GM.vget(self, "v_ttext"), 7.0, "You need to gain their trust by upgrading your ship and showing#them your power.")
	GM.aset(GM.vget(self, "v_ttext"), 8.0, "If you can buy everything the merchants have to offer they should#show you some rare items.")
	GM.aset(GM.vget(self, "v_ttext"), 9.0, "The other thing the legend says you need is the Pirate Orb which#allows you to see the Pirates pearl and unlock it.")
	GM.aset(GM.vget(self, "v_ttext"), 10.0, "If you do happen to get this sacred pearl test it on a black hole.")
	GM.aset(GM.vget(self, "v_ttext"), 11.0, "It is said a gigantic pirate protects the portal in the black hole.")
	GM.aset(GM.vget(self, "v_ttext"), 12.0, "That pirate is what your after... 3,000,000z DEAD or ALIVE#Preferably DEAD!")
	GM.vset(self, "v_t", 12.0)
	GM.vset(self, "v_tndex", 0.0)
	GM.vset(self, "v_tpos", 0.0)
	GM.vset(self, "v_tspeed", argument0)
	GM.vset(self, "v_current_text", "")
	return 0.0
func script_init_typewriter2(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.aset(GM.vget(self, "v_ttext"), 0.0, "Congratulations!")
	GM.aset(GM.vget(self, "v_ttext"), 1.0, "You are a true warrior of space")
	GM.aset(GM.vget(self, "v_ttext"), 2.0, "We may have more missions for you in the future, but for now you#can go explore and check out the new items")
	GM.aset(GM.vget(self, "v_ttext"), 3.0, "Thanks for playing!")
	GM.vset(self, "v_t", 3.0)
	GM.vset(self, "v_tndex", 0.0)
	GM.vset(self, "v_tpos", 0.0)
	GM.vset(self, "v_tspeed", argument0)
	GM.vset(self, "v_current_text", "")
	return 0.0
func tl_0_100():
	(GM.f_room_goto(81.0))
