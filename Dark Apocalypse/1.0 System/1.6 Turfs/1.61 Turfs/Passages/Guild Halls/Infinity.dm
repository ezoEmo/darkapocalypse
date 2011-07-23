turf
	Passages

		ORG13_Guild_Hall

			Enter_Hall
				density = 1

				Enter(mob/PC/M)
					if(M.in_guild)
						if(usr.guild_name == {"Org13"})//put here the name of the guild
							for(var/obj/O in M.contents)
								if(istype(O,/obj/Dragonballs)||istype(O,/obj/Namek_Dragonballs))
									M << "You cannot enter with a dragonball!"
									return
							if(M.fused)
								M << "You cannot enter whilst fused"
								return
							M.loc = locate(154,240,5)
							M.density = 1
							M.it_blocked = 1
							M.it_lock = 1
						else
							M << "You aren't in the Guild \white <I>Organization XIII</I>"
					else
						M << "You must be in a Guild to enter the Guild Hall"

			Exit_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(227,55,2)
					M.density = 1
					M.it_blocked = 0
					M.it_lock = 0



			Enter_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(9,243,5)
					M.density = 1

			Exit_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,245,5)
					M.density = 1



			Enter_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(39,243,5)
					M.density = 1

			Exit_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,245,5)
					M.density = 1
					M.grav = 0



			Enter_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(65,248,5)
					M.density = 1

			Exit_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,245,5)
					M.density = 1



			Enter_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(121,241,5)
					M.density = 1

			Exit_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,245,5)
					M.density = 1



			Enter_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(92,246,5)
					M.density = 1

			Exit_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,245,5)
					M.density = 1

turf
	Passages

		ES_Guild_Hall

			Enter_Hall
				density = 1

				Enter(mob/PC/M)
					if(M.in_guild)
						if(usr.guild_name == {"ES"})//put here the name of the guild
							for(var/obj/O in M.contents)
								if(istype(O,/obj/Dragonballs)||istype(O,/obj/Namek_Dragonballs))
									M << "You cannot enter with a dragonball!"
									return
							if(M.fused)
								M << "You cannot enter whilst fused"
							M.loc = locate(154,25,5)
							M.density = 1
							M.it_blocked = 1
							M.it_lock = 1
						else
							M << "You aren't in the Guild \white <I>Eternal Sorrows</I>"
					else
						M << "You must be in a Guild to enter the Guild Hall"

			Exit_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(217,176,1)
					M.density = 1
					M.it_blocked = 0
					M.it_lock = 0



			Enter_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(9,28,5)
					M.density = 1

			Exit_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,30,5)
					M.density = 1



			Enter_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(39,28,5)
					M.density = 1

			Exit_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,30,5)
					M.density = 1
					M.grav = 0
					M.grav_on = 0
					M.grav_delay = 0



			Enter_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(65,30,5)
					M.density = 1

			Exit_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,30,5)
					M.density = 1



			Enter_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(120,26,5)
					M.density = 1

			Exit_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,30,5)
					M.density = 1





turf
	Passages

		DFR_Guild_Hall

			Enter_Hall
				density = 1

				Enter(mob/PC/M)
					if(M.in_guild)
						if(usr.guild_name == {"DFR"})
							for(var/obj/O in M.contents)
								if(istype(O,/obj/Dragonballs)||istype(O,/obj/Namek_Dragonballs))
									M << "You cannot enter with a dragonball!"
									return
							if(M.fused)
								M << "You cannot enter whilst fused"
							M.loc = locate(154,103,5)
							M.density = 1
							M.it_blocked = 1
							M.it_lock = 1
						else
							M << "You aren't in the Guild \white <I>Warriors Of  Darkness</I>"
					else
						M << "You must be in a Guild to enter the Guild Hall"

			Exit_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(30,14,1)
					M.density = 1
					M.it_blocked = 0
					M.it_lock = 0



			Enter_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(9,108,5)
					M.density = 1

			Exit_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,108,5)
					M.density = 1



			Enter_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(39,107,5)
					M.density = 1

			Exit_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,108,5)
					M.density = 1
					M.grav = 0
					M.grav_on = 0
					M.grav_delay = 0



			Enter_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(65,113,5)
					M.density = 1

			Exit_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,108,5)
					M.density = 1



			Enter_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(121,106,5)
					M.density = 1

			Exit_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,108,5)
					M.density = 1



			Enter_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(92,246,5)
					M.density = 1

			Exit_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,134,5)
					M.density = 1


