extends "res://games/jetzrampage2/scripts.gd"
func ev_step():
	if (((absf((GM.f_instance_number(515.0)) - 0.0) < 0.00001))):
		if (((absf((GM.f_instance_number(552.0)) - 0.0) < 0.00001))):
			if (((absf((GM.f_instance_number(516.0)) - 0.0) < 0.00001))):
				if (((absf((GM.f_instance_number(547.0)) - 0.0) < 0.00001))):
					if (((absf((GM.f_instance_number(588.0)) - 0.0) < 0.00001))):
						if (((absf((GM.f_instance_number(600.0)) - 0.0) < 0.00001))):
							if (((absf((GM.f_instance_number(527.0)) - 0.0) < 0.00001))):
								if (((absf((GM.f_instance_number(576.0)) - 0.0) < 0.00001))):
									if (((absf((GM.f_instance_number(584.0)) - 0.0) < 0.00001))):
										if (((absf((GM.f_instance_number(574.0)) - 0.0) < 0.00001))):
											if (((absf((GM.f_instance_number(557.0)) - 0.0) < 0.00001))):
												for _w330 in GM.with_list((67.0), self):
													if _w330._dead:
														continue
													_w330.other = self
													GM.vset(0.0, "v_poopoo", 1.0)
													GM.vset(_w330, "v_show", 1.0)
													GM.vset(_w330, "v_mytext", "Fill your damage meter up to the max!!")
													GM.vset(_w330, "v_mytext2", "")
													GM.vset(_w330, "v_mytext3", "")
												(GM.f_instance_create(0.0, 0.0, 1877.0))
												(GM.f_instance_destroy(self))
