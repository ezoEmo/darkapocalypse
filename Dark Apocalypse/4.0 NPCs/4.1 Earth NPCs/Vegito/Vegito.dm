mob
	Monster

		Vegito

			name = "{NPC} Vegito"
			icon = 'Vegito.dmi'
			density = 1
			dead = 0
			safe = 0

			powerlevel = 60000000
			powerlevel_max = 60000000

			ki = 50000000
			ki_max = 50000000

			speed = 5

			strength = 50000000
			defence = 50000000

			critical = 3

			karma = "Good"
			race = "Saiyan"

			level = 950000000

			KO = 0

			zenni = 15000000000

			frozen = 0

			cooldown = 0

			pk = 1

			exp = 150000
			tnl = 1500000

			var/mob/PC/P  //set a new var, the path is /mob/PC, and we will name it for easier typing P.
			New()  //This is called when the atom enters the world
				. = ..()
				src.CreateName()
				spawn() //Spawn here to prevent crashing.  If you want it to wait a set amount of time before calling Wander(), then put a number in the middle of the spawn arguments.
					Wander()
			proc/Wander()
				while(src) //While the mob is still here...
					var/Found = FALSE  //False is a predefined variable that means 0.  True means 1.  This is the same as putting var/Found = 0
					for(P in oview(6))  //If there is a PC in the area, as set with the P var above...
						step_towards(src,P)  //Step towards the PC
						Found = TRUE
						break  //This makes it so the mob will chase one person, in one turn.  If you didn't have this, the mob will chase every PC he/she sees before each walking delay.
					if(Found != TRUE)  //If Found is not that of TRUE (If the mob was not found)...
						sleep(10)       //Wait one second
					sleep(10) //Dont do anything for 0.5 seconds

			Bump(mob/M)  //Override this to tell what it does
				if(istype(M,/mob/PC))
					Attack2(M)          //Attack it with a proc that is defined below.

			proc/Attack2(mob/M)      //new proc called attack

				var/attack_text = rand(1,3)
				var/text = ""

				if(attack_text)
					text = "\red [usr] Punches you in the Face!"
				if(attack_text == 2)
					text = "\red [usr] Kicks you in the Chest!"
				if(attack_text == 3)
					text = "\red [usr] Punches you in the Stomach!"

				if(!M)
					return
				if(src.attack_lock)
					return
				if(src.buku)
					return
				if(src.cooldown)
					return
				if(M.buku)
					return
				if(M == src)
					src << "You cannot attack yourself!"
					return
				if(M.safe)
					src << "A force stops you from attacking [M]!"
					return
				if(M.dead && M.race != "Majin")
					src << "They are dead, you cannot attack them!"
					return
				if(M.KO)
					src << "Finish them!"
					return

				// -- Brolly vs Player

				var/attack_power = round(src.strength + (src.powerlevel / 100))
				var/defence_power = M.defence
				var/damage = attack_power - defence_power

				if(damage < 1)
					damage = 1

				if(M.type == /mob/PC)
					if(src.cooldown)
						return
					else
						if(prob(M.dodge))
							flick("attack",usr)
							flick("IT",M)
							M.attacker = src.name
							usr << "\green [M] kiges to Dodge your attack"
							usr.cooldown = 1
							spawn(usr.speed * 2) usr.cooldown = 0
							return
						else
							if(prob(M.block))
								flick("attack",usr)
								usr << "\green [M] kige to Block some of your attack"
								M.attacker = src.name
								M.powerlevel -= damage / 4
								M.DeathCheck(src)
								usr.cooldown = 1
								spawn(usr.speed * 2) usr.cooldown = 0
								return
							else
								if(prob(usr.critical))
									flick("attack",usr)
									M << "[text]"
									usr << "\red You hit [M] with a Critical Hit"
									M.attacker = src.name
									M.powerlevel -= (damage * 2)
									M.DeathCheck(src)
									usr.cooldown = 1
									spawn(usr.speed * 2) usr.cooldown = 0
									return
								else
									flick("attack",usr)
									M << "[text]"
									usr << "\red You hit [M]"
									M.attacker = src.name
									M.powerlevel -= damage
									M.DeathCheck(src)
									usr.cooldown = 1
									spawn(usr.speed * 2) usr.cooldown = 0
									return