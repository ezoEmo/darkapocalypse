mob/var/safe = 0
mob/var/attacking

mob/PC
	verb
		Attack(mob/M in get_step(usr,usr.dir))
			set category = "Combat"
			if(!M)return
			var/attack_power = usr.strength + round( ((usr.unarmed / usr.unarmed_max) * usr.strength)/2 )
			var/defence_power = M.defence + round( ((usr.unarmed / usr.unarmed_max) * M.defence)/2 )
			var/damage = attack_power - defence_power
			var/combat_exp_bonus = usr.level
			var/armor_damage = (500 + usr.level/3)

			if(combat_exp_bonus <= 0)
				combat_exp_bonus = 0

			if(damage <= 0)
				damage = 0

			if(src.dead)
				src << "You are dead..."
				return

			if(M.safe)
				return

			if(M.dead)
				src << "[M] is dead..."
				return

			if(usr.wrapped)
				if(prob(40))
					usr << "<font color=fuchsia>Your arm gets stuck in the goo!"
					return

			var/attack_text = rand(1,3)
			var/text = ""

			if(attack_text)
				text = "\red [usr] Punches you in the Face"
			if(attack_text == 2)
				text = "\red [usr] Kicks you in the Chest"
			if(attack_text == 3)
				text = "\red [usr] Punches you in the Stomach"

			if(!M)
				return

			if(usr.doing || usr.KO)
				return


			if(M.KO)
				usr << "They are already Knocked Out. Finish them!"
				return

			if(usr.cooldown)
				return

			if(usr.attack_lock)
				return

			if(M.type == /mob/PC)

				for(var/turf/Floors/Safe_Zone/S in view(6))
					if(S in view(8))
						usr << "They are in a Safe Zone!"
						return

				if(M.safe)
					usr << "A force stops you from attacking [M]!"
					return

				if(usr.safe)
					usr << "You are currently Safe and cannot Attack!"
					return

				if(src.dead)
					src << "You are dead..."
					return

				if(M.dead)
					src << "[M] is dead..."
					return

				if(!M.pk)
					usr << "They are not a Combatant!"
					return

				if(!usr.pk)
					usr << "You are not a Combatant!"
					return

				if(M.dead && M.race != "Majin")
					usr << "You cannot attack [M] because they are Dead!"
					return
				for(var/mob/Monster/Cell_Jr/C in world)
					if(C.owner == usr)
						C.attacking = M
						walk_towards(C,M)

				for(var/mob/Monster/Split_form/A in world)
					if(A.maker == usr)
						A.attacking = M
						walk_towards(A,M)

				if(prob(M.dodge/3))
					flick("attack",usr)
					flick("IT",M)
					M << "\green You kige to Dodge [usr]'s attack"
					usr << "\green [M] kiges to Dodge your attack"
					usr.cooldown = 1
					spawn(usr.speed * 2) usr.cooldown = 0
					return
				else
					if(prob(M.block/2))
						flick("attack",usr)
						M << "\green You kige to Block some of [usr]'s attack"
						usr << "\green [M] kiges to Block some of your attack"
						M.powerlevel -= damage / 4
						M.KO()
						usr.exp += combat_exp_bonus
						spawn() usr.Level_Up()
						usr.cooldown = 1
						spawn(usr.speed * 2) usr.cooldown = 0
						return
					else
						if(prob(M.counter/5))
							flick("attack",M)
							M << "\green You kige to Counter [usr]'s attack"
							usr << "\green [M] kiges to Counter your attack and attacks back"

							usr.powerlevel -= round(M.strength + ((M.unarmed / M.unarmed_max) * M.strength) + M.powerlevel_max / 100)


							spawn() usr.KO()
							M.exp += combat_exp_bonus
							M.unarmed_exp += rand(5,20)
							spawn() M.UA_Level_Up()
							spawn() M.Level_Up()
							usr.cooldown = 1
							spawn(usr.speed * 2) usr.cooldown = 0
							return
						else
							if(prob(usr.critical/3))
								flick("attack",usr)
								M << "[text], which sends you flying back"
								usr << "\red You hit [M] with a Critical Hit, sending them flying back"


								var/FallDir = get_dir(usr,M)
								usr.dir = FallDir
								step(M,FallDir)
								switch(FallDir)
									if(NORTH)M.dir = SOUTH
									if(NORTHWEST)M.dir = SOUTHEAST
									if(WEST)M.dir = EAST
									if(SOUTHWEST)M.dir = NORTHEAST
									if(SOUTH)M.dir = NORTH
									if(SOUTHEAST)M.dir = NORTHWEST
									if(EAST)M.dir = WEST
									if(NORTHEAST)M.dir = SOUTHWEST
								if(M.doing)

								else
									M.frozen = 1
									M.doing = 1
									spawn(10)
										M.frozen = 0
										M.doing = 0
								if(M.saiyan_eq)
									if(prob(65))
										for(var/obj/Equipment/Chest/Saiyan_Battle_Armor/R in M.contents)
											R.condition -= armor_damage
											if(R.condition <= 0)
												M << "\red your armor has been destroyed!"
												M.chest = "EMPTY"
												M.saiyan_eq =0
												M.overlays -= saiyan_armor
												del(R)
										M << "\white Your armor takes some of the damage"
										damage *= 2
										damage -= (50000 + M.defence_max/2)
										if(damage <= 0)
											damage = 0
										M.powerlevel -= damage
								else
									if(M.hench_eq)
										if(prob(65))
											for(var/obj/Equipment/Chest/Hench_Battle_Armor/V in M.contents)
												V.condition -= armor_damage
												if(V.condition <= 0)
													M << "\red your armor has been destroyed!"
													M.chest = "EMPTY"
													M.hench_eq =0
													del(V)
											M << "\white Your armor takes some of the damage"
											damage *= 2
											damage -= (50000 + M.defence_max/2)
											if(damage <= 0)
												damage = 0
											M.powerlevel -= damage
									else
										M.powerlevel -= (damage * 2)
								spawn() M.KO()
								usr.exp += combat_exp_bonus
								usr.unarmed_exp += rand(5,20)
								spawn() usr.UA_Level_Up()
								spawn() usr.Level_Up()
								usr.cooldown = 1
								spawn(usr.speed * 2) usr.cooldown = 0
								return
							else
								flick("attack",usr)
								M << "[text]"
								usr << "\red You hit [M]"



								if(M.saiyan_eq)
									if(prob(65))
										for(var/obj/Equipment/Chest/Saiyan_Battle_Armor/R in M.contents)
											R.condition -= armor_damage
											if(R.condition <= 0)
												M << "\red your armor has been destroyed!"
												M.chest = "EMPTY"
												M.saiyan_eq =0
												M.overlays -= saiyan_armor
										M << "\white Your armor takes some of the damage"
										damage -= (50000 + M.defence_max/2)
										if(damage <= 0)
											damage = 0
										M.powerlevel -= damage
								else
									if(M.hench_eq)
										if(prob(65))
											for(var/obj/Equipment/Chest/Hench_Battle_Armor/V in M.contents)
												V.condition -= armor_damage
												if(V.condition <= 0)
													M << "\red your armor has been destroyed!"
													M.chest = "EMPTY"
													M.hench_eq =0
													M.overlays -= hench_armor
													del(V)
											M << "\white Your armor takes some of the damage"
											damage -= (10000 + M.defence_max/2)
											if(damage <= 0)
												damage = 0
											M.powerlevel -= damage
									else
										M.powerlevel -= damage

								spawn() M.KO()
								usr.exp += combat_exp_bonus
								usr.unarmed_exp += rand(5,20)
								spawn() usr.UA_Level_Up()
								spawn() usr.Level_Up()
								usr.cooldown = 1
								spawn(usr.speed * 2) usr.cooldown = 0
								return
			else
				if(prob(M.dodge/3))
					flick("attack",usr)
					flick("IT",M)
					M.attacker = usr.name
					usr << "\green [M] kiges to Dodge your attack"
					usr.exp += combat_exp_bonus
					spawn() usr.Level_Up()
					usr.cooldown = 1
					spawn(usr.speed * 2) usr.cooldown = 0
					return
				else
					if(prob(M.block/2))
						flick("attack",usr)
						usr << "\green [M] kige to Block some of your attack"
						M.attacker = usr.name
						M.powerlevel -= damage / 4
						spawn() M.KO()
						usr.exp += combat_exp_bonus
						spawn() usr.Level_Up()
						usr.cooldown = 1
						spawn(usr.speed * 2) usr.cooldown = 0
						return
					else
						if(prob(M.counter/4))
							flick("attack",M)
							usr << "\green [M] kiges to Counter your attack and attacks back"
							usr.powerlevel -= round(M.strength + ((M.unarmed / M.unarmed_max) * M.strength) + M.powerlevel_max / 100)
							spawn() usr.KO()
							usr.cooldown = 1
							spawn(usr.speed * 2) usr.cooldown = 0
							return
						else
							if(prob(usr.critical/3))
								flick("attack",usr)
								M << "[text]"
								usr << "\red You hit [M] with a Critical Hit"
								M.attacker = usr.name
								M.powerlevel -= (damage * 1.5)
								spawn() M.KO()
								usr.exp += combat_exp_bonus
								usr.unarmed_exp += rand(5,20)
								spawn() usr.UA_Level_Up()
								spawn() usr.Level_Up()
								usr.cooldown = 1
								spawn(usr.speed * 2) usr.cooldown = 0
								return
							else
								flick("attack",usr)
								M << "[text]"
								usr << "\red You hit [M]"
								M.attacker = usr.name
								M.powerlevel -= damage
								spawn() M.KO()
								usr.exp += combat_exp_bonus
								usr.unarmed_exp += rand(5,20)
								spawn() usr.UA_Level_Up()
								spawn() usr.Level_Up()
								usr.cooldown = 1
								spawn(usr.speed * 2) usr.cooldown = 0
								return
			usr.afk_time = 0