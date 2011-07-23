obj/Equipment/Consumable

	Water
		name = "Bottle of Water"
		icon = 'Misc.dmi'
		icon_state = "Water"
		density = 0

		value = 50
		equiped = 0

		condition = 1
		condition_max = 1

		Click()
			if(src in usr:contents)
				usr.ki += usr.ki_max / 25
				usr.fatigue -= 20

				if(usr.ki > usr.ki_max)
					usr.ki = usr.ki_max

				if(usr.fatigue < 0)
					usr.fatigue = 0

				usr.inven_min -= 1
				del(src)
				return

		verb

			Examine()
				set category = null
				var/examine_water = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Bottle of Water</font></td>  </tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td>    <td width=174 height=12><font face=Tahoma size=1>Restore Ki by 25%</font></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr>    <td width=273 colspan=2 height=48><font face=Tahoma size=1>Simple bottle of Water. Drinking it will help restore the Energy of whomever drinks it.</font></td>  </tr></table>"
				usr << browse(examine_water,"window=Hench;size=300x275;border=0;can_resize=0; can_minimize=0;")

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
					usr << "You are unable to pick up the: <u>[src.name]</u>."

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You have dropped the: <u>[src.name]</u>."

	Lemonade
		name = "Bottle of Lemonade"
		icon = 'Misc.dmi'
		icon_state = "Lemonade"
		density = 0

		value = 100
		equiped = 0

		condition = 1
		condition_max = 1

		Click()
			if(src in usr:contents)
				usr.ki += usr.ki_max / 50
				usr.fatigue -= 45

				if(usr.ki > usr.ki_max)
					usr.ki = usr.ki_max
					.
				if(usr.fatigue < 0)
					usr.fatigue = 0

				usr.inven_min -= 1
				del(src)
				return

		verb

			Examine()
				set category = null
				var/examine_lemonade = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Bottle of Lemonade</font></td>  </tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td>    <td width=174 height=12><font face=Tahoma size=1>Restore Ki by 50%</font></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr>    <td width=273 colspan=2 height=48><font face=Tahoma size=1>Simple bottle of Lemonade. Drinking it will help restore the Energy of whomever drinks it.</font></td>  </tr></table>"
				usr << browse(examine_lemonade,"window=Hench;size=300x275;border=0;can_resize=0; can_minimize=0;")

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
					usr << "You are unable to pick up the: <u>[src.name]</u>."

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You have dropped the: <u>[src.name]</u>."

	Hotdog
		name = "Hotdog"
		icon = 'Misc.dmi'
		icon_state = "Hotdog"
		density = 0

		value = 75
		equiped = 0

		condition = 1
		condition_max = 1

		Click()
			if(src in usr:contents)
				usr.powerlevel += usr.powerlevel_max / 50
				usr.fatigue -= 50

				if(usr.powerlevel > usr.powerlevel_max)
					usr.powerlevel = usr.powerlevel_max

				if(usr.fatigue < 0)
					usr.fatigue = 0

				usr.inven_min -= 1
				del(src)
				return

		verb

			Examine()
				set category = null
				var/examine_hotdog = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr>    <td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Hotdog</font></td>  </tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td>    <td width=174 height=12><font face=Tahoma size=1>Restore PL by 50%</font></td>  </tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48><font face=Tahoma size=1>A commonly found and very easy to make food. The hotdog, when consumed, will help to restore some Powerlevel.</font></td>  </tr></table>"
				usr << browse(examine_hotdog,"window=Hench;size=300x275;border=0;can_resize=0; can_minimize=0;")

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
					usr << "You are unable to pick up the: <u>[src.name]</u>."

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You have dropped the: <u>[src.name]</u>."

	Apple
		name = "Apple"
		icon = 'Misc.dmi'
		icon_state = "Apple"
		density = 0

		value = 12
		equiped = 0

		condition = 1
		condition_max = 1

		Click()
			if(src in usr:contents)
				usr.powerlevel += usr.powerlevel_max / 15
				usr.fatigue -= 15

				if(usr.powerlevel > usr.powerlevel_max)
					usr.powerlevel = usr.powerlevel_max

				if(usr.fatigue < 0)
					usr.fatigue = 0

				usr.inven_min -= 1
				del(src)
				return

		verb

			Examine()
				set category = null
				var/examine_apple = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr>    <td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Apple</font></td>  </tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td>    <td width=174 height=12><font face=Tahoma size=1>Restore PL by 15%</font></td>  </tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48><font face=Tahoma size=1>A commonly found and fruit that grows on certain trees. Apple's, when consumed, will help to restore some Powerlevel.</font></td>  </tr></table>"
				usr << browse(examine_apple,"window=Hench;size=300x275;border=0;can_resize=0; can_minimize=0;")

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
					usr << "You are unable to pick up the: <u>[src.name]</u>."

			Drop()
				set category = null
				src.loc = usr.loc
				usr << "You have dropped the: <u>[src.name]</u>."

