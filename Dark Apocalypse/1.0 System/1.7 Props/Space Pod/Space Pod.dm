mob/var/going = 0
obj/Props/Space_Pod
	icon = 'Space Pod.dmi'
	name = ""

	Space_Pod_1_1
		icon_state = "pod 1-1"
		density = 0
		layer = 12
	Space_Pod_1_2
		icon_state = "pod 1-2"
		density = 0
		layer = 12
	Space_Pod_1_3
		icon_state = "pod 1-3"
		density = 0
		layer = 12
	Space_Pod_1_4
		icon_state = "pod 1-4"
		density = 0
		layer = 12
	Space_Pod_1_5
		icon_state = "pod 1-5"
		density = 1
	Space_Pod_1_6
		icon_state = "pod 1-6"
		density = 1
	Space_Pod_1_7
		icon_state = "pod 1-7"
		density = 1
	Space_Pod_1_8
		icon_state = "pod 1-8"
		density = 1
	Space_Pod_1_9
		icon_state = "pod 1-9"
		density = 1
	Space_Pod_2_1
		icon_state = "pod 2-1"
		density = 1
	Space_Pod_2_2
		icon_state = "pod 2-2"
		density = 1
	Space_Pod_2_3
		icon_state = "pod 2-3"
		density = 1
	Space_Pod_2_4
		icon_state = "pod 2-4"
		density = 0
	Space_Pod_2_5
		icon_state = "pod 2-5"
		density = 0
	Space_Pod_2_6
		icon_state = "pod 2-6"
		density = 0
	Space_Pod_2_7
		icon_state = "pod 2-7"
		density = 0


turf/Passages/Space_Pod

	Go_To_Space_Pod
		name = "Space Pod"
		density = 1
		Bumped()
			switch(input("Where do you wish to Travel to?")in list("Namek"/*,"Yadrat","Future"*/))

				if("Namek")
					usr.loc = locate(176,85,3)
					usr.it_lock = 1

//				if("Yadrat")
//					usr.loc = locate(133,2,5)

//				if("Future")
//					usr.loc = locate(93,85,6)



//				if("Yadrat")
//					usr.loc = locate(133,2,5)


/*	Travel_From_Yadrat
		name = "Space Pod"
		density = 1
		Bumped()
			switch(input("Where do you wish to Travel to?")in list("Earth","Namek"))

				if("Earth")
					usr.loc = locate(93,85,1)

				if("Namek")
					usr.loc = locate(22,118,2)

	Travel_from_Future
		name = "Space Pod to Namek"
		density = 1
		Bumped()
			switch(input("Where do you wish to Travel to?")in list("Past"))

				if("Past")
					usr.loc = locate(93,85,1)*/



obj/Computer/verb/Launch()
	set src in view(1)
	set category = "Actions"
	if(usr.going)
		usr <<"You must wait till you reach your destination."
		return
	switch (input("Co-Ordinates","",text) in list ("Namek","Earth","Future"))

		if("Namek")
			usr << "CO-ORDINATE SET. Please wait for your arrival."
			usr.going= 1
			sleep(1200)
			usr.loc=(locate(57,189,2))
			usr << "You have arrived on Namek, Thank you for using Capsule Corps transportation."
			usr.going= 0
			sleep(1200)

		if("Earth")
			usr << "CO-ORDINATE SET. Please wait for your arrival."
			usr.going= 1
			sleep(1200)
			usr.loc=(locate(156,72,1))
			usr << "You have arrived on Earth, Thank you for using Capsule Corps transportation."
			usr.going= 0
			sleep(1200)

		if("Future")
			if(usr.bulma_quest2_complete)
				usr <<"The Ship doesn't have enough power left.."
			else
				usr << "CO-ORDINATE SET. Please wait for your arrival."
				usr.going= 1
				sleep(1200)
				usr.loc=(locate(110,189,6))
				usr << "You have arrived in the Future, Thank you for using Capsule Corps transportation."
				usr.going= 0
				sleep(1200)


obj/Computer
   name = "Ship Computer"
   icon = 'Space Pod.dmi'
   icon_state = "Comp"


