mob/var/bubbles_caught = 0

mob
	NPC

		Bubbles

			name = "{NPC} Bubbles"
			icon = 'npcs.dmi'
			icon_state = "Bubbles"
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
						sleep(10)
					sleep(10)

			verb/Catch()
				set src in oview(8)
				set category = "Actions"

				if(src in get_step(usr,usr.dir))
					if(usr.bubbles_caught)
						usr << "You have already caught Bubbles!"
						return
					else
						usr << "You have caught bubbles!"
						usr.powerlevel_max += 1250
						usr.kk_quest_training ++
						usr.bubbles_caught = 1
				else
					return