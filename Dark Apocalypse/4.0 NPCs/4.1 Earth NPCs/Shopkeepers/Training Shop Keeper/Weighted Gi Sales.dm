mob/proc/wgi_sales()
	var/obj/Equipment/Chest/Custom_Weighted_Gi/E=new
	var/obj/Equipment/Chest/Weighted_Gi/O=new

	var/cost = 5000

	if(src.threaten_training == "Success")
		cost = 2500
	if(src.threaten_training == "Failure")
		cost = 10000

	switch(input("What type of Gi do you want to buy for [cost] Zenni?")in list("Black Weighted Gi","Blue Weighted Gi","Green Weighted Gi","Red Weighted Gi","Pink Weighted Gi","White Weighted Gi","Custom(10000Z)","Never Mind"))

		if("Never Mind")
			return

		if("Custom(10000Z)")
			cost = 10000
			if(src.zenni >= cost)
				src.zenni -= cost
				var/icon/D = new('Custom Gi.dmi')
				var/new_rgb = F_Color_Selector.Get_Color(usr)
				D.Blend(new_rgb)
				E.icon = D
				E.name = "Custom Weighted Gi"
				E.wgi = D

				usr.contents += E
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Black Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Black Gi.dmi'
				O.wgi = 'Black Gi.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Blue Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Blue Gi.dmi'
				O.wgi = 'Blue Gi.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Green Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Green Gi.dmi'
				O.wgi = 'Green Gi.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Red Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Red Gi.dmi'
				O.wgi = 'Red Gi.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Pink Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Pink Gi.dmi'
				O.wgi = 'Pink Gi.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("White Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'White Gi.dmi'
				O.wgi = 'White Gi.dmi'

				O.level = 1
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return


mob/proc/wgi_sales2()
	var/obj/Equipment/Chest/Custom_Weighted_Gi/E=new
	var/obj/Equipment/Chest/Weighted_Gi/O=new

	var/cost = 8500

	if(src.threaten_training_2 == "Success")
		cost = cost / 2
	if(src.threaten_training_2 == "Failure")
		cost = cost * 2

	switch(input("What type of Gi do you want to buy for [cost] Zenni?")in list("Black Weighted Gi","Blue Weighted Gi","Green Weighted Gi","Red Weighted Gi","Pink Weighted Gi","White Weighted Gi","Custom(15000Z)","Never Mind"))

		if("Never Mind")
			return

		if("Custom(15000Z)")
			cost = 15000
			if(src.zenni >= cost)
				src.zenni -= cost
				var/icon/D = new('Custom Gi.dmi')
				var/new_rgb = F_Color_Selector.Get_Color(usr)
				D.Blend(new_rgb)
				E.icon = D
				E.name = "Custom Weighted Gi"
				E.level = 2
				E.wgi = D

				usr.contents += E
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Black Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Black Gi.dmi'
				O.wgi = 'Black Gi.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Blue Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Blue Gi.dmi'
				O.wgi = 'Blue Gi.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Green Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Green Gi.dmi'
				O.wgi = 'Green Gi.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Red Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Red Gi.dmi'
				O.wgi = 'Red Gi.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Pink Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Pink Gi.dmi'
				O.wgi = 'Pink Gi.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("White Weighted Gi")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'White Gi.dmi'
				O.wgi = 'White Gi.dmi'

				O.level = 2
				usr.contents += O
				usr.inven_min ++
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font size = -1><B><font color = white>Shop Keep:</font> You cannot afford this!"
				return
