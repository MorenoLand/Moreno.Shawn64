extends "res://gm/gm_inst.gd"
func script_createroom(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((x > (GM.vget(self, "v_offsetx") - 400.0))):
		GM.G["levelcycle"] = GM.G["levelcycle"] + 1.0
		if ((absf(GM.G["levelcycle"] - 5.0) < 0.00001)):
			if (((((GM.f_instance_number(248.0)) < 1.0) and (GM.G["level"] >= 4.0)) and ((GM.f_instance_number(307.0)) < 1.0))):
				(GM.f_instance_create((GM.view_xview[0] - 100.0), (GM.vb(30.0, "y") - 1500.0), 248.0))
		if ((absf(GM.G["levelcycle"] - GM.G["makewaternow"]) < 0.00001)):
			GM.G["levelcycle"] = (-1.0)
			GM.vset(self, "v_levelset", 99.0)
			GM.G["level"] = GM.G["level"] + 1.0
			(GM.f_instance_create(x, y, 154.0))
		else:
			GM.vset(self, "v_levelset", (GM.G["levelmin"] + (GM.f_floor((GM.f_random(GM.G["levelrange"]))))))
		GM.G["cannons"] = 0.0
		if ((absf(GM.G["level"] - 1.0) < 0.00001)):
			if ((absf(GM.G["levelcycle"] - 4.0) < 0.00001)):
				GM.vset(self, "v_levelset", 105.0)
			if ((absf(GM.G["levelcycle"] - 3.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 306.0))
			if ((absf(GM.G["levelcycle"] - 6.0) < 0.00001)):
				GM.vset(self, "v_levelset", 104.0)
		if ((absf(GM.G["level"] - 2.0) < 0.00001)):
			if ((absf(GM.G["levelcycle"] - 0.0) < 0.00001)):
				GM.vset(self, "v_levelset", 100.0)
			if ((absf(GM.G["levelcycle"] - 3.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 306.0))
			if ((absf(GM.G["levelcycle"] - 4.0) < 0.00001)):
				GM.vset(self, "v_levelset", 103.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 5.0) < 0.00001)):
				GM.vset(self, "v_levelset", 103.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 7.0) < 0.00001)):
				GM.vset(self, "v_levelset", 104.0)
		if ((absf(GM.G["level"] - 3.0) < 0.00001)):
			if ((absf(GM.G["levelcycle"] - (-1.0)) < 0.00001)):
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 0.0) < 0.00001)):
				GM.vset(self, "v_levelset", 101.0)
			if ((absf(GM.G["levelcycle"] - 3.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 306.0))
			if ((absf(GM.G["levelcycle"] - 4.0) < 0.00001)):
				GM.vset(self, "v_levelset", 104.0)
			if ((absf(GM.G["levelcycle"] - 6.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 312.0))
		if ((absf(GM.G["level"] - 5.0) < 0.00001)):
			if ((absf(GM.G["levelcycle"] - 0.0) < 0.00001)):
				GM.vset(self, "v_levelset", 102.0)
			if ((absf(GM.G["levelcycle"] - 1.0) < 0.00001)):
				GM.vset(self, "v_levelset", 9.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 2.0) < 0.00001)):
				GM.vset(self, "v_levelset", 104.0)
			if ((absf(GM.G["levelcycle"] - 2.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 307.0))
			if ((absf(GM.G["levelcycle"] - 3.0) < 0.00001)):
				GM.vset(self, "v_levelset", 6.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 4.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 312.0))
			if ((absf(GM.G["levelcycle"] - 5.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 312.0))
			if ((absf(GM.G["levelcycle"] - 6.0) < 0.00001)):
				GM.vset(self, "v_levelset", 5.0)
				GM.G["cannons"] = 1.0
		if ((absf(GM.G["level"] - 6.0) < 0.00001)):
			if ((absf(GM.G["levelcycle"] - 0.0) < 0.00001)):
				GM.vset(self, "v_levelset", 100.0)
			if ((absf(GM.G["levelcycle"] - 1.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 306.0))
			if ((absf(GM.G["levelcycle"] - 2.0) < 0.00001)):
				GM.vset(self, "v_levelset", 5.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 3.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 307.0))
			if ((absf(GM.G["levelcycle"] - 4.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 306.0))
			if ((absf(GM.G["levelcycle"] - 5.0) < 0.00001)):
				GM.vset(self, "v_levelset", 5.0)
				GM.G["cannons"] = 1.0
		if ((absf(GM.G["level"] - 7.0) < 0.00001)):
			if ((absf(GM.G["levelcycle"] - 4.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 307.0))
		if ((absf(GM.G["level"] - 8.0) < 0.00001)):
			if ((absf(GM.G["levelcycle"] - (-1.0)) < 0.00001)):
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 0.0) < 0.00001)):
				GM.vset(self, "v_levelset", 101.0)
			if ((absf(GM.G["levelcycle"] - 1.0) < 0.00001)):
				GM.vset(self, "v_levelset", 6.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 1.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 306.0))
			if ((absf(GM.G["levelcycle"] - 2.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 306.0))
			if ((absf(GM.G["levelcycle"] - 3.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 306.0))
			if ((absf(GM.G["levelcycle"] - 3.0) < 0.00001)):
				GM.vset(self, "v_levelset", 104.0)
			if ((absf(GM.G["levelcycle"] - 4.0) < 0.00001)):
				GM.vset(self, "v_levelset", 103.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 5.0) < 0.00001)):
				GM.vset(self, "v_levelset", 6.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 6.0) < 0.00001)):
				GM.vset(self, "v_levelset", 100.0)
		if ((absf(GM.G["level"] - 9.0) < 0.00001)):
			if ((absf(GM.G["levelcycle"] - 0.0) < 0.00001)):
				GM.vset(self, "v_levelset", 102.0)
			if ((absf(GM.G["levelcycle"] - 2.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 307.0))
			if ((absf(GM.G["levelcycle"] - 3.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 307.0))
			if ((absf(GM.G["levelcycle"] - 4.0) < 0.00001)):
				GM.vset(self, "v_levelset", 105.0)
			if ((absf(GM.G["levelcycle"] - 6.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 312.0))
			if ((absf(GM.G["levelcycle"] - 7.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 307.0))
		if ((absf(GM.G["level"] - 10.0) < 0.00001)):
			GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 3.0) < 0.00001)):
				GM.vset(self, "v_levelset", 103.0)
				GM.G["cannons"] = 1.0
		if ((absf(GM.G["level"] - 11.0) < 0.00001)):
			if ((absf(GM.G["levelcycle"] - 0.0) < 0.00001)):
				GM.vset(self, "v_levelset", 103.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 1.0) < 0.00001)):
				GM.vset(self, "v_levelset", 103.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 2.0) < 0.00001)):
				GM.vset(self, "v_levelset", 103.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 2.0) < 0.00001)):
				(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 307.0))
			if ((absf(GM.G["levelcycle"] - 3.0) < 0.00001)):
				GM.vset(self, "v_levelset", 100.0)
			if ((absf(GM.G["levelcycle"] - 4.0) < 0.00001)):
				GM.vset(self, "v_levelset", 100.0)
			if ((absf(GM.G["levelcycle"] - 5.0) < 0.00001)):
				GM.vset(self, "v_levelset", 100.0)
		if ((absf(GM.G["level"] - 12.0) < 0.00001)):
			GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - (-1.0)) < 0.00001)):
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 1.0) < 0.00001)):
				GM.vset(self, "v_levelset", 6.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 3.0) < 0.00001)):
				GM.vset(self, "v_levelset", 6.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 4.0) < 0.00001)):
				GM.vset(self, "v_levelset", 104.0)
			if ((absf(GM.G["levelcycle"] - 5.0) < 0.00001)):
				GM.vset(self, "v_levelset", 6.0)
				GM.G["cannons"] = 1.0
			if ((absf(GM.G["levelcycle"] - 6.0) < 0.00001)):
				GM.vset(self, "v_levelset", 105.0)
			if ((absf(GM.G["levelcycle"] - 7.0) < 0.00001)):
				GM.vset(self, "v_levelset", 6.0)
				GM.G["cannons"] = 1.0
		if ((absf(GM.G["level"] - 13.0) < 0.00001)):
			if ((absf(GM.G["levelcycle"] - (-1.0)) < 0.00001)):
				GM.G["cannons"] = 1.0
		if ((absf(GM.G["level"] - 14.0) < 0.00001)):
			GM.G["finished"] = 1.0
		if ((absf(GM.room - 38.0) < 0.00001)):
			GM.vset(self, "v_levelset", (GM.f_floor((GM.f_random(10.0)))))
		for _w163 in GM.with_list((-3.0), self):
			if _w163._dead:
				continue
			_w163.other = self
			if (((_w163.x < (GM.view_xview[0] - 400.0)) or (_w163.x > (GM.view_xview[0] + 1200.0)))):
				if ((((absf(_w163.depth - (-1981284355.0)) >= 0.00001) and (absf(_w163.depth - 50000000.0) >= 0.00001)) and (absf(_w163.sprite_index - 11.0) >= 0.00001))):
					(GM.f_instance_destroy(_w163))
		if ((absf(GM.vget(self, "v_levelset") - 0.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1400.0))
			for _w164 in GM.with_list((30.0), self):
				if _w164._dead:
					continue
				_w164.other = self
				(GM.f_instance_destroy(_w164))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 0.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6240.0))
		if ((absf(GM.vget(self, "v_levelset") - 1.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1030.0))
			for _w165 in GM.with_list((30.0), self):
				if _w165._dead:
					continue
				_w165.other = self
				(GM.f_instance_destroy(_w165))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 1.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6240.0))
		if ((absf(GM.vget(self, "v_levelset") - 2.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1030.0))
			for _w166 in GM.with_list((30.0), self):
				if _w166._dead:
					continue
				_w166.other = self
				(GM.f_instance_destroy(_w166))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 2.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6240.0))
		if ((absf(GM.vget(self, "v_levelset") - 3.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 175.0))
			for _w167 in GM.with_list((30.0), self):
				if _w167._dead:
					continue
				_w167.other = self
				(GM.f_instance_destroy(_w167))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 3.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6240.0))
		if ((absf(GM.vget(self, "v_levelset") - 4.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1320.0))
			for _w168 in GM.with_list((30.0), self):
				if _w168._dead:
					continue
				_w168.other = self
				(GM.f_instance_destroy(_w168))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 4.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6240.0))
		if ((absf(GM.vget(self, "v_levelset") - 5.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 2195.0))
			for _w169 in GM.with_list((30.0), self):
				if _w169._dead:
					continue
				_w169.other = self
				(GM.f_instance_destroy(_w169))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 5.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6400.0))
		if ((absf(GM.vget(self, "v_levelset") - 6.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 620.0))
			for _w170 in GM.with_list((30.0), self):
				if _w170._dead:
					continue
				_w170.other = self
				(GM.f_instance_destroy(_w170))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 6.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6400.0))
		if ((absf(GM.vget(self, "v_levelset") - 7.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1930.0))
			for _w171 in GM.with_list((30.0), self):
				if _w171._dead:
					continue
				_w171.other = self
				(GM.f_instance_destroy(_w171))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 7.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6400.0))
		if ((absf(GM.vget(self, "v_levelset") - 8.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1595.0))
			for _w172 in GM.with_list((30.0), self):
				if _w172._dead:
					continue
				_w172.other = self
				(GM.f_instance_destroy(_w172))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 8.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6400.0))
		if ((absf(GM.vget(self, "v_levelset") - 9.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1675.0))
			for _w173 in GM.with_list((30.0), self):
				if _w173._dead:
					continue
				_w173.other = self
				(GM.f_instance_destroy(_w173))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 9.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6400.0))
		if ((absf(GM.vget(self, "v_levelset") - 10.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1590.0))
			for _w174 in GM.with_list((30.0), self):
				if _w174._dead:
					continue
				_w174.other = self
				(GM.f_instance_destroy(_w174))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 10.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6400.0))
		if ((absf(GM.vget(self, "v_levelset") - 99.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1460.0))
			for _w175 in GM.with_list((30.0), self):
				if _w175._dead:
					continue
				_w175.other = self
				(GM.f_instance_destroy(_w175))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 99.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 10000.0))
		if ((absf(GM.vget(self, "v_levelset") - 199.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1320.0))
			for _w176 in GM.with_list((30.0), self):
				if _w176._dead:
					continue
				_w176.other = self
				(GM.f_instance_destroy(_w176))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 199.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6240.0))
		if ((absf(GM.vget(self, "v_levelset") - 100.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1320.0))
			for _w177 in GM.with_list((30.0), self):
				if _w177._dead:
					continue
				_w177.other = self
				(GM.f_instance_destroy(_w177))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 100.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6240.0))
		if ((absf(GM.vget(self, "v_levelset") - 101.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1320.0))
			for _w178 in GM.with_list((30.0), self):
				if _w178._dead:
					continue
				_w178.other = self
				(GM.f_instance_destroy(_w178))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 101.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6240.0))
		if ((absf(GM.vget(self, "v_levelset") - 102.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1030.0))
			for _w179 in GM.with_list((30.0), self):
				if _w179._dead:
					continue
				_w179.other = self
				(GM.f_instance_destroy(_w179))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 102.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6240.0))
		if ((absf(GM.vget(self, "v_levelset") - 103.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1460.0))
			for _w180 in GM.with_list((30.0), self):
				if _w180._dead:
					continue
				_w180.other = self
				(GM.f_instance_destroy(_w180))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 103.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 10000.0))
		if ((absf(GM.vget(self, "v_levelset") - 104.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1320.0))
			for _w181 in GM.with_list((30.0), self):
				if _w181._dead:
					continue
				_w181.other = self
				(GM.f_instance_destroy(_w181))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 104.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6240.0))
		if ((absf(GM.vget(self, "v_levelset") - 105.0) < 0.00001)):
			GM.vset(self, "v_offsety", (GM.vb(30.0, "y") - 1320.0))
			for _w182 in GM.with_list((30.0), self):
				if _w182._dead:
					continue
				_w182.other = self
				(GM.f_instance_destroy(_w182))
			(self.script_room_set(GM.vget(self, "v_offsetx"), GM.vget(self, "v_offsety"), 105.0))
			GM.vset(self, "v_offsetx", (GM.vget(self, "v_offsetx") + 6240.0))
	return 0.0
