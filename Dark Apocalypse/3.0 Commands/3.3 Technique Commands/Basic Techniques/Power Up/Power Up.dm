mob/var
	powering = 0
	power_delay = 0
	power_up_skill = 3
	power_up_aura = 0

mob/learn
	verb/Power_Up()
		set category = "Techniques"

		var/max_pl_healing = 0
		var/max_ki_healing = 0

		if(src.power_up_skill == 1)
			max_pl_healing = src.powerlevel_max * 0.33
		if(src.power_up_skill == 2)
			max_pl_healing = src.powerlevel_max * 0.66
		if(src.power_up_skill == 3)
			max_pl_healing = src.powerlevel_max

		if(src.power_up_skill == 1)
			max_ki_healing = src.ki_max * 0.33
		if(src.power_up_skill == 2)
			max_ki_healing = src.ki_max * 0.66
		if(src.power_up_skill == 3)
			max_ki_healing = src.ki_max


		if(src.buku)
			src << "You cannot Power Up whilst flying!"
			return

		if(src.KO)
			return

		if(src.power_delay)
			src << "You must wait a moment before using Power Up again!"
			return

		if(src.powering)
			src << "You stop Powering Up"
			src.frozen = 0
			spawn() src.aura()

			src.powering = 0
			src.doing = 0
			src.buku_lock = 0

			if(src.powerlevel > max_pl_healing || src.ki > max_ki_healing)
				src.powerlevel = max_pl_healing
				src.ki = max_ki_healing

			sleep(25)
			src.power_delay = 0
			return
		else

			if(src.powerlevel >= max_pl_healing && src.ki >= max_ki_healing)
				src << "Theres no reason to Power Up!"
				return
			else
				switch(alert("What do you wish to Power Up?","Power Up","Powerlevel","Ki"))
					if("Powerlevel")
						if(src.doing == 1)
							src << "You are doing something already"
							return
						src.doing = 1
						src.power_delay = 1
						src.frozen = 1
						src.powering = 1
						src.buku_lock = 1
						src.icon_state = "enrage"
						src << "You begin to focus your power.."
						spawn() src.aura()
						spawn() src.Powering_PLM()
						sleep(25)
						src.power_delay = 0
						src.afk_time = 0

					if("Ki")
						if(src.doing == 1)
							src << "You are doing something already"
							return
						src.doing = 1
						src.power_delay = 1
						src.frozen = 1
						src.powering = 1
						src.buku_lock = 1
						src.icon_state = "enrage"
						src << "You begin to focus your power.."
						spawn() src.aura()
						spawn() src.Powering_KI()
						sleep(25)
						src.power_delay = 0
						src.afk_time = 0

