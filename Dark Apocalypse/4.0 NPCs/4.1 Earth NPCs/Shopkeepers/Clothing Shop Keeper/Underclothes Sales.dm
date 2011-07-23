mob/proc/underclothes_sales()

	var/obj/Equipment/Underclothing/Custom_Underclothes/E=new
	var/obj/Equipment/Underclothing/Underclothes/O=new

	var/cost = 500

	switch(input("What color Underclothing do you want to buy? [cost]Z per Underclothing")in list("Black","Blue","Green","Red","Purple","Gold","Orange","Pink","White","Custom(2500Z)","Never Mind"))

		if("Never Mind")
			return

		if("Custom(2500Z)")
			cost = 2500
			if(src.zenni >= cost)
				src.zenni -= cost
				var/icon/D = new('Custom Under.dmi')
				var/new_rgb = F_Color_Selector.Get_Color(usr)
				D.Blend(new_rgb)
				E.icon = D
				E.name = "Custom Cape"
				E.UNDER = D

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
				O.icon = 'Black Under.dmi'
				O.UNDER = 'Black Under.dmi'
				O.name = "Black Underclothes"

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
				O.icon = 'Blue Under.dmi'
				O.UNDER = 'Blue Under.dmi'
				O.name = "Blue Underclothes"

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
				O.icon = 'Green Under.dmi'
				O.UNDER = 'Green Under.dmi'
				O.name = "Green Underclothes"

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
				O.icon = 'Red Under.dmi'
				O.UNDER = 'Red Under.dmi'
				O.name = "Red Underclothes"

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
				O.icon = 'Purple Under.dmi'
				O.UNDER = 'Purple Under.dmi'
				O.name = "Purple Underclothes"

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
				O.icon = 'Gold Under.dmi'
				O.UNDER = 'Gold Under.dmi'
				O.name = "Gold Underclothes"

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
				O.icon = 'Orange Under.dmi'
				O.UNDER = 'Orange Under.dmi'
				O.name = "Orange Underclothes"

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
				O.icon = 'Pink Under.dmi'
				O.UNDER = 'Pink Under.dmi'
				O.name = "Pink Underclothes"

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
				O.icon = 'White Under.dmi'
				O.UNDER = 'White Under.dmi'
				O.name = "White Underclothes"

				usr.contents += O
				usr.inven_min ++
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
