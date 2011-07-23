mob/proc/warm_sales()

	var/obj/Equipment/Arm/Custom_Arm_Weights/E = new

	var/cost = 15000

	if(src.threaten_training_2 == "Success")
		cost = cost / 2
	if(src.threaten_training_2 == "Failure")
		cost = cost * 2

	switch(input("Want to buy a set of Arm Weights for [cost] Zenni??")in list("Arm Weights","Never Mind"))

		if("Never Mind")
			return

		if("Arm Weights")
			if(src.zenni >= cost)
				if(usr.inven_min < usr.inven_max)
					src.zenni -= cost
					var/icon/D = new('Arm Weight.dmi')
					var/new_rgb = F_Color_Selector.Get_Color(usr)
					D.Blend(new_rgb)
					E.icon = D
					E.name = "Arm Weights"
					E.warm = D

					usr.contents += E
					usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
					usr.inven_min ++
					return
				else
					usr << "No more room for items."
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return