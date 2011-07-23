obj/Equipment/Consumable

	Dragon_Radar
		icon = 'Dragon Radar.dmi'
		icon_state = "DBRadar"

		Click()
			if(src in usr:contents)

				for(var/obj/Dragonballs/Earth_Dragonball_1/B1 in world)
					if(B1.x==0||B1.y==0||B1.z==0)
						usr<<"<font color = red>[B1.name]: </font> [B1.loc]"
					else
						usr << "<font color = red>[B1.name]: </font> [B1.x], [B1.y], [B1.z]"

				for(var/obj/Dragonballs/Earth_Dragonball_2/B2 in world)
					if(B2.x==0||B2.y==0||B2.z==0)
						usr<<"<font color = red>[B2.name]: </font> [B2.loc]"
					else
						usr << "<font color = red>[B2.name]: </font> [B2.x], [B2.y], [B2.z]"

				for(var/obj/Dragonballs/Earth_Dragonball_3/B3 in world)
					if(B3.x==0||B3.y==0||B3.z==0)
						usr<<"<font color = red>[B3.name]: </font> [B3.loc]"
					else
						usr << "<font color = red>[B3.name]: </font> [B3.x], [B3.y], [B3.z]"

				for(var/obj/Dragonballs/Earth_Dragonball_4/B4 in world)
					if(B4.x==0||B4.y==0||B4.z==0)
						usr<<"<font color = red>[B4.name]: </font> [B4.loc]"
					else
						usr << "<font color = red>[B4.name]: </font> [B4.x], [B4.y], [B4.z]"

				for(var/obj/Dragonballs/Earth_Dragonball_5/B5 in world)
					if(B5.x==0||B5.y==0||B5.z==0)
						usr<<"<font color = red>[B5.name]: </font> [B5.loc]"
					else
						usr << "<font color = red>[B5.name]: </font> [B5.x], [B5.y], [B5.z]"

				for(var/obj/Dragonballs/Earth_Dragonball_6/B6 in world)
					if(B6.x==0||B6.y==0||B6.z==0)
						usr<<"<font color = red>[B6.name]: </font> [B6.loc]"
					else
						usr << "<font color = red>[B6.name]: </font> [B6.x], [B6.y], [B6.z]"

				for(var/obj/Dragonballs/Earth_Dragonball_7/B7 in world)
					if(B7.x==0||B7.y==0||B7.z==0)
						usr<<"<font color = red>[B7.name]: </font> [B7.loc]"
					else
						usr << "<font color = red>[B7.name]: </font> [B7.x], [B7.y], [B7.z]"


		verb
			Examine()
				set category = null
				var/examine_dragon = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Dragon Radar</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Detect Dragonballs</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font size=1 face=Tahoma>Capable of detecting all the Dragonballs on earth. The front piece has a display that shows where and how far away you are from the nearest Dragonball(s). You can also set the range as to how much area you want to cover. The top button is used as an on and off switch.&nbsp;</font></b></td></tr></table>"
				usr << browse(examine_dragon,"window=Dragon Radar;size=300x275;border=0;can_resize=0; can_minimize=0;")

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
					src.icon_state = "DBRadar"
					usr << "You have dropped the: <u>[src]</u>."
					usr.inven_min -= 1
				else
					usr << "You are unable to drop: <u>[src.name]</u>, it's already equipped."





