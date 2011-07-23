turf
	Passages

		The_Lookout

			Enter
				density = 1

				Enter(mob/PC)
					usr.loc = locate(234,3,3)
					usr.density = 1

			Exit
				density = 1

				Enter(mob/PC)
					usr.loc = locate(191,247,1)
					usr.density = 1

		Korrins

			Enter
				density = 1

				Enter(mob/PC)
					usr.loc=locate(234,152,3)
					usr.density = 1

			Exit
				density = 1

				Enter(mob/PC)
					usr.loc=locate(234,144,3)
					usr.density = 1

		HBTC

			Enter
				Enter(mob/PC/M as mob)
					if(M.level >= 175)
						if(M.HBTC < 2)
							M.loc = locate(115,246,4)
							M.HBTC ++
							M.it_blocked = 1
							M.it_lock = 1
						else
							usr << "Your body cannot handle anymore training in the HBTC!"
							return
					else
						usr << "You don't feel strong enough yet...(Level 175)"

			Exit
				Enter(mob/PC/M as mob)
					M.loc = locate(234,243,3)
					M.it_blocked = 0
					M.it_lock = 0