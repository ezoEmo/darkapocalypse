mob/proc/belts_sales()

	var/obj/Equipment/waist/Belts/O = new

	var/cost = 350

	switch(input("What color of Belt do you want to buy? [cost]Z per Belt")in list("Black","Blue","Red","Gold","Green","Never Mind"))

		if("Never Mind")
			return

		if("Black")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Black Belt.dmi'
				O.Belts = 'Black Belt.dmi'
				O.name = "Black Belt"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return


		if("Blue")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Blue Belt.dmi'
				O.Belts = 'Blue Belt.dmi'
				O.name = "Blue Belt"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Red")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Red Belt.dmi'
				O.Belts = 'Red Belt.dmi'
				O.name = "Red Belt"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Gold")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Gold Belt.dmi'
				O.Belts = 'Gold Belt.dmi'
				O.name = "Gold Belt"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Green")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Green Belt.dmi'
				O.Belts = 'Green Belt.dmi'
				O.name = "Green Belt"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return