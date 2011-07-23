mob/var/not_following = 0
mob/Move()//Move proc.. it's absolutely delectable
	if(src.frozen)//they can't move if they're locked
		return
	else
		..()
	if(src.client)
		for(var/mob/Monster/Cell_Jr/B in world)
			if(B.owner == src)
				if(B.not_following)
					return
				else
					if(B.frozen||B.speeding)
						return
					else
						walk_towards(B,src)
mob
	Monster

		Cell_Jr

			icon = 'Cell Jr.dmi'
			density = 1
			dead = 0
			safe = 0

			powerlevel = 0
			powerlevel_max = 1

			ki = 0
			ki_max = 1

			speed = 1

			strength = 0
			defence = 0

			critical = 0

			karma = "Evil"
			race = "Bio Android"

			level = 0

			KO = 0

			zenni = 500

			frozen = 0

			cooldown = 0

			pk = 1


			var/mob/PC/P  //set a new var, the path is /mob/PC, and we will name it for easier typing P.

			New()  //This is called when the atom enters the world
				. = ..()

			Bump(mob/M)  //Override this to tell what it does
				if(istype(M,/mob/PC))
					if(src.attacking == M)
						Attack2(M)          //Attack it with a proc that is defined below.

			verb/Toggle_Following()
				set category = null
				set src in oview(1)
				if(src.not_following)
					usr << "This Cell Jr is now following you."
					src.not_following = 0
					src.frozen = 0
				else
					usr << "This Cell Jr is no longer following you"
					src.not_following = 1
					src.frozen = 1

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