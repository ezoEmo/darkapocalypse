mob/var/gregory_hit = 0

mob
	NPC

		Gregory

			name = "{NPC} Gregory"
			icon = 'npcs.dmi'
			icon_state = "Gregory"
			density = 1
			dead = 0
			safe = 1

			powerlevel = 1000000000000000000
			powerlevel_max = 1000000000000000000

			ki = 0
			ki_max = 0

			karma = "Good"
			race = "Monkey"

			level = 5

			KO = 0

			zenni = 0

			frozen = 0

			exp = -9000000000000
			tnl = 175

			var/mob/PC/P

			New()
				. = ..()
				src.CreateName()
				spawn()
					Wander()

			proc/Wander()
				while(src)
					var/Found = FALSE
					for(P in oview(6)).
						step_away(src,P)
						Found = TRUE
						break
					if(Found != TRUE)
						sleep(9)
					sleep(9)

			verb/Hit()
				set src in oview(8)
				set category = "Actions"

				if(src in get_step(usr,usr.dir))
					if(usr.gregory_hit)
						usr << "You have already hit Gregory!"
						return
					else
						usr << "You hit Gregory!"
						usr.powerlevel_max += 2500
						usr.kk_quest_training ++
						usr.gregory_hit = 1
				else
					return