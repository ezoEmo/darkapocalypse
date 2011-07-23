mob/var/obtained_helmet = 0

mob
	NPC

		Goten

			name = "{NPC} Goten"
			icon = 'Goten.dmi'
			density = 1
			dead = 0
			safe = 1

			powerlevel = 100
			powerlevel_max = 100

			ki = 0
			ki_max = 0

			karma = "Good"
			race = "Half Saiyan"

			level = 5

			KO = 0

			zenni = 0

			frozen = 0

			exp = 175
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
						sleep(8)
					sleep(8)

			verb/Talk()
				set src in oview(4)
				set category = "Actions"

				if(src in get_step(usr,usr.dir))
					if(usr.obtained_helmet)
						usr << "<font color = white>Goten:</font> Hiya [usr.name]!"
						return
					else
						src.frozen = 1
						usr << "<font color = white>Goten:</font> Hi [usr.name]! So Gohan needs his helmet back?"
						sleep(10)
						usr << "<I>\white Goten lets out a long sigh as he hands you the helmet"
						src.icon = 'Goten No Helmet.dmi'
						sleep(10)
						usr << "<font color = white>Goten:</font> There you go. Big brother always spoils my fun"
						usr.obtained_helmet = 1
						src.frozen = 0
						spawn(300) src.icon = 'Goten.dmi'
				else
					return