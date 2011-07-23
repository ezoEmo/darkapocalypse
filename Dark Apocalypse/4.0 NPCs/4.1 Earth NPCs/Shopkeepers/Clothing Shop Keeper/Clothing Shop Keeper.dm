mob
	NPC

		Clothing_Shop_Keeper

			name = "{NPC} Clothing Items Shop Keeper"
			icon = 'Cloth Shop Keeper.dmi'
			density = 1
			safe = 1

			powerlevel = 100


			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(2)

					switch(input("What do you want to buy?")in list("Gi's","Capes","Underclothing","Gloves","Pants","Belts","Cloaks","Never Mind"))

						if("Gi's")
							usr.gi_sales()

						if("Pants")
							usr.pants_sales()

						if("Capes")
							usr.capes_sales()

						if("Belts")
							usr.belts_sales()

						if("Underclothing")
							usr.underclothes_sales()

						if("Gloves")
							usr.gloves_sales()

						if("Cloaks")
							usr.cloak_sales()

						if("Never Mind")
							return


mob
	NPC

		Battle_Shop_Keeper

			name = "{NPC} Battle Items Shop Keeper"
			icon = 'Cloth Shop Keeper.dmi'
			density = 1
			safe = 1

			powerlevel = 100


			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(2)

					switch(input("What do you want to buy?")in list("Henchmen Armor 500,000Z","Saiyan Battle Armor 5,000,000Z","Sword","Never Mind"))

						if("Henchmen Armor 500,000Z")
							if(usr.inven_min < usr.inven_max)
								if(usr.zenni >= 500000)
									usr.zenni -= 500000
									usr.inven_min ++
									usr.contents += new/obj/Equipment/Chest/Hench_Battle_Armor
									usr << "\white Shop Keeper: </font>Thanks for buying!"
									return
								else
									usr << "\white Shop Keeper: </font>You cant afford this!"
							else
								usr << "\white Shop Keeper: </font>You dont have enough room for this!"


						if("Saiyan Battle Armor 5,000,000Z")
							if(usr.inven_min < usr.inven_max)
								if(usr.zenni >= 5000000)
									usr.zenni -= 5000000
									usr.inven_min ++
									usr.contents += new/obj/Equipment/Chest/Saiyan_Battle_Armor
									usr << "\white Shop Keeper: </font>Thanks for buying!"
									return
								else
									usr << "\white Shop Keeper: </font>You cant afford this!"
							else
								usr << "\white Shop Keeper: </font>You dont have enough room for this!"
						if("Sword")
							usr.sword_sales()

						if("Never Mind")
							return