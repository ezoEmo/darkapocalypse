mob
	Saga

		Cell_2

			name = "{NPC} Imperfect Cell"
			icon = 'Cell 2.dmi'
			density = 1
			dead = 0
			safe = 0
			it_lock = 1

			powerlevel = 23000000
			powerlevel_max = 23000000

			ki = 43000000
			ki_max = 43000000

			speed = 2.2

			strength = 4270000
			defence = 4270000

			critical = 20

			karma = "Evil"
			race = "Bio Android"

			level = 300

			KO = 0

			zenni = 500

			frozen = 0

			cooldown = 0

			pk = 1

			exp = 28000
			tnl = 28000

			var/mob/PC/P  //set a new var, the path is /mob/PC, and we will name it for easier typing P.
			New()  //This is called when the atom enters the world
				. = ..()
				spawn() //Spawn here to prevent crashing.  If you want it to wait a set amount of time before calling Wander(), then put a number in the middle of the spawn arguments.
					Wander()

			proc/Wander()
				while(src) //While the mob is still here...
					var/Found = FALSE  //False is a predefined variable that means 0.  True means 1.  This is the same as putting var/Found = 0
					for(P in oview(6))  //If there is a PC in the area, as set with the P var above...
						if(prob(10 && src.ki > (round(src.ki_max * 0.25))))
							view(4) << "<font color = white>[src.name]:</font> Lets see how you handle this!"
							Kamehameha_Shoot()
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

				// -- Frieza vs Player

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
							flick("IT",M)
							M.attacker = src.name
							usr << "\green [M] kiges to Dodge your attack"
							usr.cooldown = 1
							spawn(usr.speed * 2) usr.cooldown = 0
							return
						else
							if(prob(M.block))
								usr << "\green [M] kige to Block some of your attack"
								M.attacker = src.name
								M.powerlevel -= damage / 4
								M.DeathCheck(src)
								usr.cooldown = 1
								spawn(usr.speed * 2) usr.cooldown = 0
								return
							else
								if(prob(M.counter))
									usr << "\green [M] kiges to Counter your attack and attacks back"
									usr.powerlevel -= ((damage) + (damage *0.30))
									usr.DeathCheck(M)
									usr.cooldown = 1
									spawn(usr.speed * 2) usr.cooldown = 0
									return
								else
									if(prob(usr.critical))
										M << "[text]"
										usr << "\red You hit [M] with a Critical Hit"
										M.attacker = src.name
										M.powerlevel -= (damage * 2)
										M.DeathCheck(src)
										usr.cooldown = 1
										spawn(usr.speed * 2) usr.cooldown = 0
										return
									else
										M << "[text]"
										usr << "\red You hit [M]"
										M.attacker = src.name
										M.powerlevel -= damage
										M.DeathCheck(src)
										usr.cooldown = 1
										spawn(usr.speed * 2) usr.cooldown = 0
										return