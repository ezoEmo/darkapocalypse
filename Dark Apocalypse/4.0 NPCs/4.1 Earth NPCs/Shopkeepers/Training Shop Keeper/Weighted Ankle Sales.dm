mob/proc/ankle_sales()

	var/obj/Equipment/Feet/Ankle_Weights/O = new

	var/cost = 1250

	switch(input("Want to buy a set of Ankle Weights for [cost] Zenni??")in list("Green Ankle Weights","White Ankle Weights","Blue Ankle Weights","Black Ankle Weights","Red Ankle Weights","Never Mind"))

		if("Never Mind")
			return


		if("Red Ankle Weights")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					O.icon = 'Red Ankle Weight.dmi'
					O.wankle = 'Red Ankle Weight.dmi'

					O.level = 1
					usr.contents += O
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("White Ankle Weights")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					O.icon = 'White Ankle Weight.dmi'
					O.wankle = 'White Ankle Weight.dmi'

					O.level = 1
					usr.contents += O
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
		if("Black Ankle Weights")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					O.icon = 'Black Ankle Weight.dmi'
					O.wankle = 'Black Ankle Weight.dmi'

					O.level = 1
					usr.contents += O
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
		if("Blue Ankle Weights")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					O.icon = 'Blue Ankle Weight.dmi'
					O.wankle = 'Blue Ankle Weight.dmi'

					O.level = 1
					usr.contents += O
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
		if("Green Ankle Weights")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					O.icon = 'Green Ankle Weight.dmi'
					O.wankle = 'Green Ankle Weight.dmi'

					O.level = 1
					usr.contents += O
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

mob/proc/ankle_sales2()

	var/obj/Equipment/Feet/Ankle_Weights/O = new

	var/cost = 2500

	if(src.threaten_training_2 == "Success")
		cost = cost / 2
	if(src.threaten_training_2 == "Failure")
		cost = cost * 2

	switch(input("Want to buy a set of Ankle Weights??")in list("Green Ankle Weights","White Ankle Weights","Blue Ankle Weights","Black Ankle Weights","Red Ankle Weights","Never Mind"))

		if("Never Mind")
			return


		if("Red Ankle Weights")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					O.icon = 'Red Ankle Weight.dmi'
					O.wankle = 'Red Ankle Weight.dmi'

					O.level = 1
					usr.contents += O
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("White Ankle Weights")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					O.icon = 'White Ankle Weight.dmi'
					O.wankle = 'White Ankle Weight.dmi'

					O.level = 1
					usr.contents += O
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
		if("Black Ankle Weights")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					O.icon = 'Black Ankle Weight.dmi'
					O.wankle = 'Black Ankle Weight.dmi'

					O.level = 1
					usr.contents += O
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
		if("Blue Ankle Weights")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					O.icon = 'Blue Ankle Weight.dmi'
					O.wankle = 'Blue Ankle Weight.dmi'

					O.level = 1
					usr.contents += O
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
		if("Green Ankle Weights")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					O.icon = 'Green Ankle Weight.dmi'
					O.wankle = 'Green Ankle Weight.dmi'

					O.level = 1
					usr.contents += O
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

