mob
	proc
		Gravity_Strain()
			if(src.grav != 0)
				var/success = rand(1,6)
				var/expgain=grav
				if(race=="Saiyan")expgain*=5.43
				if(race=="Changling")expgain*=5.43
				if(race=="Majin")expgain*=5.43
				if(race=="Namek")expgain*=5.43
				if(race=="Human")expgain*=5.43
				if(race=="Half Saiyan")expgain*=5.43
				if(race=="Android")expgain*=5.43
				if(race=="Bio-Android")expgain*=5.43
				if(race=="Demon")expgain*=5.43
				if(race=="Tuffle")expgain*=5.43

				if(prob(5))
					src.fatigue += rand(2,3)
				if(success == 1 || success == 2  || success == 5)
					src << "You feel the gravity pull down on you."
					src.powerlevel -= src.grav * (rand(100,250))
				if(success == 3)
					src << "You feel yourself getting use to the gravity."
					src.powerlevel -= src.grav * (rand(20,70))
				if(success == 4 || success == 6)
					src << "You feel the full force of the gravity"
					src.powerlevel -= src.grav * (rand(200,500))
				src.GRAVITYDeath()
				if(src.powerlevel <= 0)
					src.GRAVITYDeath()
					src.grav = 0
				if(src.powerlevel >= 1)
					exp+=expgain
					src.Level_Up()

				spawn(40)
					if(src.grav == 0)
						src.powerlevel += 0
					else
						src.Gravity_Strain()
/*
				if(success == 3)
					src << "You feel yourself getting use to the gravity."
					src.powerlevel -= src.grav * (rand(1,5))
					src.Gravity_Die()
					if(src.powerlevel <= 0)
						src.Gravity_Die()
						src.grav = 0
					if(src.powerlevel >= 1)
						src.exp += round(src.grav)
					spawn(40)
						if(src.grav == 0)
							src.powerlevel += 0
						else
							src.Gravity_Strain()

				if(success == 4 || success == 6)
					src << "You feel the full force of the gravity"
					src.powerlevel -= src.grav * (rand(5,12))
					src.Gravity_Die()
					if(src.powerlevel <= 0)
						src.Gravity_Die()
						src.grav = 0
					if(src.powerlevel >= 1)
						src.exp += round(src.grav)
						src.Level()
					spawn(40)
						if(src.grav == 0)
							src.powerlevel += 0
						else
							src.Gravity_Strain()

				else
					return
				src.exp += src.grav
			else
				return
	*/