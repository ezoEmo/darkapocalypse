obj/Equipment/Consumable

	Senzu
		name = "Senzu Bean"
		icon = 'Senzu Bean.dmi'
		density = 0

		value = 500
		equiped = 0

		condition = 1
		condition_max = 1

		Click()
			if(src in usr:contents)
				if(usr.regenerating)
					usr << "You cannot use this while regenerating."
					return
				if(usr.regen_dead)
					usr << "You cannot use this at the moment."
					return

				if(usr.KO)
					usr << "You cannot use this at the moment."
					return

				view(6)<< "[usr] has eaten a: [src.name]."
				usr.powerlevel = usr.powerlevel_max
				usr.ki = usr.ki_max
				usr.fatigue = 0
				usr.strength = usr.strength_max
				usr.defence = usr.defence_max
				usr.inven_min -= 1
				del(src)
				return

		verb

			Examine()
				set category = null
				var/examine_sensu = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Sensu Bean</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Restore PL, Ki and Stamina</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48><font face=Tahoma size=1>These beans are uses to replenish health and energy instantly to an individual. The bean works on anyone, anytime, including on a person who is near death.</font></b></td></tr></table>"
				usr << browse(examine_sensu,"window=Hench;size=300x275;border=0;can_resize=0; can_minimize=0;")

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
				usr.inven_min -= 1
				src.loc = usr.loc
				usr << "You have dropped the: <u>[src]</u>."
