extends "res://games/jetzfusion/scripts.gd"
var v_view_left = 0.0
var v_view_width = 0.0
var v_xxx = 0.0
func ev_col_7():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(179.0)) - 1.0) < 0.00001))):
			(self.script_missionscript(0.0, 0.0, 0.0, 0.0, 0.0))
			for _w146 in GM.with_list((177.0), self):
				if _w146._dead:
					continue
				_w146.other = self
				(GM.f_instance_create(_w146.x, 0.0, 114.0))
			for _w147 in GM.with_list((178.0), self):
				if _w147._dead:
					continue
				_w147.other = self
				(GM.f_instance_create(_w147.x, 0.0, 114.0))
			GM.G["money"] = GM.G["money"] + 300.0
			for _w148 in GM.with_list((170.0), self):
				if _w148._dead:
					continue
				_w148.other = self
				(GM.f_instance_destroy(_w148))
			for _w149 in GM.with_list((49.0), self):
				if _w149._dead:
					continue
				_w149.other = self
				GM.vset(_w149, "v_mytext", "")
			(GM.f_sound_play(48.0))
			for _w150 in GM.with_list((177.0), self):
				if _w150._dead:
					continue
				_w150.other = self
				(GM.f_instance_destroy(_w150))
			for _w151 in GM.with_list((178.0), self):
				if _w151._dead:
					continue
				_w151.other = self
				(GM.f_instance_destroy(_w151))
			for _w152 in GM.with_list((179.0), self):
				if _w152._dead:
					continue
				_w152.other = self
				(GM.f_instance_destroy(_w152))
			(GM.f_instance_create((x + 0.0), (y + 0.0), 187.0))
			(GM.f_instance_destroy(self))
		else:
			if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
				for _w153 in GM.with_list((49.0), self):
					if _w153._dead:
						continue
					_w153.other = self
					GM.vset(_w153, "v_mytext", "Stenners:  I am a crack addict!  Find a dealer in a big green coat and push enter to get some crack and bring it back to me for $300.  I would do it myself but uh... You will find out... PUSH ENTER")
					alarm[int(0.0)] = 15.0
func ev_keypress_13():
	if (((absf((GM.f_instance_number(417.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(170.0)) - 0.0) < 0.00001))):
			if ((((GM.f_place_meeting(self, x, y, 7.0))))) >= 0.5:
				GM.vset(49.0, "v_mytext", "")
				(GM.f_instance_create(0.0, 0.0, 170.0))
				(GM.f_sound_play(44.0))
				for _r154 in range(int((10.0))):
					while true:
						v_xxx = (GM.f_random(GM.room_width))
						if (((v_xxx < (GM.aget(v_view_left, 0.0) - 40.0)) or (v_xxx > GM.add(GM.aget(v_view_left, 0.0), GM.aget(v_view_width, 0.0))))):
							break
					(GM.f_instance_create(v_xxx, 580.0, 177.0))
				while true:
					v_xxx = (GM.f_random(GM.room_width))
					if (((v_xxx < (GM.aget(v_view_left, 0.0) - 40.0)) or (v_xxx > GM.add(GM.aget(v_view_left, 0.0), GM.aget(v_view_width, 0.0))))):
						break
				(GM.f_instance_create(v_xxx, 580.0, 178.0))
