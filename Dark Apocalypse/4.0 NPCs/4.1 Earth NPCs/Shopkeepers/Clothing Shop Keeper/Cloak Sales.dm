mob/proc/cloak_sales()

	var/obj/Equipment/Chest/Custom_Cloak/E = new

	var/obj/Equipment/Chest/Cloak/O = new

	var/cost = 1000

	switch(input("What color of cloak do you want to buy? [cost]Z per Cloak")in list("Gray","Custom(2500Z)","Never Mind"))

		if("Never Mind")
			return

		if("Custom(2500Z)")
			cost = 2500
			if(src.zenni >= cost)
				src.zenni -= cost
				var/icon/D = new('Custom Cloak.dmi')
				var/new_rgb = F_Color_Selector.Get_Color(usr)
				D.Blend(new_rgb)
				E.icon = D
				E.name = "Custom Cloak"
				E.cloaks = D

				usr.contents += E
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

		if("Gray")
			if(src.zenni >= cost)
				src.zenni -= cost
				O.icon = 'Cloak.dmi'
				O.cloak = 'Cloak.dmi'
				O.name = "Cloak"

				usr.contents += O
				usr << "<font color = white>Shop Keep:</font> Thanks for buying!"
				usr.inven_min ++
				return
			else
				usr << "<font color = white>Shop Keep:</font> You cannot afford this!"
				return

