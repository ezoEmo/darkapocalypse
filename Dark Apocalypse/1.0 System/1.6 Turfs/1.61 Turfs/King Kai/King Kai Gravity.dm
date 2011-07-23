turf/Planet_Gravitys

	King_Kai
		Enter(mob/PC/M)

			M.Level_Up()

			if(M.powerlevel_max >= 15000)
				if(prob(10))
					M << "<b>You struggle a bit because of the gravity..."
					M.exp += rand(6,12)
				if(prob(7))
					M << "<b>You walk on this planet without a problem."

			if(M.powerlevel_max >= 5000 && M.powerlevel_max <= 15000)
				if(prob(15))
					M << "<B>You walk through the gravity of this planet without a problem."
				if(prob(5))
					M << "<b>You feel a little strained walking on this planet."
					M.powerlevel -= (rand(2,5))
				M.exp += (rand(12,18))
				M.KO()

			if(M.powerlevel_max < 2500 && M.powerlevel_max >= 50)
				if(prob(7))
					M << "<B>You walk through the gravity of this planet without a problem."
				if(prob(10))
					M << "<b>You feel strained walking on this planet."
					M.powerlevel -= (rand(10,12))
				M.exp += (rand(16,24))
				M.KO()

			if(M.powerlevel_max > 2500 && M.powerlevel_max <= 5000)
				if(prob(5))
					M << "<B>You walk on the planet, feeling strained.."
					M.powerlevel -= (rand(0,3))
				if(prob(5))
					M << "<b>You feel extremely strained walking on this planet."
					M.powerlevel -= (rand(15,22))
				M.exp += (rand(20,30))
				M.KO()
			return 1