turf
	Passages

		Hanku_Guild_Hall

			Enter_Hall
				density = 1

				Enter(mob/PC/M)
					if(M.in_guild)
						if(usr.guild_name == {"FS"})
							for(var/obj/O in M.contents)
								if(istype(O,/obj/Dragonballs)||istype(O,/obj/Namek_Dragonballs))
									M << "You cannot enter with a dragonball!"
									return
							if(M.fused)
								M << "You cannot enter whilst fused"
							M.loc = locate(154,160,5)
							M.density = 1
							M.it_blocked = 1
							M.it_lock = 1
						else
							M << "You aren't in the Guild \white <I>Final Stand</I>"
					else
						M << "You must be in a Guild to enter the Guild Hall"

			Exit_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(124,101,2)
					M.density = 1
					M.it_blocked = 0
					M.it_lock = 0



			Enter_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(9,160,5)
					M.density = 1

			Exit_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,160,5)
					M.density = 1



			Enter_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(39,160,5)
					M.density = 1

			Exit_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,160,5)
					M.density = 1
					M.grav = 0
					M.grav_on = 0
					M.grav_delay = 0



			Enter_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(65,165,5)
					M.density = 1

			Exit_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,160,5)
					M.density = 1



			Enter_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(121,158,5)
					M.density = 1

			Exit_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,160,5)
					M.density = 1



			Enter_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(92,246,5)
					M.density = 1

			Exit_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,160,5)
					M.density = 1

turf
	Passages

		SHINRAINC_Guild_Hall

			Enter_Hall
				density = 1

				Enter(mob/PC/M)
					if(M.in_guild)
						if(usr.guild_name == {"ShinRa Inc."})
							for(var/obj/O in M.contents)
								if(istype(O,/obj/Dragonballs)||istype(O,/obj/Namek_Dragonballs))
									M << "You cannot enter with a dragonball!"
									return
							if(M.fused)
								M << "You cannot enter whilst fused"
							M.loc = locate(154,82,5)
							M.density = 1
							M.it_blocked = 1
							M.it_lock = 1
						else
							M << "You aren't in the Guild \white <I>ShinRa Inc.</I>"
					else
						M << "You must be in a Guild to enter the Guild Hall"

			Exit_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(26,141,2)
					M.density = 1
					M.it_blocked = 0
					M.it_lock = 0



			Enter_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(9,82,5)
					M.density = 1

			Exit_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,84,5)
					M.density = 1



			Enter_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(39,82,5)
					M.density = 1

			Exit_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,84,5)
					M.density = 1
					M.grav = 0
					M.grav_on = 0
					M.grav_delay = 0



			Enter_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(65,88,5)
					M.density = 1

			Exit_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,84,5)
					M.density = 1



			Enter_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(121,81,5)
					M.density = 1

			Exit_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,84,5)
					M.density = 1



			Enter_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(92,246,5)
					M.density = 1

			Exit_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,84,5)
					M.density = 1



turf
	Passages

		NY_Guild_Hall

			Enter_Hall
				density = 1

				Enter(mob/PC/M)
					if(M.in_guild)
						if(usr.guild_name == {"UF"})
							for(var/obj/O in M.contents)
								if(istype(O,/obj/Dragonballs)||istype(O,/obj/Namek_Dragonballs))
									M << "You cannot enter with a dragonball!"
									return
							if(M.fused)
								M << "You cannot enter whilst fused"
							M.loc = locate(154,49,5)
							M.density = 1
							M.it_blocked = 1
							M.it_lock = 1
						else
							M << "You aren't in the Guild \white <I>Unstoppable Force.</I>"
					else
						M << "You must be in a Guild to enter the Guild Hall"

			Exit_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(238,194,2)
					M.density = 1
					M.it_blocked = 0
					M.it_lock = 0



			Enter_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(9,54,5)
					M.density = 1

			Exit_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,49,5)
					M.density = 1



			Enter_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(39,54,5)
					M.density = 1

			Exit_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,49,5)
					M.density = 1
					M.grav = 0
					M.grav_on = 0
					M.grav_delay = 0



			Enter_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(64,59,5)
					M.density = 1

			Exit_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,49,5)
					M.density = 1



			Enter_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(120,52,5)
					M.density = 1

			Exit_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,49,5)
					M.density = 1


turf
	Passages

		HULK_Guild_Hall

			Enter_Hall
				density = 1

				Enter(mob/PC/M)
					if(M.in_guild)
						if(usr.guild_name == {"SW"})//put here the name of the guild
							for(var/obj/O in M.contents)
								if(istype(O,/obj/Dragonballs)||istype(O,/obj/Namek_Dragonballs))
									M << "You cannot enter with a dragonball!"
									return
							if(M.fused)
								M << "You cannot enter whilst fused"
							M.loc = locate(154,130,5)
							M.density = 1
							M.it_blocked = 1
							M.it_lock = 1
						else
							M << "You aren't in the Guild \white <I>Super Warriors.</I>"
					else
						M << "You must be in a Guild to enter the Guild Hall"

			Exit_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(169,166,1)
					M.density = 1
					M.it_blocked = 0
					M.it_lock = 0



			Enter_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(10,135,5)
					M.density = 1

			Exit_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(152,134,5)
					M.density = 1



			Enter_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(40,135,5)
					M.density = 1

			Exit_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(152,134,5)
					M.density = 1
					M.grav = 0
					M.grav_on = 0
					M.grav_delay = 0



			Enter_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(64,135,5)
					M.density = 1

			Exit_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(152,134,5)
					M.density = 1



			Enter_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(120,132,5)
					M.density = 1

			Exit_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(152,134,5)
					M.density = 1
