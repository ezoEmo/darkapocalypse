mob/proc/gloves_sales()

	var/obj/Equipment/Hands/Gloves/O = new

	var/cost = 250

	switch(input("What color of Gloves do you want to buy? [cost]Z per Gloves")in list("White","Custom","Never Mind"))

		if("Never Mind")
			return

		if("White")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'White Gloves.dmi'
				O.gloves = 'White Gloves.dmi'
				O.name = "White Gloves"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Custom")
			if(src.zenni >= cost)
				src.zenni -= cost
				var/icon/D = new('Custom Gloves.dmi')
				var/new_rgb = F_Color_Selector.Get_Color(usr)
				D.Blend(new_rgb)

				O.icon = D
				O.gloves = O.icon
				O.name = "Custom Gloves"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return