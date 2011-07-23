
obj/Equipment/Hands

	Wrist_Weights
		name = "Wrists Weights"
		density = 0
		var/level = 1
		equiped = 0
		value = 1500

		var
			wwrist

		Click()
			if(src in usr:contents)
				if(!usr.weightwrist)
					if(usr.hands == "EMPTY")
						if(src.equiped)
							usr << "Error: [src.name] is already equipped!"
							return
						usr.overlays += wwrist
						usr << "You have equiped the: <u>[src]</u>."
						suffix = "(Worn)"
						usr.hands = src.name
						usr.weightwrist = level
						src.equiped = 1
						return
					else
						usr << "Error: You already have something equipped on your Hands!"
						return

				if(usr.weightwrist >= 1)
					if(src.equiped)
						usr.overlays -= wwrist
						usr << "You have unequiped the: <u>[src]</u>."
						suffix = null
						usr.hands = "EMPTY"
						usr.weightwrist = 0
						src.equiped = 0
					else
						usr << "Error: You may only have one of: <u>[src.name]</u> equipped."
						return

		verb

			Examine()
				set category = null
				var/examine_w_armour = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Weighted Armour</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Training Aid (-15% Speed)</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font face=Tahoma size=1>Weighted Armour used to speed the wearers training progress by increasing their stamina through making their body heavier and weighed down.</font></b></td></tr></table>"
				usr << browse(examine_w_armour,"window=Turban;size=300x275;border=0;can_resize=0; can_minimize=0;")

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