obj
	var
		grav = 0
		gravon = 0

obj/Gravity_Room
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

	Gravity
		icon_state = "gravity"
		density = 0
		layer = 10

	Gravity_Pull
		icon_state = "gravity pull"
		density = 0
		layer = 10

	Gravity_Control
		verb
			Set_Gravity()
				set src in oview(3)
				set category = "Gravity Controls"

				Start
				var/gravset = input("What do you what to set the gravity too?","Gravity") as num

				var/max = 500

				if(usr.level >= 350)
					max = 650
				if(usr.level >= 500)
					max = 750

				if(gravset > max)
					spawn() alert("x[max] Gravity is the max amount of gravity you can use.")  // [max] max grav
					sleep(5)
					goto Start

				if(!gravset)
					spawn() alert("Gravity Switched off")
					gravon = 0
					grav = 0
					return

				if(gravset < 0)
					spawn() alert("You cant have negative gravity.")
					sleep(5)
					goto Start
				else
					view(10) << "\red Gravity will be set to x[gravset] in 5 Seconds"  //gives a ten sec. warning for the weeklings
					sleep(50)
					view(10) << "\red Gravity is now x[gravset]"
					grav = gravset
					gravon = 1

			Check_Gravity()
				set src in oview(3)
				set category = "Gravity Controls"

				usr << "\red Gravity is set to: x[grav]"

	Guild_Gravity_Control
		verb
			Set_Gravity()
				set src in oview(3)
				set category = "Gravity Controls"

				Start
				var/gravset = input("What do you what to set the gravity too?","Gravity") as num

				var/max = 650

				if(usr.level >= 350)
					max = 800

				if(usr.level >= 600)
					max = 1000

				if(usr.level >= 800)
					max = 1500

				if(gravset > max)
					spawn() alert("x[max] Gravity is the max amount of gravity you can use.")  // 650 max grav
					sleep(5)
					goto Start

				if(!gravset)
					spawn() alert("Gravity Switched off")
					gravon = 0
					grav = 0
					return

				if(gravset < 0)
					spawn() alert("You cant have negative gravity.")
					sleep(5)
					goto Start
				else
					view(10) << "\red Gravity will be set to x[gravset] in 5 Seconds"
					sleep(50)
					view(10) << "\red Gravity is now x[gravset]"
					grav = gravset
					gravon = 1

			Check_Gravity()
				set src in oview(3)
				set category = "Gravity Controls"

				usr << "\red Gravity is set to: x[grav]"