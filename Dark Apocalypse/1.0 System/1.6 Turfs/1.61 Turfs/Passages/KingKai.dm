turf
	Passages

		King_Kai_Training

			Enter
				density = 1

				Enter(mob/PC/M)
					if(M.level <500)
						M.loc = locate(78,158,3)
						M.density = 1
						M.buku_lock = 1
						M.it_lock = 1
						M.ki_lock = 1
					else
						M<<"You can not enter this room anymore."
			Exit
				density = 1

				Enter(mob/PC/M)
					M.loc = locate(102,96,3)
					M.density = 1
					M.buku_lock = 0
					M.ki_lock = 0
					M.it_lock = 0
					M.grav = 0
					M.grav_on = 0
turf
	Passages

		Capsule_Corp_Future

			Enter
				density = 1
				Enter(mob/PC/M)
					if(M.trunks_quest_complete)
						M.loc = locate(125,48,3)
					else
						M << "Access Denied"


			Exit
				density = 1

				Enter(mob/PC)
					usr.loc = locate(75,181,6)
					usr.density = 1
