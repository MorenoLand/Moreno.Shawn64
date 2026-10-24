extends "res://games/galaxy_arcade/scripts.gd"
func ev_other_4():
	for _w49 in GM.with_list((178.0), self):
		if _w49._dead:
			continue
		_w49.other = self
		(GM.f_instance_destroy(_w49))
	for _w50 in GM.with_list((198.0), self):
		if _w50._dead:
			continue
		_w50.other = self
		(GM.f_instance_destroy(_w50))
	for _w51 in GM.with_list((219.0), self):
		if _w51._dead:
			continue
		_w51.other = self
		(GM.f_instance_destroy(_w51))
	for _w52 in GM.with_list((231.0), self):
		if _w52._dead:
			continue
		_w52.other = self
		(GM.f_instance_destroy(_w52))
	GM.G["bombplayers"] = 2.0
