mob/var/saved_def = 0

obj/Equipment/Buff_Items

	DEF_Shard
		name = "Defence Shard"
		icon = 'Defence Shard.dmi'
		density = 0

		value = 2500
		equiped = 0

		condition = 1
		condition_max = 1

		cooldown = 0

		Click()
			if(src in usr:contents)
				if(src.cooldown > 0)
					usr << "You are not ready to use the Defence Shard yet! ([(src.cooldown) / 10] Seconds)"
					return
				if("def_buff" in usr.buffs)
					usr << "You already have that Buff!"
					return
				if(usr.active_buffs >= 3)
					usr << "You have the Maximum ammount of Buffs already!"
					return
				else
					usr << "You have activated your <I>Defence Shard (+5% Maximum Defence)</I>"
					usr.buffs += "def_buff"
					usr.saved_def = usr.defence_max
					usr.defence_max += usr.defence_max * 0.05
					usr.buff_time = 18000
					usr.active_buffs ++
					src.cooldown = 36000
					src.BUFF_COOLDOWN()
					if(!usr.buff_time)
						usr.BUFF_TIMER()
					return