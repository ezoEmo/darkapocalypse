mob/var/z_sword_quest = 0

obj/quests

	Z_Sword_Quest
		name = "The Legendary Z-Sword"
		density = 1
		icon = 'Z-sword.dmi'
		icon_state = "pull out"

		verb

			Pull_Out()
				set category = "Actions"
				set src in oview(1)
				if(!usr.z_sword_quest)
					if(usr.karma == "Good")
						if(usr.powerlevel_max >= 1000000 && usr.strength >= 500000)
							world << "[usr] has kiged to pull out <u>The Legendary Z-Sword</u>!"
							usr.contents += new/obj/Equipment/Z_Sword
							usr.z_sword_quest = 1
							sleep(5)
							del(src)
							return
						else
							usr << "<font color = white>[usr]:</font> This sword is to much for me."
							return
					else
						usr << "Only users Pure of Heart may take the Z-Sword"
						return
				else
					usr << "<font color = white>[usr]:</font> Wait, I already have one."
					return