func script_room_store(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_ind = 0.0
	var l_count = 0.0
	var l_Scount = 0.0
	l_Scount = 0.0
	l_count = 1.0
	while (((GM.f_instance_number(-3.0)) > 0.0)):
		l_ind = (GM.f_instance_nearest(0.0, 0.0, -3.0))
		GM.aset(GM.G["objArray"], GM.k2(argument0, GM.add(0.0, l_count)), GM.vb(l_ind, "object_index"))
		GM.aset(GM.G["objArray"], GM.k2(argument0, GM.add(1.0, l_count)), GM.vb(l_ind, "x"))
		GM.aset(GM.G["objArray"], GM.k2(argument0, GM.add(2.0, l_count)), GM.vb(l_ind, "y"))
		for _w183 in GM.with_list((l_ind), self):
			if _w183._dead:
				continue
			_w183.other = self
			(GM.f_instance_destroy(_w183))
		l_Scount = GM.add(l_Scount, 1.0)
		l_count = GM.add(l_count, 3.0)
	GM.aset(GM.G["objArray"], GM.k2(argument0, 0.0), l_Scount)
	return 0.0
	return 0.0
func script_room_set(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_count = 0.0
	var l_Scount = 0.0
	var l_Mcount = 0.0
	l_count = 1.0
	l_Scount = 0.0
	l_Mcount = GM.aget(GM.G["objArray"], GM.k2(argument2, 0.0))
	while ((l_Scount < l_Mcount)):
		(GM.f_instance_create(GM.add(GM.aget(GM.G["objArray"], GM.k2(argument2, GM.add(l_count, 1.0))), argument0), GM.add(GM.aget(GM.G["objArray"], GM.k2(argument2, GM.add(l_count, 2.0))), argument1), GM.aget(GM.G["objArray"], GM.k2(argument2, l_count))))
		l_Scount = GM.add(l_Scount, 1.0)
		l_count = GM.add(l_count, 3.0)
	return 0.0
	return 0.0
func script_addmessage(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((absf(GM.vget(0.0, "v_intro2") - 0.0) < 0.00001) and (absf(GM.vget(0.0, "v_die") - 0.0) < 0.00001))):
		GM.vset(self, "v_wee", (GM.f_instance_create((x + 100000.0), 0.0, 68.0)))
		GM.vset(GM.vget(self, "v_wee"), "v_tt", argument0)
		GM.vset(GM.vget(self, "v_wee"), "v_set1", argument1)
		GM.score = GM.add(GM.score, argument2)
		if (GM.eq(argument1, 255.0)):
			if (((GM.vget(0.0, "v_rotate") > 150.0) and (GM.vget(0.0, "v_rotate") < 210.0))):
				GM.vset(GM.vget(self, "v_wee"), "v_tt", GM.add(argument0, " *UPSIDE DOWN*"))
				GM.G["baddies"] = GM.G["baddies"] + 200.0
				GM.score = GM.score + 200.0
	return 0.0
func script_wavesmake(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if (((GM.f_instance_number(242.0)) > 0.0)):
		if (((absf(GM.G["level"] - 4.0) < 0.00001) and ((GM.f_instance_number(248.0)) < 1.0))):
			(GM.f_instance_create((GM.view_xview[0] - 100.0), (GM.vb(30.0, "y") - 1500.0), 248.0))
		if (((absf(GM.G["level"] - 7.0) < 0.00001) and ((GM.f_instance_number(248.0)) < 2.0))):
			(GM.f_instance_create((GM.view_xview[0] - 100.0), (GM.vb(30.0, "y") - (GM.f_random(1500.0))), 248.0))
		if (((absf(GM.G["level"] - 10.0) < 0.00001) and ((GM.f_instance_number(248.0)) < 3.0))):
			(GM.f_instance_create((GM.view_xview[0] - 100.0), (GM.vb(30.0, "y") - (GM.f_random(1500.0))), 248.0))
		if (((absf(GM.G["level"] - 13.0) < 0.00001) and ((GM.f_instance_number(248.0)) < 4.0))):
			(GM.f_instance_create((GM.view_xview[0] - 100.0), (GM.vb(30.0, "y") - (GM.f_random(1500.0))), 248.0))
	if ((absf(GM.vget(0.0, "v_bikeon") - 1.0) < 0.00001)):
		if (((absf(GM.G["cannons"] - 0.0) < 0.00001) or (GM.G["level"] >= 10.0))):
			if ((absf(GM.G["level"] - 1.0) < 0.00001)):
				if (((GM.f_instance_number(211.0)) < 2.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 211.0))
			if ((absf(GM.G["level"] - 2.0) < 0.00001)):
				if (((GM.f_instance_number(211.0)) < 1.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 211.0))
				if (((GM.f_instance_number(231.0)) < 1.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 231.0))
			if ((absf(GM.G["level"] - 3.0) < 0.00001)):
				if (((GM.f_instance_number(231.0)) < 1.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 231.0))
				if (((GM.f_instance_number(237.0)) < 1.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 237.0))
			if ((absf(GM.G["level"] - 5.0) < 0.00001)):
				if (((GM.f_instance_number(306.0)) < 1.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 306.0))
				if (((GM.f_instance_number(237.0)) < 1.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 237.0))
			if ((absf(GM.G["level"] - 6.0) < 0.00001)):
				if (((GM.f_instance_number(211.0)) < 2.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 211.0))
				if (((GM.f_instance_number(231.0)) < 1.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 231.0))
			if ((absf(GM.G["level"] - 8.0) < 0.00001)):
				if (((GM.f_instance_number(306.0)) < 1.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 306.0))
				if (((GM.f_instance_number(231.0)) < 2.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 231.0))
			if ((absf(GM.G["level"] - 9.0) < 0.00001)):
				if (((GM.f_instance_number(312.0)) < 1.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 312.0))
				if (((GM.f_instance_number(211.0)) < 2.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 211.0))
			if ((absf(GM.G["level"] - 11.0) < 0.00001)):
				if (((GM.f_instance_number(211.0)) < 3.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 211.0))
				if (((GM.f_instance_number(306.0)) < 1.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 306.0))
			if ((absf(GM.G["level"] - 12.0) < 0.00001)):
				if (((GM.f_instance_number(248.0)) < 2.0)):
					(GM.f_instance_create((GM.view_xview[0] - 100.0), (GM.vb(30.0, "y") - (GM.f_random(1500.0))), 248.0))
				if (((GM.f_instance_number(211.0)) < 1.0)):
					(GM.f_instance_create(GM.vb(0.0, "x"), (GM.vb(0.0, "y") - 500.0), 211.0))
	return 0.0
func script_setuplevels(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(GM.G["levelon"] - 0.0) < 0.00001)):
		GM.G["arcademode"] = 1.0
		GM.G["makewaternow"] = 7.0
		GM.G["levelmin"] = 0.0
		GM.G["levelrange"] = 4.0
		(GM.f_instance_create(x, y, 222.0))
	if ((absf(GM.G["levelon"] - 1.0) < 0.00001)):
		GM.G["stagemode"] = 1.0
		GM.G["makewaternow"] = 30.0
		GM.G["levelmin"] = 0.0
		GM.G["levelrange"] = 4.0
		(GM.f_instance_create(x, y, 223.0))
	if ((absf(GM.G["levelon"] - 2.0) < 0.00001)):
		GM.G["stagemode"] = 1.0
		GM.G["makewaternow"] = 30.0
		GM.G["levelmin"] = 0.0
		GM.G["levelrange"] = 4.0
		(GM.f_instance_create(x, y, 222.0))
	return 0.0
func script_addtrick(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.G["flipmeter"] = GM.G["flipmeter"] + (argument1 / 1.5)
	GM.health = GM.add(GM.health, argument2)
	if ((absf((GM.f_instance_number(236.0)) - 0.0) < 0.00001)):
		GM.vset(self, "v_set", (GM.f_instance_create(x, y, 236.0)))
		GM.vset(GM.vget(self, "v_set"), "v_textt", argument0)
	return 0.0
func script_room_saver(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	if ((absf(GM.room - 18.0) < 0.00001)):
		(self.script_room_store(64.0))
		(GM.f_room_goto_next())
		(GM.f_instance_destroy(self))
	else:
		if ((absf(GM.room - 2.0) >= 0.00001)):
			if ((absf(GM.room - 6.0) < 0.00001)):
				(self.script_room_store(0.0))
			else:
				if ((absf(GM.room - 7.0) < 0.00001)):
					(self.script_room_store(1.0))
				else:
					if ((absf(GM.room - 8.0) < 0.00001)):
						(self.script_room_store(2.0))
					else:
						if ((absf(GM.room - 9.0) < 0.00001)):
							(self.script_room_store(3.0))
						else:
							if ((absf(GM.room - 13.0) < 0.00001)):
								(self.script_room_store(4.0))
							else:
								if ((absf(GM.room - 20.0) < 0.00001)):
									(self.script_room_store(5.0))
								else:
									if ((absf(GM.room - 22.0) < 0.00001)):
										(self.script_room_store(6.0))
									else:
										if ((absf(GM.room - 23.0) < 0.00001)):
											(self.script_room_store(7.0))
										else:
											if ((absf(GM.room - 24.0) < 0.00001)):
												(self.script_room_store(8.0))
											else:
												if ((absf(GM.room - 25.0) < 0.00001)):
													(self.script_room_store(9.0))
												else:
													if ((absf(GM.room - 26.0) < 0.00001)):
														(self.script_room_store(10.0))
													else:
														if ((absf(GM.room - 12.0) < 0.00001)):
															(self.script_room_store(99.0))
														else:
															if ((absf(GM.room - 28.0) < 0.00001)):
																(self.script_room_store(199.0))
															else:
																if ((absf(GM.room - 31.0) < 0.00001)):
																	(self.script_room_store(100.0))
																else:
																	if ((absf(GM.room - 32.0) < 0.00001)):
																		(self.script_room_store(101.0))
																	else:
																		if ((absf(GM.room - 39.0) < 0.00001)):
																			(self.script_room_store(105.0))
																		else:
																			if ((absf(GM.room - 34.0) < 0.00001)):
																				(self.script_room_store(102.0))
																			else:
																				if ((absf(GM.room - 36.0) < 0.00001)):
																					(self.script_room_store(103.0))
																				else:
																					if ((absf(GM.room - 37.0) < 0.00001)):
																						(self.script_room_store(104.0))
			GM.G["loadon"] = GM.G["loadon"] + 1.0
			(GM.f_room_goto_next())
	return 0.0
func script_crc16(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	var l_i = 0.0
	var l_j = 0.0
	var l_crc = 0.0
	l_crc = 0.0
	l_i = 1.0
	while (l_i <= (GM.f_string_length(argument0))):
		l_crc = GM.bxor(l_crc, (GM.shl((GM.f_ord((GM.f_string_char_at(argument0, l_i)))), 8.0)))
		l_j = 0.0
		while (l_j < 8.0):
			if ((absf((GM.band(l_crc, 32768.0)) - 0.0) >= 0.00001)):
				l_crc = (GM.bxor((GM.shl(l_crc, 1.0)), 32773.0))
			else:
				l_crc = GM.shl(l_crc, 1.0)
			l_crc = GM.band(l_crc, 65535.0)
			l_j = GM.add(l_j, 1.0)
		l_i = GM.add(l_i, 1.0)
	return l_crc
	return 0.0
func script_dec_to_hex(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_dec", argument0)
	var l_hexval = 0.0
	var l_digits = 0.0
	l_hexval = ""
	l_digits = "0123456789ABCDEF"
	while ((GM.vget(self, "v_dec") > 0.0)):
		l_hexval = GM.add((GM.f_string_char_at(l_digits, ((GM.band(GM.vget(self, "v_dec"), 15.0)) + 1.0))), l_hexval)
		GM.vset(self, "v_dec", GM.shr(GM.vget(self, "v_dec"), 4.0))
	if ((l_hexval == "")):
		l_hexval = "0"
	return l_hexval
	return 0.0
func script_url_encode(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_str", argument0)
	var l_out = 0.0
	var l_i = 0.0
	l_out = ""
	l_i = 1.0
	while (l_i <= (GM.f_string_length(GM.vget(self, "v_str")))):
		l_out = GM.add(l_out, GM.add("%", (self.script_dec_to_hex((GM.f_ord((GM.f_string_char_at(GM.vget(self, "v_str"), l_i))))))))
		l_i = GM.add(l_i, 1.0)
	return l_out
	return 0.0
func script_submit_score(argument0 = 0.0, argument1 = 0.0, argument2 = 0.0, argument3 = 0.0, argument4 = 0.0, argument5 = 0.0, argument6 = 0.0, argument7 = 0.0, argument8 = 0.0, argument9 = 0.0, argument10 = 0.0, argument11 = 0.0, argument12 = 0.0, argument13 = 0.0, argument14 = 0.0, argument15 = 0.0):
	GM.vset(self, "v_sc", argument0)
	GM.vset(self, "v_name", argument1)
	GM.vset(self, "v_sub", argument2)
	GM.vset(self, "v_game", "131916")
	GM.vset(self, "v_pwd", "")
	GM.vset(self, "v_url", "shawn64.com/highscores/submit.php")
	var l_auth_code = 0.0
	var l_glob = 0.0
	var l_url_string = 0.0
	l_glob = GM.add(GM.add(GM.add(GM.add((GM.f_string(GM.vget(self, "v_sc"))), GM.vget(self, "v_name")), GM.vget(self, "v_game")), GM.vget(self, "v_sub")), GM.vget(self, "v_pwd"))
	l_auth_code = (GM.f_string((self.script_crc16(l_glob))))
	l_url_string = GM.vget(self, "v_url")
	l_url_string = GM.add(l_url_string, ("?score=" + (GM.f_string(GM.vget(self, "v_sc")))))
	l_url_string = GM.add(l_url_string, GM.add("&player_name=", (self.script_url_encode(GM.vget(self, "v_name")))))
	l_url_string = GM.add(l_url_string, GM.add("&game_id=", GM.vget(self, "v_game")))
	l_url_string = GM.add(l_url_string, GM.add("&sub_id=", GM.vget(self, "v_sub")))
	l_url_string = GM.add(l_url_string, GM.add("&auth_code=", l_auth_code))
	(GM.f_execute_shell(GM.add("http://", l_url_string), ""))
	return 0.0
func tl_1_20():
	(GM.f_sound_play(56.0))
	GM.vset(212.0, "v_textt", "Dealer: So where's the drug money asshole?")
func tl_1_90():
	(GM.f_sound_play(38.0))
	GM.vset(212.0, "v_textt", "Nitro: Hahahahaha")
func tl_1_140():
	(GM.f_sound_play(58.0))
	GM.vset(212.0, "v_textt", "Dealer: He doesn't have it....  KILL HIM!")
func tl_1_200():
	(GM.f_sound_play(17.0))
func tl_1_205():
	(GM.f_sound_play(17.0))
func tl_1_210():
	(GM.f_sound_play(17.0))
func tl_1_215():
	(GM.f_sound_play(17.0))
func tl_1_220():
	(GM.f_sound_play(19.0))
func tl_1_225():
	(GM.f_sound_play(17.0))
func tl_1_230():
	(GM.f_sound_play(17.0))
func tl_1_235():
	(GM.f_sound_play(19.0))
func tl_1_240():
	(GM.f_sound_play(17.0))
func tl_1_245():
	(GM.f_sound_play(17.0))
func tl_1_250():
	(GM.f_sound_play(17.0))
func tl_1_260():
	(GM.f_instance_create((GM.vb(137.0, "x") - 127.0), GM.vb(137.0, "y"), 136.0))
	(GM.f_sound_play(8.0))
func tl_1_270():
	GM.vset(0.0, "v_intro", 0.0)
	GM.vset(0.0, "v_intro2", 1.0)
	(GM.f_display_mouse_set(700.0, 300.0))
	(GM.f_sound_play(57.0))
	GM.vset(212.0, "v_textt", "Dealer: Don't let him get away!")
func tl_1_310():
	(GM.f_instance_create(GM.vb(0.0, "x"), GM.vb(0.0, "y"), 45.0))
	GM.vset(212.0, "v_textt", "Nitro: Haha, Can't catch me now..")
	(GM.f_sound_play(39.0))
func tl_3_2240():
	GM.vset(self, "v_set", (GM.f_instance_create(x, y, 290.0)))
	GM.vset(GM.vget(self, "v_set"), "v_text", "Too")
func tl_3_2280():
	GM.vset(self, "v_set", (GM.f_instance_create(x, y, 290.0)))
	GM.vset(GM.vget(self, "v_set"), "v_text", "Much")
func tl_3_2320():
	GM.vset(self, "v_set", (GM.f_instance_create(x, y, 290.0)))
	GM.vset(GM.vget(self, "v_set"), "v_text", "PRESSURE!")