mob
	proc
		Powering_PLM()
			var/healing = round(src.powerlevel_max * 0.10)
			var/max_pl_healing = 0

			if(src.power_up_skill == 1)
				max_pl_healing = src.powerlevel_max * 0.33
			if(src.power_up_skill == 2)
				max_pl_healing = src.powerlevel_max * 0.66
			if(src.power_up_skill == 3)
				max_pl_healing = src.powerlevel_max

			if(!src.powering)
				src.icon_state = ""
				src.frozen = 0
				sleep(50)
				src.power_delay = 0
				return
			else
				if(src.powerlevel >= max_pl_healing)
					src << "You are fully powered up!"
					src.powerlevel = max_pl_healing
					src.aura()
					src.frozen = 0
					src.powering = 0
					src.doing = 0
					src.buku_lock = 0
					src.icon_state = ""
					sleep(25)
					src.power_delay = 0
					src.overlays -= aura
					return
				else
					src.powerlevel += healing
					for(var/mob/PC/M in view(3))
						if(src.powerlevel >= (M.powerlevel * 100))
							var/FallDir = get_dir(src,M)
							src.dir = FallDir
							step(M,FallDir)
							switch(FallDir)
								if(NORTH)M.dir = SOUTH
								if(NORTHWEST)M.dir = SOUTHEAST
								if(WEST)M.dir = EAST
								if(SOUTHWEST)M.dir = NORTHEAST
								if(SOUTH)M.dir = NORTH
								if(SOUTHEAST)M.dir = NORTHWEST
								if(EAST)M.dir = WEST
								if(NORTHEAST)M.dir = SOUTHWEST
					spawn(20) src.Powering_PL()
					return


		Powering_PL()
			var/healing = round(src.powerlevel_max * 0.10)
			var/max_pl_healing = 0

			if(src.power_up_skill == 1)
				max_pl_healing = src.powerlevel_max * 0.33
			if(src.power_up_skill == 2)
				max_pl_healing = src.powerlevel_max * 0.66
			if(src.power_up_skill == 3)
				max_pl_healing = src.powerlevel_max

			if(!src.powering)
				src.icon_state = ""
				src.frozen = 0
				sleep(50)
				src.power_delay = 0
				return
			else
				if(src.powerlevel >= max_pl_healing)
					src << "You are fully powered up!"
					src.powerlevel = max_pl_healing
					src.aura()
					src.frozen = 0
					src.powering = 0
					src.doing = 0
					src.buku_lock = 0
					src.icon_state = ""
					sleep(25)
					src.power_delay = 0
					src.overlays -= aura
					return
				else
					src.powerlevel += healing
					for(var/mob/PC/M in view(3))
						if(src.powerlevel >= (M.powerlevel * 100))
							var/FallDir = get_dir(src,M)
							src.dir = FallDir
							step(M,FallDir)
							switch(FallDir)
								if(NORTH)M.dir = SOUTH
								if(NORTHWEST)M.dir = SOUTHEAST
								if(WEST)M.dir = EAST
								if(SOUTHWEST)M.dir = NORTHEAST
								if(SOUTH)M.dir = NORTH
								if(SOUTHEAST)M.dir = NORTHWEST
								if(EAST)M.dir = WEST
								if(NORTHEAST)M.dir = SOUTHWEST
					spawn(20) src.Powering_PL()
					return

		Powering_KI()
			var/healing = round(src.ki_max * 0.10)
			var/max_ki_healing = 0

			if(src.power_up_skill == 1)
				max_ki_healing = src.ki_max * 0.33
			if(src.power_up_skill == 2)
				max_ki_healing = src.ki_max * 0.66
			if(src.power_up_skill == 3)
				max_ki_healing = src.ki_max

			if(!src.powering)
				src.icon_state = ""
				src.frozen = 0
				sleep(50)
				src.power_delay = 0
				return
			else
				if(src.ki >= max_ki_healing)
					src << "You are fully powered up!"
					src.aura()
					src.ki = max_ki_healing
					src.frozen = 0
					src.powering = 0
					src.doing = 0
					src.buku_lock = 0
					src.icon_state = ""
					sleep(25)
					src.power_delay = 0
					src.overlays -= aura
					return
				else
					src.ki += healing
					for(var/mob/PC/M in view(3))
						if(src.powerlevel >= (M.powerlevel * 100))
							var/FallDir = get_dir(src,M)
							src.dir = FallDir
							step(M,FallDir)
							switch(FallDir)
								if(NORTH)M.dir = SOUTH
								if(NORTHWEST)M.dir = SOUTHEAST
								if(WEST)M.dir = EAST
								if(SOUTHWEST)M.dir = NORTHEAST
								if(SOUTH)M.dir = NORTH
								if(SOUTHEAST)M.dir = NORTHWEST
								if(EAST)M.dir = WEST
								if(NORTHEAST)M.dir = SOUTHWEST
					spawn(20) src.Powering_KI()
					return



mob/proc/aura()
	if(!src.power_up_aura)
		if(!src.aura_on)
			src.power_up_aura = 1
			if(src.kaioken)
				src.underlays += kaio_aura
			else
				if(src.race == "Saiyan" || src.race == "Half Saiyan")
					if(src.form_1 == 1)
						src.underlays += ssj_aura
						return
					else
						src.underlays += usr.aura
						return

				else
					src.underlays += usr.aura
					return
		else
			src.power_up_aura = 1
			if(src.kaioken)
				src.underlays -= kaio_aura
			else
				if(src.race == "Saiyan" || src.race == "Half Saiyan")
					if(src.form_1 == 1)
						src.underlays -= ssj_aura
						return
					else
						src.underlays -= usr.aura
						return

				else
					src.underlays -= usr.aura
					return
	else
		if(!src.aura_on)
			src.power_up_aura = 0
			if(src.kaioken)
				src.underlays -= kaio_aura
			else
				if(src.race == "Saiyan" || src.race == "Half Saiyan")
					if(src.form_1 == 1)
						src.underlays -= ssj_aura
						return
					else
						src.underlays -= usr.aura
						return

				else
					src.underlays -= usr.aura
					return
		else
			src.power_up_aura = 0
			if(src.kaioken)
				src.underlays += kaio_aura
			else
				if(src.race == "Saiyan" || src.race == "Half Saiyan")
					if(src.form_1 == 1)
						src.underlays += ssj_aura
						return
					else
						src.underlays += usr.aura
						return

				else
					src.underlays += usr.aura
					return