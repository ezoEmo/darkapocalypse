turf
	Passages

		Dr_Geros

			Enter_Cave
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(154,35,3)
					M.density = 1

			Exit_Cave
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(40,62,1)
					M.density = 1



			Enter_Lab
				density = 1

				Enter(mob/PC/M)
					if(M.race == "Android")
						M.loc = locate(158,3,3)
						M.density = 1
					else
						M << "You have no business in here!"
						return

			Exit_Lab
				density = 1

				Enter(mob/PC/M)
					if(M.android_dead)
						M << "Your circuits are currently going through repairs."
						return
					M.loc = locate(158,48,3)
					M.density = 1