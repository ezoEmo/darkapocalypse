/obj/Equipment

	Z_Sword
		name = "Z-Sword"
		icon = 'Z-Sword.dmi'
		icon_state = "drop"
		var/sword = 'Z-sword.dmi'
		value = 1245000
		density = 0

		Click()
			set src = usr.contents
			if(src in usr:contents)
				if(usr.level < 750)
					usr << "<font color=blue>You've tried to pick up the Z-Sword, but it's weight overwhelms you."
					return
				else
					if(!usr.z_sword)
						if(usr.back == "EMPTY")
							usr.overlays += sword
							usr << "You have equiped the: <u>[src]</u>."
							suffix = "{Worn}"
							usr.speed += 1.5
							usr.strength +=250000
							usr.defence +=60000
							usr.z_sword = 1
							src.equiped = 1
							usr.back = "Z-Sword"
						else
							usr << "Error: You already have something equipped on your Shoulders!"
							return
					else
						usr.overlays -= sword
						usr << "You have unequiped the: <u>[src]</u>."
						suffix = null
						usr.z_sword = 0
						src.equiped = 0
						usr.defence -=60000
						usr.strength -=250000
						usr.back = "EMPTY"

		verb

			Examine()
				set category = null
				var/examine_zsword = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Z Sword</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Legendary Z Sword</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font face=Tahoma size=1>Legend says that if the Z sword is pulled out, the individual will receive incredible powers. It was located at the Kaio-shin's planet, stuck in a plateau. </font></b></td></tr></table>"
				usr << browse(examine_zsword,"window=Hench;size=300x275;border=0;can_resize=0; can_minimize=0;")

			Pick_Up()
				set src in oview(0)
				set category = null
				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
					else
						usr << "No more room for items."
				else
					usr << "You are unable to pick up the: <u>[src]</u>."

			Drop()
				set category = null
				if(!src.equiped)
					src.loc = usr.loc
					usr << "You have dropped the: <u>[src]</u>."
					usr.inven_min -= 1
				else
					usr << "You are unable to drop: <u>[src.name]</u>, it's already equipped."

			Summon_Elder_Kai()
				set category = null
				if(usr.race == "Half Saiyan")
					if(!usr.mystic)
						for(var/mob/NPC/N in oview(20))
							if(N.name == "{NPC} Supreme Kai")
								var/mob/NPC/Elder_Kai/M = new
								M.loc = usr.loc
								spawn(30000) del(M)
							else
								usr << "You must be on Supreme Kai's planet to summon Elder Kai"
								return
				else
					usr << "You cannot summon Elder Kai. (Only Halfbreeds)"
					return




