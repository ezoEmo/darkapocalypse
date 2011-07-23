obj/Equipment/Consumable

	Namek_Radar
		icon = 'Dragon Radar.dmi'
		icon_state = "DBRadar"

		Click()
			if(src in usr:contents)
						//--------NAMEK DBS-----------------//

				for(var/obj/Namek_Dragonballs/Namek_Dragonball_1/N1 in world)
					if(N1.x==0||N1.y==0||N1.z==0)
						usr<<"<font color = green>[N1.name]: </font> [N1.loc]"
					else
						usr << "<font color = green>[N1.name]: </font> [N1.x], [N1.y], [N1.z]"

				for(var/obj/Namek_Dragonballs/Namek_Dragonball_2/N2 in world)
					if(N2.x==0||N2.y==0||N2.z==0)
						usr<<"<font color = green>[N2.name]: </font> [N2.loc]"
					else
						usr << "<font color = green>[N2.name]: </font> [N2.x], [N2.y], [N2.z]"

				for(var/obj/Namek_Dragonballs/Namek_Dragonball_3/N3 in world)
					if(N3.x==0||N3.y==0||N3.z==0)
						usr<<"<font color = green>[N3.name]: </font> [N3.loc]"
					else
						usr << "<font color = green>[N3.name]: </font> [N3.x], [N3.y], [N3.z]"

				for(var/obj/Namek_Dragonballs/Namek_Dragonball_4/N4 in world)
					if(N4.x==0||N4.y==0||N4.z==0)
						usr<<"<font color = green>[N4.name]: </font> [N4.loc]"
					else
						usr << "<font color = green>[N4.name]: </font> [N4.x], [N4.y], [N4.z]"

				for(var/obj/Namek_Dragonballs/Namek_Dragonball_5/N5 in world)
					if(N5.x==0||N5.y==0||N5.z==0)
						usr<<"<font color = green>[N5.name]: </font> [N5.loc]"
					else
						usr << "<font color = green>[N5.name]: </font> [N5.x], [N5.y], [N5.z]"

				for(var/obj/Namek_Dragonballs/Namek_Dragonball_6/N6 in world)
					if(N6.x==0||N6.y==0||N6.z==0)
						usr<<"<font color = green>[N6.name]: </font> [N6.loc]"
					else
						usr << "<font color = green>[N6.name]: </font> [N6.x], [N6.y], [N6.z]"

				for(var/obj/Namek_Dragonballs/Namek_Dragonball_7/N7 in world)
					if(N7.x==0||N7.y==0||N7.z==0)
						usr<<"<font color = green>[N7.name]: </font> [N7.loc]"
					else
						usr << "<font color = green>[N7.name]: </font> [N7.x], [N7.y], [N7.z]"



		verb
			Examine()
				set category = null
				var/examine_dragon = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Namek Radar</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Detect Namek Dragonballs</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font size=1 face=Tahoma>Capable of detecting all the Dragonballs on namek. The front piece has a display that shows where and how far away you are from the nearest Namek Dragonball(s). You can also set the range as to how much area you want to cover.&nbsp;</font></b></td></tr></table>"
				usr << browse(examine_dragon,"window=Namek Radar;size=300x275;border=0;can_resize=0; can_minimize=0;")

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





