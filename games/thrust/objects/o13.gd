extends "res://games/thrust/scripts.gd"
var v_zoww = 0.0
func ev_create():
	alarm[int(0.0)] = 50.0
func ev_alarm_1():
	(GM.f_room_goto_next())
	(GM.f_instance_destroy(self))
func ev_alarm_0():
	if (((absf(GM.G["difficultygame"] - 0.0) < 0.00001))):
		if ((absf(GM.room - 0.0) < 0.00001)):
			(GM.f_registry_write_real("cavesbeaten", 1.0))
			v_zoww = (GM.f_instance_create(x, y, 56.0))
			GM.vset(v_zoww, "v_ham", 0.0)
			if (((GM.f_registry_exists("cavestime")))) >= 0.5:
				if ((GM.G["time"] < (GM.f_registry_read_real("cavestime")))):
					(GM.f_registry_write_real("cavestime", GM.G["time"]))
					GM.vset(v_zoww, "v_ham", 1.0)
			if not ((((GM.f_registry_exists("cavestime")))) >= 0.5):
				(GM.f_registry_write_real("cavestime", GM.G["time"]))
				GM.vset(v_zoww, "v_ham", 1.0)
			(GM.f_instance_destroy(self))
		if ((absf(GM.room - 28.0) < 0.00001)):
			(GM.f_registry_write_real("spacebeaten", 1.0))
			v_zoww = (GM.f_instance_create(x, y, 56.0))
			GM.vset(v_zoww, "v_ham", 0.0)
			if (((GM.f_registry_exists("spacetime")))) >= 0.5:
				if ((GM.G["time"] < (GM.f_registry_read_real("spacetime")))):
					(GM.f_registry_write_real("spacetime", GM.G["time"]))
					GM.vset(v_zoww, "v_ham", 1.0)
			if not ((((GM.f_registry_exists("spacetime")))) >= 0.5):
				(GM.f_registry_write_real("spacetime", GM.G["time"]))
				GM.vset(v_zoww, "v_ham", 1.0)
			(GM.f_instance_destroy(self))
		if ((absf(GM.room - 38.0) < 0.00001)):
			(GM.f_registry_write_real("factorybeaten", 1.0))
			v_zoww = (GM.f_instance_create(x, y, 56.0))
			GM.vset(v_zoww, "v_ham", 0.0)
			if (((GM.f_registry_exists("factorytime")))) >= 0.5:
				if ((GM.G["time"] < (GM.f_registry_read_real("factorytime")))):
					(GM.f_registry_write_real("factorytime", GM.G["time"]))
					GM.vset(v_zoww, "v_ham", 1.0)
			if not ((((GM.f_registry_exists("factorytime")))) >= 0.5):
				(GM.f_registry_write_real("factorytime", GM.G["time"]))
				GM.vset(v_zoww, "v_ham", 1.0)
			(GM.f_instance_destroy(self))
		if ((absf(GM.room - 52.0) < 0.00001)):
			(GM.f_registry_write_real("hardmodez", 1.0))
			(GM.f_registry_write_real("portalbeaten", 1.0))
			v_zoww = (GM.f_instance_create(x, y, 106.0))
			GM.vset(v_zoww, "v_ham", 0.0)
			if (((GM.f_registry_exists("portaltime")))) >= 0.5:
				if ((GM.G["time"] < (GM.f_registry_read_real("portaltime")))):
					(GM.f_registry_write_real("portaltime", GM.G["time"]))
					GM.vset(v_zoww, "v_ham", 1.0)
			if not ((((GM.f_registry_exists("portaltime")))) >= 0.5):
				(GM.f_registry_write_real("portaltime", GM.G["time"]))
				GM.vset(v_zoww, "v_ham", 1.0)
			(GM.f_instance_destroy(self))
		return
	else:
		if ((absf(GM.room - 0.0) < 0.00001)):
			(GM.f_registry_write_real("cavesbeaten2", 1.0))
			v_zoww = (GM.f_instance_create(x, y, 56.0))
			GM.vset(v_zoww, "v_ham", 0.0)
			if (((GM.f_registry_exists("cavestime2")))) >= 0.5:
				if ((GM.G["time"] < (GM.f_registry_read_real("cavestime2")))):
					(GM.f_registry_write_real("cavestime2", GM.G["time"]))
					GM.vset(v_zoww, "v_ham", 1.0)
			if not ((((GM.f_registry_exists("cavestime2")))) >= 0.5):
				(GM.f_registry_write_real("cavestime2", GM.G["time"]))
				GM.vset(v_zoww, "v_ham", 1.0)
			(GM.f_instance_destroy(self))
		if ((absf(GM.room - 28.0) < 0.00001)):
			(GM.f_registry_write_real("spacebeaten2", 1.0))
			v_zoww = (GM.f_instance_create(x, y, 56.0))
			GM.vset(v_zoww, "v_ham", 0.0)
			if (((GM.f_registry_exists("spacetime2")))) >= 0.5:
				if ((GM.G["time"] < (GM.f_registry_read_real("spacetime2")))):
					(GM.f_registry_write_real("spacetime2", GM.G["time"]))
					GM.vset(v_zoww, "v_ham", 1.0)
			if not ((((GM.f_registry_exists("spacetime2")))) >= 0.5):
				(GM.f_registry_write_real("spacetime2", GM.G["time"]))
				GM.vset(v_zoww, "v_ham", 1.0)
			(GM.f_instance_destroy(self))
		if ((absf(GM.room - 38.0) < 0.00001)):
			(GM.f_registry_write_real("factorybeaten2", 1.0))
			v_zoww = (GM.f_instance_create(x, y, 56.0))
			GM.vset(v_zoww, "v_ham", 0.0)
			if (((GM.f_registry_exists("factorytime2")))) >= 0.5:
				if ((GM.G["time"] < (GM.f_registry_read_real("factorytime2")))):
					(GM.f_registry_write_real("factorytime2", GM.G["time"]))
					GM.vset(v_zoww, "v_ham", 1.0)
			if not ((((GM.f_registry_exists("factorytime2")))) >= 0.5):
				(GM.f_registry_write_real("factorytime2", GM.G["time"]))
				GM.vset(v_zoww, "v_ham", 1.0)
			(GM.f_instance_destroy(self))
		if ((absf(GM.room - 52.0) < 0.00001)):
			(GM.f_registry_write_real("portalbeaten2", 1.0))
			v_zoww = (GM.f_instance_create(x, y, 116.0))
			GM.vset(v_zoww, "v_ham", 0.0)
			if (((GM.f_registry_exists("portaltime2")))) >= 0.5:
				if ((GM.G["time"] < (GM.f_registry_read_real("portaltime2")))):
					(GM.f_registry_write_real("portaltime2", GM.G["time"]))
					GM.vset(v_zoww, "v_ham", 1.0)
			if not ((((GM.f_registry_exists("portaltime2")))) >= 0.5):
				(GM.f_registry_write_real("portaltime2", GM.G["time"]))
				GM.vset(v_zoww, "v_ham", 1.0)
			(GM.f_instance_destroy(self))
		return
	if (not (((absf(GM.room - 28.0) < 0.00001)))):
		if (not (((absf(GM.room - 0.0) < 0.00001)))):
			alarm[int(1.0)] = 1.0
	if ((((absf(GM.room - 28.0) < 0.00001) or (absf(GM.room - 0.0) < 0.00001)))):
		(GM.f_instance_destroy(self))
func ev_draw():
	GM.font_align = 1.0
	(GM.f_action_draw_font("Impact", 20.0, 0.0, 0.0))
	(GM.f_draw_set_color(16777215.0))
	(GM.f_draw_text((GM.view_xview[0] + 400.0), (GM.view_yview[0] + 200.0), "Level Clear!"))
