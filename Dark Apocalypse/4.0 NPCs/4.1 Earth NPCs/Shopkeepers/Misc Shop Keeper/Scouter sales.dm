mob/proc/scouter_sales()

	var/cost = 8500

	switch(input("Want to buy a Saiyan Scouter(8,500 zenni)?")in list("Scouter","Never Mind"))

		if("Never Mind")
			return

		if("Scouter")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					usr.contents += new/obj/Equipment/Head/Scouter
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return