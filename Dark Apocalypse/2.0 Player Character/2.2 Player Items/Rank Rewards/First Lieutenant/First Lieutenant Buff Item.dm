mob/var/saved_pl = 0

obj/Equipment/Buff_Items

	PL_Shard
		name = "Power Shard"
		icon = 'Power Shard.dmi'
		density = 0

		value = 2500
		equiped = 0

		condition = 1
		condition_max = 1

		cooldown = 0

		Click()
			if(src in usr:contents)
				if(src.cooldown > 0)
					usr << "You are not ready to use the Power Shard yet! ([src.cooldown / 10] Seconds)"
					return
				if("pl_buff" in usr.buffs)
					usr << "You already have that Buff!"
					return
				if(usr.active_buffs >= 3)
					usr << "You have the Maximum ammount of Buffs already!"
					return
				else
					usr << "You have activated your <I>Power Shard (+15% Maximum Powerlevel)</I>"
					usr.buffs += "pl_buff"
					usr.saved_pl = usr.powerlevel_max
					usr.powerlevel_max += usr.powerlevel_max * 0.15
					usr.buff_time = 18000
					usr.active_buffs ++
					src.cooldown = 54000
					src.BUFF_COOLDOWN()
					if(!usr.buff_time)
						usr.BUFF_TIMER()
					return