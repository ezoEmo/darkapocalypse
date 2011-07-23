mob/proc/capes_sales()

	var/obj/Equipment/Shoulders/Custom_Cape/E = new

	var/obj/Equipment/Shoulders/Cape/O = new

	var/cost = 500

	switch(input("What color of capes do you want to buy? [cost]Z per Cape")in list("Black","Blue","Green","Red","Purple","Gold","Orange","Pink","White","Custom(2500Z)","Never Mind"))

		if("Never Mind")
			return

		if("Custom(2500Z)")
			cost = 2500
			if(src.zenni >= cost)
				src.zenni -= cost
				var/icon/D = new('Custom Cape.dmi')
				var/new_rgb = F_Color_Selector.Get_Color(usr)
				D.Blend(new_rgb)
				E.icon = D
				E.name = "Custom Cape"
				E.cape = D

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
				O.icon = 'Black Cape.dmi'
				O.capes = 'Black Cape.dmi'
				O.name = "Black Cape"

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
				O.icon = 'Blue Cape.dmi'
				O.capes = 'Blue Cape.dmi'
				O.name = "Blue Cape"

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
				O.icon = 'Green Cape.dmi'
				O.capes = 'Green Cape.dmi'
				O.name = "Green Cape"

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
				O.icon = 'Red Cape.dmi'
				O.capes = 'Red Cape.dmi'
				O.name = "Red Cape"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Purple")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Purple Cape.dmi'
				O.capes = 'Purple Cape.dmi'
				O.name = "Purple Cape"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Gold")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Gold Cape.dmi'
				O.capes = 'Gold Cape.dmi'
				O.name = "Gold Cape"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Orange")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Orange Cape.dmi'
				O.capes = 'Orange Cape.dmi'
				O.name = "Orange Cape"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Pink")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Pink Cape.dmi'
				O.capes = 'Pink Cape.dmi'
				O.name = "Pink Cape"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("White")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'White Cape.dmi'
				O.capes = 'White Cape.dmi'
				O.name = "White Cape"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return
