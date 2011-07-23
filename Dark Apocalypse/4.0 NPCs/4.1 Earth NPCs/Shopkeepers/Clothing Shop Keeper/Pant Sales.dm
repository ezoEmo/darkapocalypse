mob/proc/pants_sales()

	var/obj/Equipment/legs/Pants/O = new

	var/cost = 800

	switch(input("What color Pants do you want to buy? [cost]Z per Pant")in list("Black","Blue","Red","Green","Gold","Never Mind"))

		if("Never Mind")
			return

		if("Black")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Black Pant.dmi'
				O.Pants = 'Black Pant.dmi'
				O.name = "Black Pant"

				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return


		if("Blue")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Blue Pant.dmi'
				O.Pants = 'Blue Pant.dmi'
				O.name = "Blue Pant"

				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Red")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Red Pant.dmi'
				O.Pants = 'Red Pant.dmi'
				O.name = "Red Pant"

				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Green")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Green Pant.dmi'
				O.Pants = 'Green Pant.dmi'
				O.name = "Green Pant"

				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return


		if("Gold")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Gold Pant.dmi'
				O.Pants = 'Gold Pant.dmi'
				O.name = "Gold Pant"

				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
