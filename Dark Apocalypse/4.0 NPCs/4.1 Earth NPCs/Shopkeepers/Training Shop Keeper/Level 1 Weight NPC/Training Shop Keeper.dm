mob/var/threaten_training = ""

mob
	NPC

		Training_Shop_Keeper

			name = "{NPC} Training Items Shop Keeper"
			icon = 'Training Item Shop Keeper.dmi'
			density = 1
			safe = 1

			powerlevel = 100

			New()
				src.CreateName()

			verb
				Talk()
					set category = null
					set src in oview(2)

					switch(input("What do you want to browse?")in list("Weighted Clothing","Never Mind"))

						if("Weighted Clothing")
							switch(input("What do you want to buy?")in list("Ankle Weights","Wrist Weights","Weighted Cape","Weighted Gi","Weighted Turben (Namek Only)","Never Mind"))

								if("Never Mind")
									return

								if("Ankle Weights")
									usr.ankle_sales()
									return

								if("Wrist Weights")
									usr.wrist_sales()
									return

								if("Weighted Cape")
									usr.wcape_sales()
									return

								if("Weighted Gi")
									usr.wgi_sales()
									return

								if("Weighted Turben (Namek Only)")
									usr.wturben_sales()
									return

						if("Never Mind")
							return

