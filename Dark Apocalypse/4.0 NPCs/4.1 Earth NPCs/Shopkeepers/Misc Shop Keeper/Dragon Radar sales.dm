mob/proc/radar_sales()

	var/cost = 15000

	switch(input("Want to buy this Radar(15,000 zenni)?")in list("Dragon Radar","Never Mind"))

		if("Never Mind")
			return

		if("Dragon Radar")
			if(usr.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					usr.zenni -= cost
					usr.inven_min ++
					usr.contents += new/obj/Equipment/Consumable/Dragon_Radar
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return