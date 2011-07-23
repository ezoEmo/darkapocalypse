mob/var/threaten_training_2 = ""

mob
	NPC

		Advanced_Training_Shop_Keeper

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
							switch(input("What do you want to buy?")in list("Advanced Ankle Weights","Advanced Wrist Weights","Advanced Weighted Cape","Advanced Weighted Gi","Advanced Weighted Turben (Namek Only)","Advanced Weighted Arm Weights","Advanced Weighted Leg Weights","Never Mind"))

								if("Never Mind")
									return

								if("Advanced Ankle Weights")
									usr.ankle_sales2()
									return

								if("Advanced Wrist Weights")
									usr.wrist_sales2()
									return

								if("Advanced Weighted Cape")
									usr.wcape_sales2()
									return

								if("Advanced Weighted Gi")
									usr.wgi_sales2()
									return

								if("Advanced Weighted Turben (Namek Only)")
									usr.wturben_sales2()
									return

								if("Advanced Weighted Arm Weights")
									usr.warm_sales()
									return

								if("Advanced Weighted Leg Weights")
									usr.wleg_sales()
									return

						if("Never Mind")
							return

