mob/var/going_boom = 0
mob/learn
	verb
		Self_Destruct()
			set category = "Techniques"
			var/damage = src.powerlevel * 100

			if(src.doing)
				return

			if(src.powerlevel_max < 100)
				src << "Your body isn't strong enough to sustain anymore damage!"
				return

			if(src.dead)
				return
			if(src.safe)
				src << "You are currently safe and cannot attack."
				return


			if(!src.pk)
				src << "You are not a Combatant!"
				return

			for(var/turf/Floors/Safe_Zone/S in view(6))
				if(S in oview(6))
					usr << "You are in a Safe Zone!"
					return

			if(src.race == "Android")
				damage = src.powerlevel * 500

			switch(alert({"Do you wish to use your Self Destruct Technique?

NOTE: Using this will Damage your Circuitry (Maximum Powerlevel Down by 8%)"},"Self Destruct","Yes","No"))
				if("Yes")
					if(!usr.going_boom)
						if(!usr.dead)
							usr.going_boom = 1
							view(12) << "<font color = white>[src.name]:</font> Self Destruct Activated in: 5..."
							sleep(10)
							view(12) << "<font color = white>[src.name]:</font> Self Destruct Activated in: 4..."
							sleep(10)
							view(12) << "<font color = white>[src.name]:</font> Self Destruct Activated in: 3..."
							sleep(10)
							view(12) << "<font color = white>[src.name]:</font> Self Destruct Activated in: 2..."
							sleep(10)
							view(12) << "<font color = white>[src.name]:</font> Self Destruct Activated in: 1..."
							usr.going_boom = 0
							usr.SELFDESTRUCTDEATH()
							for(var/mob/M in oview(8))
								Explode(new /Effect/BasicBoom(src.loc,1,5))
								if(!M.safe && M.pk)
									M.powerlevel -= damage
									M.DeathCheck(src)
									return

				if("No")
					return

mob/proc
	SELFDESTRUCTDEATH()
		world << "<FONT color = red>Battle Information:<FONT color = White> [src] has blown themselves up!"
		src.absorbing = 0
		src.rest = 0
		src.frozen = 0
		src.boxing = 0
		src.doing = 0
		src.icon_state = ""
		src.density = 1
		src.loc = locate(162,7,3)
		src.attack_lock = 0
		src.ki_lock = 0
		src.dead = 0
		src.powerlevel = 50
		src.powerlevel_max -= (src.powerlevel_max * 0.8)
		src.KO = 0
		src.rage = 0
		src.sight &= ~BLIND
		src.deaths += 1
		src << "You feel minor damage to your Circuitry"
		src.android_dead = 1
		spawn(300) src.android_dead = 0
