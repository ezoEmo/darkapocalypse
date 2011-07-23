mob/proc/wcape_sales()
	var/obj/Equipment/Shoulders/Weighted_Cape/O=new
	var/obj/Equipment/Shoulders/Custom_Weighted_Cape/E=new

	var/cost = 5000

	if(src.threaten_training == "Success")
		cost = 2500
	if(src.threaten_training == "Failure")
		cost = 10000

	switch(input("What type of Cape do you want to buy for [cost] Zenni?")in list("Black Weighted Cape","Blue Weighted Cape","Green Weighted Cape","Red Weighted Cape","Pink Weighted Cape","White Weighted Cape","Custom(10000Z)","Never Mind"))

		if("Never Mind")
			return

		if("Custom(10000Z)")
			cost = 10000
			if(src.zenni >= cost)
				src.zenni -= cost
				var/icon/D = new('Custom Cape.dmi')
				var/new_rgb = F_Color_Selector.Get_Color(usr)
				D.Blend(new_rgb)
				E.icon = D
				E.name = "Custom Weighted Cape"
				E.wcape = D

				usr.contents += E
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
		if("Black Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Black Cape.dmi'
				O.wcape = 'Black Cape.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Blue Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Blue Cape.dmi'
				O.wcape = 'Blue Cape.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Green Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Green Cape.dmi'
				O.wcape = 'Green Cape.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Red Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Red Cape.dmi'
				O.wcape = 'Red Cape.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Pink Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Pink Cape.dmi'
				O.wcape = 'Pink Cape.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
		if("White Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'White Cape.dmi'
				O.wcape = 'White Cape.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return


mob/proc/wcape_sales2()
	var/obj/Equipment/Shoulders/Custom_Weighted_Cape/E=new
	var/obj/Equipment/Shoulders/Weighted_Cape/O=new

	var/cost = 8500

	if(src.threaten_training == "Success")
		cost = cost / 2
	if(src.threaten_training == "Failure")
		cost = cost * 2

	switch(input("What type of Cape do you want to buy?")in list("Black Weighted Cape","Blue Weighted Cape","Green Weighted Cape","Red Weighted Cape","Pink Weighted Cape","White Weighted Cape","Custom(15000Z)","Never Mind"))

		if("Never Mind")
			return

		if("Custom(15000Z)")
			cost = 10000
			if(src.zenni >= cost)
				src.zenni -= cost
				var/icon/D = new('Custom Cape.dmi')
				var/new_rgb = F_Color_Selector.Get_Color(usr)
				D.Blend(new_rgb)
				E.icon = D
				E.name = "Custom Weighted Cape"
				E.level = 2
				E.wcape = D

				usr.contents += E
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Black Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Black Cape.dmi'
				O.wcape = 'Black Cape.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Blue Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Blue Cape.dmi'
				O.wcape = 'Blue Cape.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Green Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Green Cape.dmi'
				O.wcape = 'Green Cape.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Red Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Red Cape.dmi'
				O.wcape = 'Red Cape.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Pink Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Pink Cape.dmi'
				O.wcape = 'Pink Cape.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("White Weighted Cape")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'White Cape.dmi'
				O.wcape = 'White Cape.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
