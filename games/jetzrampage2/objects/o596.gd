extends "res://games/jetzrampage2/scripts.gd"
func ev_step():
	if (((absf((GM.f_instance_number(478.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(247.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(484.0)) - 0.0) < 0.00001))):
				if (((absf((GM.f_instance_number(485.0)) - 0.0) < 0.00001))):
					if (((absf((GM.f_instance_number(239.0)) - 0.0) < 0.00001))):
						if (((absf((GM.f_instance_number(431.0)) - 0.0) < 0.00001))):
							if (((absf((GM.f_instance_number(474.0)) - 0.0) < 0.00001))):
								if (((absf((GM.f_instance_number(437.0)) - 0.0) < 0.00001))):
									if (((absf((GM.f_instance_number(557.0)) - 0.0) < 0.00001))):
										if (((absf((GM.f_instance_number(574.0)) - 0.0) < 0.00001))):
											for _w311 in GM.with_list((67.0), self):
												if _w311._dead:
													continue
												_w311.other = self
												GM.vset(0.0, "v_poopoo", 1.0)
												GM.vset(_w311, "v_show", 1.0)
												GM.vset(_w311, "v_mytext", "Fill your damage meter up to the max!!")
												GM.vset(_w311, "v_mytext2", "")
												GM.vset(_w311, "v_mytext3", "")
											(GM.f_instance_create(0.0, 0.0, 1875.0))
											(GM.f_instance_destroy(self))
