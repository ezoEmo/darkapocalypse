mob/var/HBTC = 0

turf/Gravity/
	HBTC_Gravity
		Enter(mob/PC/M)

			M.Level_Up()

			if(usr.powerlevel_max >= 5000000)
				if(prob(10))
					M << "You struggle a bit because of the gravity..."
					M.powerlevel -= (rand(1,10000))
				if(prob(7))
					M << "You train here without a problem"
				M.exp += rand(60,150)
				M.Tired_KO()
				M.HBTC_DIE()

			if(usr.powerlevel_max >= 1000000 && usr.powerlevel_max <= 5000000)
				if(prob(15))
					M << "You do a high flying kick with little effort."
				if(prob(12))
					M << "You begin to sweat."
					M.fatigue += (rand(2,3))
					M.powerlevel -= (rand(1,7500))
				M.exp += (rand(150,1200))
				M.Tired_KO()
				M.HBTC_DIE()

			if(usr.powerlevel_max < 1000000 && usr.powerlevel_max >= 250000)
				if(prob(9))
					M << "You practice your punches and kicks with no problem"
				if(prob(16))
					M << "You feel strained while training in this room."
					M.powerlevel -= (rand(1,12500))
				M.exp += rand(500,1200)
				M.Tired_KO()
				M.HBTC_DIE()

			if(usr.powerlevel_max > 75000 && usr.powerlevel_max <= 250000)
				if(prob(8))
					M << "You do flying kicks in the air, feeling extremely strained.."
					M.fatigue += (rand(4,6))
					M.powerlevel -= (rand(1,4500))
				if(M.powerlevel > 0)
					M << "You collapse to the floor screaming...."
					M.powerlevel -= (rand(15,22))
					M.exp += rand(320,946)
				else
					M.Tired_KO()
					M.HBTC_DIE()
					M << "The gravity of this room overpowers you and you die."
			return 1


mob/proc/HBTC_DIE()
	if(src.powerlevel <= 0)
		world << "<font color=#FF9900><b>Training Information:</font> \white [src] went Insane in the Hyperbolic Time Chamber!"

		src.Power_Redefine()

		if(src.race == "Human")
			src.Human_Revert()
		if(src.race == "Half Saiyan")
			src.Half_Saiyan_Revert()
		if(src.race == "Changling")
			src.Changling_Revert()
		if(src.race == "Saiyan")
			src.Saiyan_Revert()
		if(usr.race == "Tuffle")
			src.Tuffle_Revert()

		if(src.race == "Majin")
			src.rest = 0
			src.frozen = 0
			src.boxing = 0
			src.doing = 0
			src.icon_state = ""
			src.density = 1
			src.loc = locate(15,1,3)
			src.attack_lock = 0
			src.ki_lock = 0
			src.it_blocked = 0
			src.it_lock = 0
			src.dead = 1
			src.powerlevel = 50
			src.KO = 0
			src.rage = 0
			src.sight &= ~BLIND
			src.overlays += src.halo
			src.deaths += 1
			src << "Your body was completely Crushed!"
		else
			src.rest = 0
			src.frozen = 0
			src.boxing = 0
			src.doing = 0
			src.icon_state = ""
			src.density = 1
			src.loc = locate(15,1,3)
			src.attack_lock = 0
			src.ki_lock = 0
			src.it_blocked = 0
			src.it_lock = 0
			src.dead = 1
			src.powerlevel = 50
			src.KO = 0
			src.rage = 0
			src.sight &= ~BLIND
			src.overlays += src.halo
			src.deaths += 1