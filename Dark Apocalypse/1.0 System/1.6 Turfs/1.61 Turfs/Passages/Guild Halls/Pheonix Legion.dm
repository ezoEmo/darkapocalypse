turf
	Passages

		EOD_Guild_Hall

			Enter_Hall
				density = 1

				Enter(mob/PC/M)
					if(M.in_guild)
						if(usr.guild_name == {"EOD"})//put here the name of the guild
							for(var/obj/O in M.contents)
								if(istype(O,/obj/Dragonballs)||istype(O,/obj/Namek_Dragonballs))
									M << "You cannot enter with a dragonball!"
									return
							if(M.fused)
								M << "You cannot enter whilst fused"
							M.loc = locate(154,183,5)
							M.density = 1
							M.it_blocked = 1
							M.it_lock = 1
						else
							M << "You aren't in the Guild \white <I>Eternal Oath Dominance</I>"
					else
						M << "You must be in a Guild to enter the Guild Hall"

			Exit_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(211,213,1)
					M.density = 1
					M.it_blocked = 0
					M.it_lock = 0



			Enter_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(9,186,5)
					M.density = 1

			Exit_Gravity
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,187,5)
					M.density = 1



			Enter_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(39,186,5)
					M.density = 1

			Exit_Gravity_Gen_II
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,187,5)
					M.density = 1
					M.grav = 0
					M.grav_on = 0
					M.grav_delay = 0



			Enter_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(65,191,5)
					M.density = 1

			Exit_Gym
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,187,5)
					M.density = 1



			Enter_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(121,184,5)
					M.density = 1

			Exit_Meeting_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,187,5)
					M.density = 1



			Enter_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(92,189,5)
					M.density = 1

			Exit_Meditation_Hall
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,187,5)
					M.density = 1