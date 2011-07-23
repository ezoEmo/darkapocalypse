mob/proc/wleg_sales()

	var/obj/Equipment/Legs/Custom_Leg_Weights/E = new

	var/cost = 15000

	if(src.threaten_training_2 == "Success")
		cost = cost / 2
	if(src.threaten_training_2 == "Failure")
		cost = cost * 2

	switch(input("Want to buy a set of Leg Weights for [cost] Zenni??")in list("Leg Weights","Never Mind"))

		if("Never Mind")
			return

		if("Leg Weights")
			if(src.zenni >= cost)
				src.zenni -= cost
				var/icon/D = new('Leg Weight.dmi')
				var/new_rgb = F_Color_Selector.Get_Color(usr)
				D.Blend(new_rgb)
				E.icon = D
				E.wleg = D

				usr.contents += E
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return