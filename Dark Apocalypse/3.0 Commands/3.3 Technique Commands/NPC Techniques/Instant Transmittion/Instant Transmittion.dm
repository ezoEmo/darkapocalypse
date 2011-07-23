mob/var/it_blocked = 0

mob/learn
	verb/Instant_Transmission()
		set category = "Techniques"
		var/ki_cost = rand(60,100)

		if(src.doing)
			src << "You are already doing something!"
			return

		if(src.grav)
			src << "<font color=#FF9900><b>Training Information:</font> \white You cannot IT whilst gravity training!"
			return

		if(src.buku)
			return

		if(src.grav_on)
			return

		if(src.safe)
			src << "Get out of the safe zone!"
			return

		if(src.dead)
			return

		if(src.stone_form)
			return

		if(src.donut_wrapped)
			return

		if(src.grav_popup)
			return

		if(src.grav_delay)
			return

		if(src.regen_dead)
			return

		if(src.KO)
			return

		if(src.it_lock)
			src << "Cannot use this Technique at his time"
			return

		if(src.ki_lock)
			src << "Cannot use this Technique at his time"
			return

		if(src.in_guild)
			switch(alert("EC Or Guild Member?","Instant Transmission","EC","Guild Member"))
				if("Guild Member")
					usr.Guild_IT()
				if("EC")
					if(src.ki > ki_cost)
						var/code = input("Which Energy Code do you wish to IT to?")as num

						if(lentext(code) > 7)
							src << "EC too Long!"
							return

						if(code == src.energy_code)
							src << "Thats your EC!"
							return

						if(!code)
							return
						else
							if(src.dead)
								return
							else
								for(var/mob/M in world)
									if(M.energy_code == code)
										if(!M.it_blocked)
											src.ki -= ki_cost
											src << "<B>Locking onto [M]..."
											sleep(15)
											src << "<B>[M] Found!"
											src.icon_state = "IT"
											sleep(6)
											usr.icon_state = ""
											if(!usr)return
											if(!M)return
											src.x = M:x
											src.y = M:y-1
											src.z = M:z
											view(6) << "<B>[usr] appears from nowhere!"
											src.icon_state = "IT"
											sleep(6)
											src.icon_state = ""
											src.afk_time = 0
										else
											src << "You cannot seem to get a clear lock on [M]'s energy signal..."
											return
					else
						src << "You do not have enough Ki!"
						return
		else


			if(src.ki > ki_cost)
				var/code = input("Which Energy Code do you wish to IT to?")as num

				if(lentext(code) > 7)
					src << "EC too Long!"
					return

				if(code == src.energy_code)
					src << "Thats your EC!"
					return

				if(!code)
					return
				else
					if(src.dead)
						return
					else
						for(var/mob/M in world)
							if(M.energy_code == code)
								if(!M.it_blocked)
									src.ki -= ki_cost
									src << "<B>Locking onto [M]..."
									sleep(15)
									src << "<B>[M] Found!"
									src.icon_state = "IT"
									sleep(6)
									usr.icon_state = ""
									if(!usr)return
									if(!M)return
									src.x = M:x
									src.y = M:y-1
									src.z = M:z
									view(6) << "<B>[usr] appears from nowhere!"
									src.icon_state = "IT"
									sleep(6)
									src.icon_state = ""
									src.afk_time = 0
								else
									src << "You cannot seem to get a clear lock on [M]'s energy signal..."
									return
			else
				src << "You do not have enough Ki!"
				return


mob/proc/Guild_IT()
	var/list/Menu = list()
	for(var/mob/M in world)
		if(!M.client) continue
		if(M.name != usr.name)
			if(M.in_guild)
				if(M.guild_name == usr.guild_name)
					Menu.Add(M)
	var/mob/M = input("IT to whom?","Guild Instant Transmission") as null | anything in Menu
	if(!M)return

	if(src.it_lock == 0)
		if(M.it_lock == 0)
			if(src.dead == 0)
				if(M.dead == 0)
					if(!M.it_blocked)
						src << "<B>Locking onto [M]..."
						sleep(15)
						src << "<B>[M] Found!"
						src.icon_state = "IT"
						sleep(6)
						src.icon_state = ""
						src.x = M:x
						src.y = M:y-1
						src.z = M:z
						view(6) << "<font size=1><B>[usr.name] appears from nowhere!"
						src.icon_state = "IT"
						sleep(6)
						src.icon_state = ""
					else
						src << "You cannot seem to get a clear lock on [M]'s energy signal..."
						return

