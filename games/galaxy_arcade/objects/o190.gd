extends "res://games/galaxy_arcade/scripts.gd"
func ev_step():
	if (((absf((GM.f_instance_number(178.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(198.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(219.0)) - 1.0) < 0.00001))):
				if (((absf((GM.f_instance_number(231.0)) - 0.0) < 0.00001))):
					for _w33 in GM.with_list((178.0), self):
						if _w33._dead:
							continue
						_w33.other = self
						(GM.f_instance_destroy(_w33))
					for _w34 in GM.with_list((198.0), self):
						if _w34._dead:
							continue
						_w34.other = self
						(GM.f_instance_destroy(_w34))
					for _w35 in GM.with_list((219.0), self):
						if _w35._dead:
							continue
						_w35.other = self
						(GM.f_instance_destroy(_w35))
					for _w36 in GM.with_list((231.0), self):
						if _w36._dead:
							continue
						_w36.other = self
						(GM.f_instance_destroy(_w36))
					await GM.f_show_message("player 3 wins")
					(GM.f_room_goto(45.0))
	if (((absf((GM.f_instance_number(231.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(178.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(198.0)) - 1.0) < 0.00001))):
				if (((absf((GM.f_instance_number(219.0)) - 0.0) < 0.00001))):
					for _w37 in GM.with_list((178.0), self):
						if _w37._dead:
							continue
						_w37.other = self
						(GM.f_instance_destroy(_w37))
					for _w38 in GM.with_list((198.0), self):
						if _w38._dead:
							continue
						_w38.other = self
						(GM.f_instance_destroy(_w38))
					for _w39 in GM.with_list((219.0), self):
						if _w39._dead:
							continue
						_w39.other = self
						(GM.f_instance_destroy(_w39))
					for _w40 in GM.with_list((231.0), self):
						if _w40._dead:
							continue
						_w40.other = self
						(GM.f_instance_destroy(_w40))
					await GM.f_show_message("player 2 wins")
					(GM.f_room_goto(45.0))
	if (((absf((GM.f_instance_number(231.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(178.0)) - 1.0) < 0.00001))):
			if (((absf((GM.f_instance_number(198.0)) - 0.0) < 0.00001))):
				if (((absf((GM.f_instance_number(219.0)) - 0.0) < 0.00001))):
					for _w41 in GM.with_list((178.0), self):
						if _w41._dead:
							continue
						_w41.other = self
						(GM.f_instance_destroy(_w41))
					for _w42 in GM.with_list((198.0), self):
						if _w42._dead:
							continue
						_w42.other = self
						(GM.f_instance_destroy(_w42))
					for _w43 in GM.with_list((219.0), self):
						if _w43._dead:
							continue
						_w43.other = self
						(GM.f_instance_destroy(_w43))
					for _w44 in GM.with_list((231.0), self):
						if _w44._dead:
							continue
						_w44.other = self
						(GM.f_instance_destroy(_w44))
					await GM.f_show_message("player 1 wins")
					(GM.f_room_goto(45.0))
	if (((absf((GM.f_instance_number(231.0)) - 1.0) < 0.00001))):
		if (((absf((GM.f_instance_number(178.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(198.0)) - 0.0) < 0.00001))):
				if (((absf((GM.f_instance_number(219.0)) - 0.0) < 0.00001))):
					for _w45 in GM.with_list((178.0), self):
						if _w45._dead:
							continue
						_w45.other = self
						(GM.f_instance_destroy(_w45))
					for _w46 in GM.with_list((198.0), self):
						if _w46._dead:
							continue
						_w46.other = self
						(GM.f_instance_destroy(_w46))
					for _w47 in GM.with_list((219.0), self):
						if _w47._dead:
							continue
						_w47.other = self
						(GM.f_instance_destroy(_w47))
					for _w48 in GM.with_list((231.0), self):
						if _w48._dead:
							continue
						_w48.other = self
						(GM.f_instance_destroy(_w48))
					await GM.f_show_message("player 4 wins")
					(GM.f_room_goto(45.0))
func ev_other_4():
	GM.G["firep1"] = 7.0
	GM.G["speedp1"] = 4.0
	GM.G["bombsp1"] = 1.0
	friction = 0.0
	GM.G["firep2"] = 7.0
	GM.G["speedp2"] = 4.0
	GM.G["bombsp2"] = 1.0
	friction = 0.0
	GM.G["firep3"] = 7.0
	GM.G["speedp3"] = 4.0
	GM.G["bombsp3"] = 1.0
	friction = 0.0
	GM.G["firep4"] = 7.0
	GM.G["speedp4"] = 4.0
	GM.G["bombsp4"] = 1.0
