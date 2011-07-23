mob
	var
		arenab 		= 0
var
	arena_battle_on = 0

mob/PC
	verb
		Arena_Challenge()
			set category = "Channels"
			if(src.arenab)
				return
			if(src.guildb)
				return
			if(src.it_lock)
				return
			if(src.dead)
				return
			if(src.grav_on)
				return
			if(arena_battle_on)
				alert("An arena battle is taking place at the moment, try again later.")
				return
			if(!src.pk)
				return
			var/list/Menu = list()
			for(var/mob/M in world)
				if(!M.client) continue
				if(M.name != usr.name)
					if(M.arena_accepting)
						if(M.pk)
							if(!M.dead)
								if(!M.grav_on)
									if(!M.arenab)
										if(!M.guildb)
											if(!M.it_lock)
												Menu.Add(M)
			var/mob/M = input("Challenge Who?","Arena Challenge") as null | anything in Menu
			if(!M)return
			if(arena_battle_on)
				alert("An arena battle is taking place at the moment, try again later.")
				return

			if(istype(M,/mob))

				switch(alert("Do you want to challenge [M]?","Arena Challenge","Yes","No"))
					if("Yes")
						switch(alert(M,"[usr] is challanging you to a arena fight, Accept?","Arena Challenge","Yes","No"))
							if("Yes")
								if(arena_battle_on)
									alert("An arena battle is taking place at the moment, try again later.")
									return

								for(var/mob/C in world)
									C << "<font color=#66FFFF>Arena Information:<font color=white> [usr] has challenged [M] to an Arena battle!"
								usr.opponent = "[M]"
								M.opponent = "[usr]"
								usr.loc = locate(118,18,1)
								M.loc = locate(123,17,1)
								usr.arenab = 1
								M.arenab = 1
								arena_battle_on = 1
							if("No")
								usr << "[M] has declined from your challenge"
								return
					if("No")
						return

