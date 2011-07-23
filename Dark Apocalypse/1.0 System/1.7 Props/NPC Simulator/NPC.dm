mob
	Monster

		Simulator_NPC

			name = "{NPC} Simulator Fighter"
			density = 1
			dead = 0
			safe = 0

			powerlevel = 750
			powerlevel_max = 750

			ki = 0
			ki_max = 0

			speed = 5

			strength = 50
			defence = 15

			critical = 2

			race = "AI"

			level = 15

			KO = 0

			zenni = 20

			frozen = 0

			cooldown = 0

			pk = 1

			exp = 100
			tnl = 100

			var/mob/PC/P

			New()
				. = ..()
				src.CreateName()
				spawn()
					Wander()

			proc/Wander()
				while(src)
					var/Found = FALSE
					var/powering_up = 0

					for(P in oview(6))
						if(src.powerlevel < src.powerlevel_max * 0.10 && powering_up < 3)
							powering_up ++
							step_away(src,P)
							src.powering = 1
							src.doing = 1
							src.icon_state = "enrage"
							src.underlays += src.aura
							src.Powering_PL()
						else
							if(src.attacker == P.name)
								step_towards(src,P)
								Found = TRUE
								break

					if(Found != TRUE)
						sleep(10)
					sleep(5)

			Bump(mob/M)
				if(istype(M,/mob/PC))
					if(src.attacker == M.name)
						Attack2(M)

			proc/Attack2(mob/M)

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
				if(M == src)
					src << "You cannot attack yourself!"
					return
				if(M.safe)
					src << "A force stops you from attacking [M]!"
					return
				if(M.dead && M.race != "Majin")
					src << "They are dead, you cannot attack them!"
					return

				// -- NPC vs Player

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