extends "res://games/holiday_hunting/scripts.gd"
var v_who = 0.0
func ev_create():
	y = 240.0
	depth = 41.0
	(GM.f_action_move(self, "000001000", 2.0, 0.0))
func ev_mouse_4():
	if (not ((((GM.f_sound_isplaying(0.0)))) >= 0.5)):
		(GM.f_sound_play(18.0))
		(GM.f_sound_play(6.0))
		for _r14 in range(int((50.0))):
			v_who = (GM.f_instance_create(((x + (sprite_width / 2.0)) - 5.0), ((y + (sprite_height / 2.0)) - 5.0), 35.0))
			GM.vsetb(v_who, "speed", (GM.f_random(5.0)))
			GM.vsetb(v_who, "sprite_index", 52.0)
			GM.vsetb(v_who, "direction", (GM.f_random(180.0)))
			GM.vsetb(v_who, "hspeed", GM.vb(v_who, "hspeed") + hspeed)
			GM.vsetb(v_who, "vspeed", GM.vb(v_who, "vspeed") + vspeed)
			(self.script_add500p())
		if ((GM.G["combotime"] > 0.0)):
			GM.G["combototal"] = GM.G["combototal"] + 1.0
		GM.G["currentscore"] = GM.G["currentscore"] + 500.0
		GM.G["combotime"] = 100.0
		(GM.f_instance_destroy(self))
func ev_other_0():
	if (((x > GM.room_width))):
		(GM.f_instance_destroy(self))
