mob
	var
		grav 		= 0
		grav_delay 	= 0
		grav_on		= 0
		grav_popup = 0

obj/Gravity_Room_Gen_II
	icon = 'Gravity Well.dmi'
	density = 1

	Gravity_Well_1
		icon_state = "1"
	Gravity_Well_2
		icon_state = "2"
	Gravity_Well_3
		icon_state = "3"
	Gravity_Well_4
		icon_state = "4"
	Gravity_Well_5
		icon_state = "5"
	Gravity_Well_6
		icon_state = "6"
	Gravity_Well_7
		icon_state = "7"
	Gravity_Well_8
		icon_state = "8"
	Gravity_Well_9
		icon_state = "9"
	Gravity_Well_10
		icon_state = "10"
		density = 0
		layer = 8
	Gravity_Well_11
		icon_state = "11"
		density = 0
		layer = 8
	Gravity_Well_12
		icon_state = "12"
		density = 0
		layer = 8

	King_kaiGravity_Control
		New()
			..()
			new /obj/Gravity_Room/Gravity_Well_1(locate(x-1,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_2(locate(x,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_3(locate(x+1,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_4(locate(x-1,y,z))
			new /obj/Gravity_Room/Gravity_Well_5(locate(x,y,z))
			new /obj/Gravity_Room/Gravity_Well_6(locate(x+1,y,z))
			new /obj/Gravity_Room/Gravity_Well_7(locate(x-1,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_8(locate(x,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_9(locate(x+1,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_10(locate(x-1,y+2,z))
			new /obj/Gravity_Room/Gravity_Well_11(locate(x,y+2,z))
			new /obj/Gravity_Room/Gravity_Well_12(locate(x+1,y+2,z))

		verb/Log_On_Computer()
			set category = "Gravity Well"
			set src in oview(6)
			if(usr.grav_popup)
				usr << "You already have a gravity window active."
				return
			usr.grav_popup = 1
			var/grav_input = input("What amount of Gravity do you Wish to Train under?","Gravity Training") as num
			var/grav_max = 200


			if(src in oview(6))

				if(!grav_input)
					if(usr.grav >= 1)
						if(usr.grav_delay)
							usr << "please wait for Gravity to settle."
							usr.grav_popup = 0
							return
						else
							usr.grav_on = 0
							usr.grav_delay = 1
							usr << "You turn the Gravity Off"
							usr.grav = 0
							spawn(50) usr.grav_delay = 0
							usr.grav_popup = 0
							return
					else
						usr.grav_delay = 1
						usr.grav = 0
						spawn(50) usr.grav_delay = 0
						usr.grav_popup = 0
						return
				else
					if(usr.grav_on)
						usr << "Gravity is already on. You must turn it off by entering 0"
						usr.grav_popup = 0
						return
					else
						if(grav_input > grav_max)
							usr << "Gravity cannot exceed x[grav_max]"
							usr.grav_popup = 0
							return
						else

							if(grav_input < 1)
								usr << "Gravity cannot be below x1"
								usr.grav_popup = 0
								return

							if(grav_input < 0)
								usr << "Gravity cannot be below x0"
								usr.grav_popup = 0
								return
							else
								if(usr.grav_delay)
									usr << "you must wait a moment before gravity training again!"
									usr.grav_popup = 0
									return
								else
									usr.grav_on = 1
									usr.grav_delay = 1
									usr.grav = grav_input
									usr << "<font color=red>Gravity will be switched onto x[grav_input] in 5 seconds!"
									sleep(50)
									usr << "<font color=red>Gravity on at x[grav_input]!"
									usr.Gravity_Strain()
									usr.grav_delay = 0
									usr.grav_popup = 0
			else
				usr.grav_popup = 0
			usr.afk_time = 0

	EO_Guild_Gravity_Control
		New()
			..()
			new /obj/Gravity_Room/Gravity_Well_1(locate(x-1,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_2(locate(x,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_3(locate(x+1,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_4(locate(x-1,y,z))
			new /obj/Gravity_Room/Gravity_Well_5(locate(x,y,z))
			new /obj/Gravity_Room/Gravity_Well_6(locate(x+1,y,z))
			new /obj/Gravity_Room/Gravity_Well_7(locate(x-1,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_8(locate(x,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_9(locate(x+1,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_10(locate(x-1,y+2,z))
			new /obj/Gravity_Room/Gravity_Well_11(locate(x,y+2,z))
			new /obj/Gravity_Room/Gravity_Well_12(locate(x+1,y+2,z))

		verb/Log_On_Computer()
			set category = "Gravity Well"
			set src in oview(6)
			if(usr.grav_popup)
				usr << "You already have a gravity window active."
				return
			usr.grav_popup = 1
			var/grav_input = input("What amount of Gravity do you Wish to Train under?","Gravity Training") as num
			var/grav_max = 500

			if(usr.level >= 650)
				grav_max = 750

			if(usr.level >= 1250)
				grav_max = 1150

			if(src in oview(6))

				if(!grav_input)
					if(usr.grav >= 1)
						if(usr.grav_delay)
							usr << "please wait for Gravity to settle."
							usr.grav_popup = 0
							return
						else
							usr.grav_on = 0
							usr.grav_delay = 1
							usr << "You turn the Gravity Off"
							usr.grav = 0
							spawn(50) usr.grav_delay = 0
							usr.grav_popup = 0
							return
					else
						usr.grav_delay = 1
						usr.grav = 0
						spawn(50) usr.grav_delay = 0
						usr.grav_popup = 0
						return
				else
					if(usr.grav_on)
						usr << "Gravity is already on. You must turn it off by entering 0"
						usr.grav_popup = 0
						return
					else
						if(grav_input > grav_max)
							usr << "Gravity cannot exceed x[grav_max]"
							usr.grav_popup = 0
							return
						else

							if(grav_input < 1)
								usr << "Gravity cannot be below x1"
								usr.grav_popup = 0
								return

							if(grav_input < 0)
								usr << "Gravity cannot be below x0"
								usr.grav_popup = 0
								return
							else
								if(usr.grav_delay)
									usr << "you must wait a moment before gravity training again!"
									usr.grav_popup = 0
									return
								else
									usr.grav_on = 1
									usr.grav_delay = 1
									usr.grav = grav_input
									usr << "<font color=red>Gravity will be switched onto x[grav_input] in 5 seconds!"
									sleep(50)
									usr << "<font color=red>Gravity on at x[grav_input]!"
									usr.Gravity_Strain()
									usr.grav_delay = 0
									usr.grav_popup = 0
			else
				usr.grav_popup = 0
			usr.afk_time = 0

	Guild_Gravity_Control
		New()
			..()
			new /obj/Gravity_Room/Gravity_Well_1(locate(x-1,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_2(locate(x,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_3(locate(x+1,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_4(locate(x-1,y,z))
			new /obj/Gravity_Room/Gravity_Well_5(locate(x,y,z))
			new /obj/Gravity_Room/Gravity_Well_6(locate(x+1,y,z))
			new /obj/Gravity_Room/Gravity_Well_7(locate(x-1,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_8(locate(x,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_9(locate(x+1,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_10(locate(x-1,y+2,z))
			new /obj/Gravity_Room/Gravity_Well_11(locate(x,y+2,z))
			new /obj/Gravity_Room/Gravity_Well_12(locate(x+1,y+2,z))

		verb/Log_On_Computer()
			set category = "Gravity Well"
			set src in oview(6)
			if(usr.grav_popup)
				usr << "You already have a gravity window active."
				return
			usr.grav_popup = 1
			var/grav_input = input("What amount of Gravity do you Wish to Train under?","Gravity Training") as num
			var/grav_max = 500

			if(usr.level >= 650)
				grav_max = 750

			if(usr.level >= 1250)
				grav_max = 1150

			if(src in oview(6))

				if(!grav_input)
					if(usr.grav >= 1)
						if(usr.grav_delay)
							usr << "please wait for Gravity to settle."
							usr.grav_popup = 0
							return
						else
							usr.grav_on = 0
							usr.grav_delay = 1
							usr << "You turn the Gravity Off"
							usr.grav = 0
							spawn(50) usr.grav_delay = 0
							usr.grav_popup = 0
							return
					else
						usr.grav_delay = 1
						usr.grav = 0
						spawn(50) usr.grav_delay = 0
						usr.grav_popup = 0
						return
				else
					if(usr.grav_on)
						usr << "Gravity is already on. You must turn it off by entering 0"
						usr.grav_popup = 0
						return
					else
						if(grav_input > grav_max)
							usr << "Gravity cannot exceed x[grav_max]"
							usr.grav_popup = 0
							return
						else

							if(grav_input < 1)
								usr << "Gravity cannot be below x1"
								usr.grav_popup = 0
								return

							if(grav_input < 0)
								usr << "Gravity cannot be below x0"
								usr.grav_popup = 0
								return
							else
								if(usr.grav_delay)
									usr << "you must wait a moment before gravity training again!"
									usr.grav_popup = 0
									return
								else
									usr.grav_on = 1
									usr.grav_delay = 1
									usr.grav = grav_input
									usr << "<font color=red>Gravity will be switched onto x[grav_input] in 5 seconds!"
									sleep(50)
									usr << "<font color=red>Gravity on at x[grav_input]!"
									usr.Gravity_Strain()
									usr.grav_delay = 0
									usr.grav_popup = 0
			else
				usr.grav_popup = 0
			usr.afk_time = 0
	Gravity_Control
		New()
			..()
			new /obj/Gravity_Room/Gravity_Well_1(locate(x-1,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_2(locate(x,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_3(locate(x+1,y-1,z))
			new /obj/Gravity_Room/Gravity_Well_4(locate(x-1,y,z))
			new /obj/Gravity_Room/Gravity_Well_5(locate(x,y,z))
			new /obj/Gravity_Room/Gravity_Well_6(locate(x+1,y,z))
			new /obj/Gravity_Room/Gravity_Well_7(locate(x-1,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_8(locate(x,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_9(locate(x+1,y+1,z))
			new /obj/Gravity_Room/Gravity_Well_10(locate(x-1,y+2,z))
			new /obj/Gravity_Room/Gravity_Well_11(locate(x,y+2,z))
			new /obj/Gravity_Room/Gravity_Well_12(locate(x+1,y+2,z))

		verb/Log_On_Computer()
			set category = "Gravity Well"
			set src in oview(6)
			if(usr.grav_popup)
				usr << "You already have a gravity window active."
				return
			usr.grav_popup = 1
			var/grav_input = input("What amount of Gravity do you Wish to Train under?","Gravity Training") as num
			var/grav_max = 500

			if(usr.level >= 650)
				grav_max = 750

			if(usr.level >= 1250)
				grav_max = 1150

			if(src in oview(6))

				if(!grav_input)
					if(usr.grav >= 1)
						if(usr.grav_delay)
							usr << "please wait for Gravity to settle."
							usr.grav_popup = 0
							return
						else
							usr.grav_on = 0
							usr.grav_delay = 1
							usr << "You turn the Gravity Off"
							usr.grav = 0
							spawn(50) usr.grav_delay = 0
							usr.grav_popup = 0
							return
					else
						usr.grav_delay = 1
						usr.grav = 0
						spawn(50) usr.grav_delay = 0
						usr.grav_popup = 0
						return
				else
					if(usr.grav_on)
						usr << "Gravity is already on. You must turn it off by entering 0"
						usr.grav_popup = 0
						return
					else
						if(grav_input > grav_max)
							usr << "Gravity cannot exceed x[grav_max]"
							usr.grav_popup = 0
							return
						else

							if(grav_input < 1)
								usr << "Gravity cannot be below x1"
								usr.grav_popup = 0
								return

							if(grav_input < 0)
								usr << "Gravity cannot be below x0"
								usr.grav_popup = 0
								return
							else
								if(usr.grav_delay)
									usr << "you must wait a moment before gravity training again!"
									usr.grav_popup = 0
									return
								else
									usr.grav_on = 1
									usr.grav_delay = 1
									usr.grav = grav_input
									usr << "<font color=red>Gravity will be switched onto x[grav_input] in 5 seconds!"
									sleep(50)
									usr << "<font color=red>Gravity on at x[grav_input]!"
									usr.Gravity_Strain()
									usr.grav_delay = 0
									usr.grav_popup = 0
			else
				usr.grav_popup = 0
			usr.afk_time = 0