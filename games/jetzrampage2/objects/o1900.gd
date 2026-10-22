extends "res://games/jetzrampage2/scripts.gd"
func ev_step():
	if (((absf((GM.f_instance_number(1864.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(1885.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(1878.0)) - 0.0) < 0.00001))):
				if (((absf((GM.f_instance_number(1884.0)) - 0.0) < 0.00001))):
					if (((absf((GM.f_instance_number(1868.0)) - 0.0) < 0.00001))):
						if (((absf((GM.f_instance_number(1896.0)) - 0.0) < 0.00001))):
							if (((absf((GM.f_instance_number(1872.0)) - 0.0) < 0.00001))):
								if (((absf((GM.f_instance_number(1895.0)) - 0.0) < 0.00001))):
									if (((absf((GM.f_instance_number(557.0)) - 0.0) < 0.00001))):
										if (((absf((GM.f_instance_number(574.0)) - 0.0) < 0.00001))):
											for _w365 in GM.with_list((67.0), self):
												if _w365._dead:
													continue
												_w365.other = self
												GM.vset(0.0, "v_poopoo", 1.0)
												GM.vset(_w365, "v_show", 1.0)
												GM.vset(_w365, "v_mytext", "Fill your damage meter up to the max!!")
												GM.vset(_w365, "v_mytext2", "")
												GM.vset(_w365, "v_mytext3", "")
											(GM.f_instance_create(0.0, 0.0, 1901.0))
											(GM.f_instance_destroy(self))
