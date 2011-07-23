mob/proc/wrist_sales()

	var/obj/Equipment/Hands/Wrist_Weights/O = new

	var/cost = 1250

	if(src.threaten_training == "Success")
		cost = 625
	if(src.threaten_training == "Failure")
		cost = 2500

	switch(input("Want to buy a set of Wrist Weights for [cost] Zenni??")in list("Red Wrist Weights","Blue Wrist Weights","Green Wrist Weights","White Wrist Weights","Black Wrist Weights","Never Mind"))

		if("Never Mind")
			return


		if("Green Wrist Weights")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'Green Wrist Weight.dmi'
				O.wwrist = 'Green Wrist Weight.dmi'
				O.level = 1
				usr.contents += O
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Black Wrist Weights")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'Black Wrist Weight.dmi'
				O.wwrist = 'Black Wrist Weight.dmi'
				O.level = 1
				usr.contents += O
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("White Wrist Weights")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'White Wrist Weight.dmi'
				O.wwrist = 'White Wrist Weight.dmi'
				O.level = 1
				usr.contents += O
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Blue Wrist Weights")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'Blue Wrist Weight.dmi'
				O.wwrist = 'Blue Wrist Weight.dmi'
				O.level = 1
				usr.contents += O
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Red Wrist Weights")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'Red Wrist Weight.dmi'
				O.wwrist = 'Red Wrist Weight.dmi'
				O.level = 1
				usr.contents += O
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

mob/proc/wrist_sales2()

	var/obj/Equipment/Hands/Wrist_Weights/O = new

	var/cost = 2500

	if(src.threaten_training == "Success")
		cost = cost / 2
	if(src.threaten_training == "Failure")
		cost = cost * 2

	switch(input("Want to buy a set of Wrist Weights??")in list("Red Wrist Weights","Blue Wrist Weights","Green Wrist Weights","White Wrist Weights","Black Wrist Weights","Never Mind"))

		if("Never Mind")
			return


		if("Green Wrist Weights")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'Green Wrist Weight.dmi'
				O.wwrist = 'Green Wrist Weight.dmi'
				O.level = 1
				usr.contents += O
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Black Wrist Weights")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'Black Wrist Weight.dmi'
				O.wwrist = 'Black Wrist Weight.dmi'
				O.level = 1
				usr.contents += O
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("White Wrist Weights")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'White Wrist Weight.dmi'
				O.wwrist = 'White Wrist Weight.dmi'
				O.level = 1
				usr.contents += O
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Blue Wrist Weights")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'Blue Wrist Weight.dmi'
				O.wwrist = 'Blue Wrist Weight.dmi'
				O.level = 1
				usr.contents += O
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Red Wrist Weights")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'Red Wrist Weight.dmi'
				O.wwrist = 'Red Wrist Weight.dmi'
				O.level = 1
				usr.contents += O
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return