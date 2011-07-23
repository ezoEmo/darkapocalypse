mob
	Monster

		Clone_Simulator_NPC

			name = "{NPC} Clone Simulator Fighter"
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
							src.frozen = 1
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
						if(P in oview(6))
							if(P.name == src.attacker)
								flick("IT",src)
								src.loc = locate(P.x,P.y-1)
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
					if(M.form_1 || M.form_2 || M.form_3 || M.form_4 || M.form_5)
						if(M.race == "Saiyan" && M.form_1)
							src.Saiyan_Trans()
						if(src.race == "Half Saiyan" && M.form_1)
							src.Half_Saiyan_Trans()
						if(src.race == "Changling" && M.form_1)
							src.Changling_Trans()
						if(src.race == "Human" && M.form_1)
							src.Human_Trans()
						if(src.race == "Tuffle" && M.form_2)
							src.Tuffle_Trans()
						if(src.race == "Bio-Android" && M.form_3)
							src.Bio_Trans()

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

