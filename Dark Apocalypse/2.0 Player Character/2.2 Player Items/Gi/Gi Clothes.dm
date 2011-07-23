obj/var
	pl_bonus = 0
	ki_bonus = 0
	str_bonus = 0
	def_bonus = 0
	has_stats = 0
	lev_req = 0

obj/Equipment/Chest/

	Gi
		name = "Gi"
		density = 0

		equiped = 0
		value = 500

		item_owner = null

		var
			gi

		Click()
			if(src in usr:contents)
				if(src.lev_req > usr.level)
					usr << "You are not a High enough Level!"
					return
				if(!src.item_owner && src.has_stats)
					switch(alert("These [src.name] are not Bio-Linked. Bio-Link them now?","","Yes","No"))
						if("Yes")
							if(src.has_stats)
								src.item_owner = usr.name
							src.item_owner = usr.key
						else
							return
				if(!usr.gi_eq)
					if(usr.chest == "EMPTY")
						if(!usr.gi)
							if(src.has_stats)
								usr.powerlevel_max += src.pl_bonus
								usr.ki_max += src.ki_bonus
								usr.strength_max += src.str_bonus
								usr.defence_max += src.def_bonus
								usr.powerlevel += src.pl_bonus
								usr.ki += src.ki_bonus
								usr.strength += src.str_bonus
								usr.defence += src.def_bonus
							usr.overlays += gi
							usr << "You have equiped the: <u>[src]</u>."
							suffix = "(Worn)"
							usr.chest = src.name
							usr.gi = 1
							usr.gi_eq = 1
							src.equiped = 1
					else
						usr << "Error: You already have something equipped on your Chest."
						return
				else
					if(usr.gi)
						if(src.equiped)
							if(src.has_stats)
								usr.powerlevel_max -= src.pl_bonus
								usr.ki_max -= src.ki_bonus
								usr.strength_max -= src.str_bonus
								usr.defence_max -= src.def_bonus
								usr.powerlevel -= src.pl_bonus
								usr.ki -= src.ki_bonus
								usr.strength -= src.str_bonus
								usr.defence -= src.def_bonus
							usr.overlays -= gi
							usr << "You have unequiped the: <u>[src]</u>."
							suffix = null
							usr.chest = "EMPTY"
							usr.gi = 0
							usr.gi_eq = 0
							src.equiped = 0
						else
							usr << "Error: </b>You may only have one of: <u>[src.name]</u> equiped."
							return


		verb

			Examine()
				set category = null
				var/examine_gi = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>[src.name]</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Clothing</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font face=Tahoma size=1>A simple Gi used to cover the wearer.   Offers no real protection, nor does it offer any other traits apart from keeping the wearer clothed.</font></b></td></tr></table>"
				usr << browse(examine_gi,"window=Gi;size=300x275;border=0;can_resize=0; can_minimize=0;")

			Pick_Up()
				set src in oview(0)
				set category = null
				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
					else
						usr << "No more room for items."

			Drop()
				set category = null
				if(!src.equiped)
					src.loc = usr.loc
					usr << "You have dropped the: <u>[src]</u>."
					usr.inven_min -= 1
				else
					usr << "You are unable to drop: <u>[src.name]</u>, it's already equipped."


obj/Equipment/Chest/

	Custom_Gi
		name = "Custom Gi"
		density = 0
		icon = 'Custom Gi.dmi'
		equiped = 0
		value = 500

		item_owner = null

		var/gi


		Click()
			if(src in usr:contents)
				if(!usr.gi_eq)
					if(usr.chest == "EMPTY")
						if(!usr.gi)
							usr.overlays += gi
							usr << "You have equiped the: <u>[src]</u>."
							suffix = "(Worn)"
							usr.chest = src.name
							usr.gi = 1
							usr.gi_eq = 1
							src.equiped = 1
					else
						usr << "Error: You already have something equipped on your Chest."
						return
				else
					if(usr.gi)
						if(src.equiped)
							usr.overlays -= gi
							usr << "You have unequiped the: <u>[src]</u>."
							suffix = null
							usr.chest = "EMPTY"
							usr.gi = 0
							usr.gi_eq = 0
							src.equiped = 0
						else
							usr << "Error: </b>You may only have one of: <u>[src.name]</u> equiped."
							return


		verb

			Examine()
				set category = null
				var/examine_gi = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>[src.name]</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Clothing</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font face=Tahoma size=1>A simple Gi used to cover the wearer.   Offers no real protection, nor does it offer any other traits apart from keeping the wearer clothed.</font></b></td></tr></table>"
				usr << browse(examine_gi,"window=Gi;size=300x275;border=0;can_resize=0; can_minimize=0;")

			Pick_Up()
				set src in oview(0)
				set category = null
				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
					else
						usr << "No more room for items."

			Drop()
				set category = null
				if(!src.equiped)
					src.loc = usr.loc
					usr << "You have dropped the: <u>[src]</u>."
					usr.inven_min -= 1
				else
					usr << "You are unable to drop: <u>[src.name]</u>, it's already equipped."
