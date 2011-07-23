obj/Namek_Corpse
	icon = 'Namekian Warrior.dmi'
	icon_state = "Loot"

	verb
		Loot()
			set src in oview(1)
			set category = null

			if(src.looter == usr.name)
				if(src.contents != null && usr.inven_min < usr.inven_max)
					for(var/obj/O in src.contents)
						usr << "You loot: <I>\blue [O.name]</I>"
					usr.contents += src.contents
					sleep(10)
					del(src)
			else
				usr << "You do not have permission to loot that corpse!"
				return

mob
	Monster

		Namek_Warrior

			name = "{NPC} Namekian Warrior"
			icon = 'Namekian Warrior.dmi'
			density = 1
			dead = 0
			safe = 0

			powerlevel = 75000
			powerlevel_max = 75000

			ki = 0
			ki_max = 0

			speed = 2

			strength = 8500
			defence = 25000

			critical = 15

			karma = "Good"
			race = "Namekian Warrior"

			level = 50

			KO = 0

			zenni = 500

			frozen = 0

			cooldown = 0

			pk = 1

			exp = 1250
			tnl = 1250

			var/mob/PC/P  //set a new var, the path is /mob/PC, and we will name it for easier typing P.
			New()  //This is called when the atom enters the world
				. = ..()
				src.CreateName()
				spawn() //Spawn here to prevent crashing.  If you want it to wait a set amount of time before calling Wander(), then put a number in the middle of the spawn arguments.
					Wander()

			Del()
				if(prob(0.5))
					var/obj/M = new/obj/Namek_Corpse
					M.loc = src.loc
					M.looter = src.killer

					var/obj/Equipment/Chest/Gi/O = new
					var/type = rand(1,4)
					if(type == 1)
						O.name = "Gi of Strength"
						O.icon = 'Gi of Strength.dmi'
						O.gi = 'Gi of Strength.dmi'
						O.str_bonus += 30000
					if(type == 2)
						O.name = "Gi of Defence"
						O.icon = 'Gi of Defence.dmi'
						O.gi = 'Gi of Defence.dmi'
						O.def_bonus += 30000
					if(type == 3)
						O.name = "Gi of Power"
						O.icon = 'Gi of Power.dmi'
						O.gi = 'Gi of Power.dmi'
						O.pl_bonus += 100000
					if(type == 4)
						O.name = "Gi of Ki"
						O.icon = 'Gi of Ki.dmi'
						O.gi = 'Gi of Ki.dmi'
						O.ki_bonus += 100000
					O.has_stats = 1
					M.contents += O
				..()

			proc/Wander()
				while(src) //While the mob is still here...
					var/Found = FALSE  //False is a predefined variable that means 0.  True means 1.  This is the same as putting var/Found = 0
					for(P in oview(6))  //If there is a PC in the area, as set with the P var above...
						if(P.karma == "Evil")
							step_towards(src,P)  //Step towards the PC
							Found = TRUE
							break  //This makes it so the mob will chase one person, in one turn.  If you didn't have this, the mob will chase every PC he/she sees before each walking delay.
					if(Found != TRUE)  //If Found is not that of TRUE (If the mob was not found)...
						sleep(10)       //Wait one second
					sleep(10) //Dont do anything for 0.5 seconds

			Bump(mob/M)  //Override this to tell what it does
				if(istype(M,/mob/PC))
					if(M.karma == "Evil")
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

				// -- Henchman vs Player

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

mob
	NPC
		Dead_Namek
			icon = 'npcs.dmi'
			icon_state = "Dying Namek"
			density = 1
			dead = 1
			safe = 1