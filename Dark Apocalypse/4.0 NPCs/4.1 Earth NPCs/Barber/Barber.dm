mob/NPC/

	Barber
		name = "{NPC} Barber"
		icon = 'Barber.dmi'
		density = 1
		doing = 0
		safe = 1

		New()
			src.CreateName()

		verb/Talk()
			set src in oview(1)
			set category = null

			if(usr.race == "Changling")
				spawn() alert("Barber: Get the fuck out you have no hair.")
				return
			if(usr.race == "Majin")
				spawn() alert("Barber: Get the fuck out you have no hair.")
				return

			if(usr.race == "Tuffle")
				spawn() alert("Barber: Get the fuck out you have no hair.")
				return

			if(usr.race == "Namek")
				spawn() alert("Barber: Get the fuck out you have no hair.")
				return

			if(usr.race == "Bio-Android")
				spawn() alert("Barber: Get the fuck out you have no hair.")
				return

			if(usr.race == "Demon")
				spawn() alert("Barber: Get the fuck out you have no hair.")
				return

			var/hair = input("Barber: WEll look at how need a hair cut?","Hair Cut") in list ("Yes","No")
			switch(hair)

				if("Yes")
					usr.overlays -= usr.goku_hair
					usr.overlays -= usr.vegeta_hair
					usr.overlays -= usr.gohan_teen_hair
					usr.overlays -= usr.gohan_adult_hair
					usr.overlays -= usr.trunks_long_hair
					usr.overlays -= usr.future_gohan_hair
					usr.overlays -= usr.goku_hair_ssj
					usr.overlays -= usr.raditz_hair
					usr.overlays -= usr.raditz_hair_ssj
					usr.overlays -= usr.vegeta_hair_ssj
					usr.overlays -= usr.gohan_teen_hair_ssj
					usr.overlays -= usr.gohan_adult_hair_ssj
					usr.overlays -= usr.trunks_long_hair_ssj
					usr.overlays -= usr.future_gohan_hair_ssj
					usr.overlays -= usr.goku_hair_assj
					usr.overlays -= usr.vegeta_hair_assj
					usr.overlays -= usr.gohan_teen_hair_assj
					usr.overlays -= usr.gohan_adult_hair_assj
					usr.overlays -= usr.trunks_long_hair_assj
					usr.overlays -= usr.future_gohan_hair_assj
					usr.overlays -= usr.goku_hair_ussj
					usr.overlays -= usr.vegeta_hair_ussj
					usr.overlays -= usr.gohan_teen_hair_ussj
					usr.overlays -= usr.gohan_adult_hair_ussj
					usr.overlays -= usr.trunks_long_hair_ussj
					usr.overlays -= usr.future_gohan_hair_ussj
					usr.overlays -= src.hair_droid

					goku_hair = null
					gohan_adult_hair = null
					gohan_teen_hair = null
					vegeta_hair = null
					trunks_long_hair = null
					future_gohan_hair = null

					usr.rhair = null
					usr.ghair = null
					usr.bhair = null

					usr.Hair_Decide()

				if("No")
					return

//----------------------------------------------------------------

mob/proc/Hair_Decide()
	var/hair = input("Pick your hair style.","Hair Styles") in list ("Goku","Vegeta","Adult Gohan","Teen Gohan","Future Gohan","Trunks Long","Raditz","Bald")
	switch(hair)

		if("Goku")
//			src.hair_icon = 'Hair - Goku.dmi'
			src.hair = "Goku"
			var/icon/D = new('Hair - Goku.dmi')
			var/new_rgb = F_Color_Selector.Get_Color(usr)
			D.Blend(new_rgb)
			src.goku_hair = D
			src.overlays += src.goku_hair
//			if(src.majin)
//				src.overlays += majin_sign


		if("Raditz")
//			src.hair_icon = 'Hair - Vegeta.dmi'
			src.hair = "Raditz"
			var/icon/D = new('Hair - Raditz.dmi')
			var/new_rgb = F_Color_Selector.Get_Color(usr)
			D.Blend(new_rgb)
			src.raditz_hair = D
			src.overlays += src.raditz_hair
//			if(src.majin)
//				src.overlays += majin_sign


		if("Vegeta")
//			src.hair_icon = 'Hair - Vegeta.dmi'
			src.hair = "Vegeta"
			var/icon/D = new('Hair - Vegeta.dmi')
			var/new_rgb = F_Color_Selector.Get_Color(usr)
			D.Blend(new_rgb)
			src.vegeta_hair = D
			src.overlays += src.vegeta_hair
//			if(src.majin)
//				src.overlays += majin_sign

		if("Adult Gohan")
//			src.hair_icon = 'Hair - Future Gohan.dmi'
			src.hair = "Adult Gohan"
			var/icon/D = new('Hair - Adult Gohan.dmi')
			var/new_rgb = F_Color_Selector.Get_Color(usr)
			D.Blend(new_rgb)
			src.gohan_adult_hair = D
			src.overlays += src.gohan_adult_hair
//			if(src.majin)
//				src.overlays += majin_sign

		if("Teen Gohan")
//			src.hair_icon = 'Hair - Teen Gohaun.dmi'
			src.hair = "Teen Gohan"
			var/icon/D = new('Hair - Teen Gohan.dmi')
			var/new_rgb = F_Color_Selector.Get_Color(usr)
			D.Blend(new_rgb)
			src.gohan_teen_hair = D
			src.overlays += src.gohan_teen_hair
//			if(src.majin)
//				src.overlays += majin_sign

		if("Future Gohan")
//			src.hair_icon = 'Hair - Future Gohan.dmi'
			src.hair = "Future Gohan"
			var/icon/D = new('Hair - Future Gohan.dmi')
			var/new_rgb = F_Color_Selector.Get_Color(usr)
			D.Blend(new_rgb)
			src.future_gohan_hair = D
			src.overlays += src.future_gohan_hair
//			if(src.majin)
//				src.overlays += majin_sign

		if("Trunks Long")
//			src.hair_icon = 'Hair - Trunks Long.dmi'
			src.hair = "Trunks Long"
			var/icon/D = new('Hair - Trunks Long.dmi')
			var/new_rgb = F_Color_Selector.Get_Color(usr)
			D.Blend(new_rgb)
			src.trunks_long_hair = D
			src.overlays += src.trunks_long_hair
//			if(src.majin)
//				src.overlays += majin_sign

		if("Bald")
			src.hair = null
//			if(src.majin)
//				src.overlays += majin_sign
			return



//----------------------------------------------------------------
