turf
	Passages

		PR_Guild_Hall

			Enter_Hall
				density = 1

				Enter(mob/PC/M)
					if(M.in_guild)
						if(usr.guild_name == {"LV"})//put here the name of the guild
							for(var/obj/O in M.contents)
								if(istype(O,/obj/Dragonballs)||istype(O,/obj/Namek_Dragonballs))
									M << "You cannot enter with a dragonball!"
									return
							if(M.fused)
								M << "You cannot enter whilst fused"
							M.loc = locate(154,212,5)
							M.density = 1
							M.it_blocked = 1
							M.it_lock = 1
						else
							M << "You aren't in the Guild \white <I>Chaotic Soulz</I>"
					else
						M << "You must be in a Guild to enter the Guild Hall"

			Exit_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(101,47,2)
					M.density = 1
					M.it_blocked = 0
					M.it_lock = 0



			Enter_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(9,215,5)
					M.density = 1

			Exit_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,216,5)
					M.density = 1



			Enter_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(39,215,5)
					M.density = 1

			Exit_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,216,5)
					M.density = 1
					M.grav = 0
					M.grav_on = 0
					M.grav_delay = 0



			Enter_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(65,220,5)
					M.density = 1

			Exit_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,216,5)
					M.density = 1



			Enter_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(121,213,5)
					M.density = 1

			Exit_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,216,5)
					M.density = 1



			Enter_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(92,218,5)
					M.density = 1

			Exit_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,216,5)
					M.density = 1