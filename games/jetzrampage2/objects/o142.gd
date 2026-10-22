extends "res://games/jetzrampage2/scripts.gd"
var v_mypower = 0.0
func ev_create():
	for _w84 in GM.with_list((67.0), self):
		if _w84._dead:
			continue
		_w84.other = self
		GM.vset(_w84, "v_show", 1.0)
		if ((absf(GM.room - 10.0) < 0.00001)):
			GM.vset(_w84, "v_mytext", "BLOW UP THE TANK TO UNLOCK")
			GM.vset(_w84, "v_mytext2", "INDUSTRIAL CITY")
			GM.vset(_w84, "v_mytext3", "")
		if ((absf(GM.room - 35.0) < 0.00001)):
			GM.vset(_w84, "v_mytext", "BLOW UP THE TANK TO UNLOCK")
			GM.vset(_w84, "v_mytext2", "WESTERN CITY")
			GM.vset(_w84, "v_mytext3", "")
		if ((absf(GM.room - 37.0) < 0.00001)):
			GM.vset(_w84, "v_mytext", "BLOW UP THE TANK TO UNLOCK")
			GM.vset(_w84, "v_mytext2", "CHEATS")
			GM.vset(_w84, "v_mytext3", "")
	v_mypower = 5.0
	(GM.f_action_move(self, "000001000", 4.0, 0.0))
func ev_destroy():
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		(GM.f_sound_play(178.0))
		for _w85 in GM.with_list((67.0), self):
			if _w85._dead:
				continue
			_w85.other = self
			GM.vset(_w85, "v_show", 1.0)
			if ((absf(GM.room - 10.0) < 0.00001)):
				GM.vset(_w85, "v_mytext", "THE INDUSTRIAL LIFE AWAITS YOU")
				GM.vset(_w85, "v_mytext2", "")
				GM.vset(_w85, "v_mytext3", "YIPEE.........")
				GM.G["level2unlocked"] = 1.0
			if ((absf(GM.room - 35.0) < 0.00001)):
				GM.vset(_w85, "v_mytext", "ITS TIME TO HEAD OUT WEST")
				GM.vset(_w85, "v_mytext2", "")
				GM.vset(_w85, "v_mytext3", "YEEEHAAA")
				GM.G["level3unlocked"] = 1.0
			if ((absf(GM.room - 37.0) < 0.00001)):
				GM.vset(_w85, "v_mytext", "YOU HAVE UNLOCKED EVERYTHING")
				GM.vset(_w85, "v_mytext2", "NOW YOU CAN JUST PLAY FOR FUN")
				GM.vset(_w85, "v_mytext3", "CHEATS ARE UNLOCKED!!")
				GM.G["cheatsunlocked"] = 1.0
		for _w86 in GM.with_list((250.0), self):
			if _w86._dead:
				continue
			_w86.other = self
			(GM.f_instance_destroy(_w86))
func ev_step():
	if ((((GM.f_random(25.0)) < 1.0))):
		(GM.f_instance_create((x + 63.0), (y + 17.0), 144.0))
	if (((GM.vb(0.0, "x") < (x - 200.0)))):
		(GM.f_action_move(self, "000100000", 4.0, 0.0))
	if (((GM.vb(0.0, "x") > (x + 200.0)))):
		(GM.f_action_move(self, "000001000", 4.0, 0.0))
	if (((x < (GM.vb(0.0, "x") + 200.0)))):
		if (((x > (GM.vb(0.0, "x") - 200.0)))):
			(GM.f_action_move(self, "000010000", 0.0, 0.0))
func ev_col_103():
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		(GM.f_instance_destroy(self))
func ev_col_101():
	v_mypower = v_mypower + (-1.0)
	if (((v_mypower < 1.0))):
		(GM.f_instance_destroy(self))
func ev_other_0():
	(self.script_outside_wrap(0.0, 0.0, 0.0, 0.0, 0.0))
func ev_draw():
	if (((speed > 0.0))):
		(GM.f_draw_sprite(136.0, (-1.0), (x + 0.0), (y + 0.0)))
	else:
		(GM.f_draw_sprite(136.0, 0.0, (x + 0.0), (y + 0.0)))
