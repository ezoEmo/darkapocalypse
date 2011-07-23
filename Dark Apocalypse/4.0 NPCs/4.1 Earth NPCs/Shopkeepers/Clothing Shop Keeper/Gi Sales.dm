mob/proc/gi_sales()

	var/obj/Equipment/Chest/Custom_Gi/E = new

	var/obj/Equipment/Chest/Gi/O = new

	var/cost = 500

	switch(input("What color of Gi do you want to buy? [cost]Z per Gi")in list("Black","Blue","Green","Red","Purple","Gold","Orange","Pink","White","Custom(2500Z)","Never Mind"))

		if("Never Mind")
			return

		if("Custom(2500Z)")
			cost = 2500
			if(src.zenni >= cost)
				src.zenni -= cost
				var/icon/D = new('Custom Gi.dmi')
				var/new_rgb = F_Color_Selector.Get_Color(usr)
				D.Blend(new_rgb)
				E.icon = D
				E.name = "Custom Gi"
				E.gi = D


				usr.contents += E
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Black")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Black Gi.dmi'
				O.gi = 'Black Gi.dmi'
				O.name = "Black Gi"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Blue")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Blue Gi.dmi'
				O.gi = 'Blue Gi.dmi'
				O.name = "Blue Gi"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Green")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Green Gi.dmi'
				O.gi = 'Green Gi.dmi'
				O.name = "Green Gi"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Red")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Red Gi.dmi'
				O.gi = 'Red Gi.dmi'
				O.name = "Red Gi"

				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Purple")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Purple Gi.dmi'
				O.gi = 'Purple Gi.dmi'
				O.name = "Purple Gi"

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
				O.icon = 'Gold Gi.dmi'
				O.gi = 'Gold Gi.dmi'
				O.name = "Gold Gi"

				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Orange")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Orange Gi.dmi'
				O.gi = 'Orange Gi.dmi'
				O.name = "Orange Gi"

				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Pink")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Pink Gi.dmi'
				O.gi = 'Pink Gi.dmi'
				O.name = "Pink Gi"

				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("White")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'White Gi.dmi'
				O.gi = 'White Gi.dmi'
				O.name = "White Gi"

				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
