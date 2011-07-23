obj/Equipment/Chest

	Saiyan_Battle_Armor
		condition = 500000
		condition_max = 500000
		density = 0
		armor_protection = 75000
		icon = 'Sayian Battle Armor.dmi'
		equiped = 0
		value = 22500000

		var
			saiyan_armor = 'Sayian Battle Armor.dmi'


		Click()
			if(src in usr:contents)
				if(!usr.saiyan_eq)
					if(usr.chest == "EMPTY")
						usr.overlays += saiyan_armor
						usr << "You have equiped the: <u>[src]</u>."
						suffix = "(Worn)"
						usr.saiyan_eq = 1
						src.equiped = 1
						usr.chest = src.name
					else
						usr << "Error: You already have something equipped on your Chest!"
						return
				else
					if(usr.saiyan_eq)
						if(src.equiped)
							usr.overlays -= saiyan_armor
							usr << "You have unequiped the: <u>[src]</u>."
							suffix = null
							usr.saiyan_eq = 0
							src.equiped = 0
							usr.chest = "EMPTY"
						else
							usr << "Error: </b>You may only have one of: <u>[src.name]</u> equiped."
							return


		verb

			Examine()
				set category = null
				var/examine_armor = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Saiyan Battle Armor</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Armor</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font face=Tahoma size=1>This armor protects the wearer from melee attacks. it provides more protection than the henchmen armor.</font></b></td></tr></table>"
				usr << browse(examine_armor,"window=Saiyan Battle Armor;size=300x275;border=0;can_resize=0; can_minimize=0;")

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



obj/Equipment/Chest

	Hench_Battle_Armor
		condition = 50000
		condition_max = 50000
		density = 0
		armor_protection = 10000
		icon = 'Hench Battle Armor.dmi'

		equiped = 0
		value = 125000

		var
			hench_armor = 'Hench Battle Armor.dmi'

		Click()
			if(src in usr:contents)
				if(!usr.hench_eq)
					if(usr.chest == "EMPTY")
						usr.overlays += hench_armor
						usr << "You have equiped the: <u>[src]</u>."
						suffix = "(Worn)"
						usr.hench_eq = 1
						src.equiped = 1
						usr.chest = src.name
					else
						usr << "Error: You already have something equipped on your Chest!"
						return
				else
					if(usr.hench_eq)
						if(src.equiped)
							usr.overlays -= hench_armor
							usr << "You have unequiped the: <u>[src]</u>."
							suffix = null
							usr.hench_eq = 0
							src.equiped = 0
							usr.chest = "EMPTY"
						else
							usr << "Error: </b>You may only have one of: <u>[src.name]</u> equiped."
							return


		verb

			Examine()
				set category = null
				var/examine_armor = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Saiyan Battle Armor</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Armor</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font face=Tahoma size=1>This armor protects the wearer from melee attacks. it provides more protection than the henchmen armor.</font></b></td></tr></table>"
				usr << browse(examine_armor,"window=Saiyan Battle Armor;size=300x275;border=0;can_resize=0; can_minimize=0;")

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
