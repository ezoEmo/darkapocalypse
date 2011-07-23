mob/proc/wturben_sales()
	var/obj/Equipment/Head/Weighted_Turben/O = new

	var/cost = 850

	if(src.threaten_training == "Success")
		cost = 425
	if(src.threaten_training == "Failure")
		cost = 1700

	switch(input("Want to buy a Weighted Turben for [cost] Zenni?")in list("Weighted Turben","Never Mind"))

		if("Never Mind")
			return


		if("Weighted Turben")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'Weighted Turben.dmi'
				O.whead = 'Weighted Turben.dmi'

				O.level = 1
				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

mob/proc/wturben_sales2()
	var/obj/Equipment/Head/Weighted_Turben/O = new

	var/cost = 1500

	if(src.threaten_training_2 == "Success")
		cost = cost / 2
	if(src.threaten_training_2 == "Failure")
		cost = cost * 2

	switch(input("Want to buy a Weighted Turben?")in list("Weighted Turben","Never Mind"))

		if("Never Mind")
			return


		if("Weighted Turben")
			if(usr.zenni >= cost)
				usr.zenni -= cost
				usr.inven_min ++
				O.icon = 'Weighted Turben.dmi'
				O.whead = 'Weighted Turben.dmi'

				O.level = 2
				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return