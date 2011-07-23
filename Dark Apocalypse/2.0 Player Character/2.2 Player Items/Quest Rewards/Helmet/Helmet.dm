obj/Equipment/Head

	Helmet
		name = "Helmet"
		icon = 'Player Helmet.dmi'
		density = 0

		equiped = 0
		value = 500

		var
			helmet_icon = 'Player Helmet.dmi'

		Click()
			if(src in usr:contents)
				if(usr.race != "Changling" || usr.race != "Majin" || usr.race != "Tuffle")
					if(!usr.helmet_eq)
						if(usr.head == "EMPTY")
							if(!usr.helmet)
								usr.overlays += helmet_icon
								usr << "You have equiped the: <u>[src]</u>."
								suffix = "(Worn)"
								usr.defence += 150000
								usr.head = src.name
								usr.Helmet_Hair()
								usr.helmet = 1
								usr.helmet_eq = 1
								src.equiped = 1
						else
							usr << "Error: You already have somethign equipped on your Head!"
							return
					else
						if(usr.helmet)
							if(src.equiped)
								usr.overlays -= helmet_icon
								usr << "You have unequiped the: <u>[src]</u>."
								usr.Helmet_Hair_Apply()
								suffix = null
								usr.head = "EMPTY"
								usr.defence -= 150000
								usr.helmet = 0
								usr.helmet_eq = 0
								src.equiped = 0
							else
								usr << "Error: </b>You may only have one of: <u>[src.name]</u> equiped."
								return
				else
					usr << "[usr.race]'s cannot wear Helmets!"
					return


		verb
			/*Examine()
				set category = null
				var/examine_turban = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Turban</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Clothing (Namek Only)</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font face=Tahoma size=1>A simple Turban used to cover the wearers head.   Offers no real protection, nor does it offer any other traits apart from keeping the wearers head covered.</font></b></td></tr></table>"
				usr << browse(examine_turban,"window=Turban;size=300x275;border=0;can_resize=0; can_minimize=0;")
*/
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
mob
	proc

		Helmet_Hair()
			if(src.hair == "Bald")
				return
			if(src.hair == "Goku")
				src.overlays -= src.goku_hair_ssj
				src.overlays -= src.goku_hair
			if(src.hair == "Teen Gohan")
				src.overlays -= src.gohan_teen_hair_ssj
				src.overlays -= src.gohan_teen_hair
			if(src.hair == "Vegeta")
				src.overlays -= src.vegeta_hair_ssj
				src.overlays -= src.vegeta_hair
			if(src.hair == "Trunks Long")
				src.overlays -= src.trunks_long_hair_ssj
				src.overlays -= src.trunks_long_hair
			if(src.hair == "Future Gohan")
				src.overlays -= src.future_gohan_hair_ssj
				src.overlays -= src.future_gohan_hair
			if(src.hair == "Adult Gohan")
				src.overlays -= src.gohan_adult_hair_ssj
				src.overlays -= src.gohan_adult_hair

		Helmet_Hair_Apply()
			if(src.race == "Saiyan" || src.race == "Half Saiyan")
				if(src.form_1)
					if(src.hair == "Bald")
						return
					if(src.hair == "Goku")
						src.overlays += src.goku_hair_ssj
						src.overlays -= src.goku_hair
					if(src.hair == "Teen Gohan")
						src.overlays += src.gohan_teen_hair_ssj
						src.overlays -= src.gohan_teen_hair
					if(src.hair == "Adult Gohan")
						src.overlays += src.gohan_adult_hair_ssj
						src.overlays -= src.gohan_adult_hair
					if(src.hair == "Future Gohan")
						src.overlays += src.future_gohan_hair_ssj
						src.overlays -= src.future_gohan_hair
					if(src.hair == "Vegeta")
						src.overlays += src.vegeta_hair_ssj
						src.overlays -= src.vegeta_hair
					if(src.hair == "Trunks Long")
						src.overlays += src.trunks_long_hair_ssj
						src.overlays -= src.trunks_long_hair
				else
					if(src.hair == "Bald")
						return
					if(src.hair == "Goku")
						src.overlays -= src.goku_hair_ssj
						src.overlays += src.goku_hair
					if(src.hair == "Teen Gohan")
						src.overlays -= src.gohan_teen_hair_ssj
						src.overlays += src.gohan_teen_hair
					if(src.hair == "Adult Gohan")
						src.overlays -= src.gohan_adult_hair_ssj
						src.overlays += src.gohan_adult_hair
					if(src.hair == "Future Gohan")
						src.overlays -= src.future_gohan_hair_ssj
						src.overlays += src.future_gohan_hair
					if(src.hair == "Vegeta")
						src.overlays -= src.vegeta_hair_ssj
						src.overlays += src.vegeta_hair
					if(src.hair == "Trunks Long")
						src.overlays -= src.trunks_long_hair_ssj
						src.overlays += src.trunks_long_hair
			else
				if(src.hair == "Bald")
					return
				if(src.hair == "Goku")
					src.overlays += src.goku_hair
				if(src.hair == "Teen Gohan")
					src.overlays += src.gohan_teen_hair
				if(src.hair == "Adult Gohan")
					src.overlays += src.gohan_adult_hair
				if(src.hair == "Future Gohan")
					src.overlays += src.future_gohan_hair
				if(src.hair == "Vegeta")
					src.overlays += src.vegeta_hair
				if(src.hair == "Trunks Long")
					src.overlays += src.trunks_long_hair



obj/Equipment/Micro_Chip
	name = "Micro Chip"
	density = 0

	icon = 'Micro Chip.dmi'
	equiped = 0
	value = 500

	var/microchip = 'Micro Chip.dmi'
	var/bonus = 500



	Click()
		if(src in usr:contents)
			if(usr.chip < 6)
				if(usr.level > 50)
					bonus = rand(500,1200) * (usr.level + rand(10,25))

					if(usr.race == "Android")
						usr << "Installing Micro Chip..."
						usr.sight |= BLIND
						sleep(25)
						usr.powerlevel_max += bonus
						usr.chip ++
						usr.sight &= ~BLIND
						del src
					else
						usr << "This item is useless, might as well drop it"
				else
					if(usr.race == "Android")
						usr << "Installing Micro Chip..."
						usr.sight |= BLIND
						sleep(25)
						usr.powerlevel_max += bonus
						usr.chip ++
						usr.sight &= ~BLIND
						del src
					else
						usr << "This item is useless, might as well drop it"
			else
				usr << "<font color=blue>Error: </font>System overload cannot compute with microchip."
				return

	verb

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
