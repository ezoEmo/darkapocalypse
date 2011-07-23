obj/Equipment/weapon

	Demon_Blade
		name = "Demon Blade"
		icon = 'Demon Blade.dmi'
		density = 0

		equiped = 0
		value = 1000

		var
			demon_blade_icon = 'Demon Blade.dmi'

		Click()
			if(src in usr:contents)
				if(!usr.demonb_eq)
					if(usr.weapon == "EMPTY")
						if(!usr.trunks)
							usr.overlays += demon_blade_icon
							usr << "You have equiped the: <u>[src]</u>."
							suffix = "(Worn)"
							usr.strength_max += 200000
							usr.defence_max += 50000
							usr.strength += 200000
							usr.defence += 50000
							usr.weapon = src.name
							usr.demonb = 1
							usr.demonb_eq = 1
							src.equiped = 1
					else
						usr << "Error: You already have a weapon equiped!"
						return
				else
					if(usr.demonb)
						if(src.equiped)
							usr.overlays -= demon_blade_icon
							usr << "You have unequiped the: <u>[src]</u>."
							suffix = null
							usr.weapon = "EMPTY"
							usr.strength_max -= 200000
							usr.defence_max -= 50000
							usr.strength -= 200000
							usr.defence -= 50000
							usr.demonb = 0
							usr.demonb_eq = 0
							src.equiped = 0
						else
							usr << "Error: </b>You may only have one of: <u>[src.name]</u> equiped."
							return


		verb
			Examine()
				set category = null
				var/examine_turban = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Demon Blade</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Weapon</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font face=Tahoma size=1>A blade used by the demon lord Dabura. It increases the users strength and defence.</font></b></td></tr></table>"
				usr << browse(examine_turban,"window=Demon Blade;size=300x275;border=0;can_resize=0; can_minimize=0;")

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
