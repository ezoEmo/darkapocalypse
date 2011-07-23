obj/Equipment/Buff_Items

	EXP_Shard
		name = "Experience Shard"
		icon = 'Experience Shard.dmi'
		density = 0

		value = 2500
		equiped = 0

		condition = 1
		condition_max = 1

		cooldown = 0

		Click()
			if(src in usr:contents)
				if(src.cooldown > 0)
					usr << "You are not ready to use the Experience Shard yet! ([src.cooldown / 10] Seconds)"
					return
				if("exp_buff" in usr.buffs)
					usr << "You already have that Buff!"
					return
				if(usr.active_buffs >= 3)
					usr << "You have the Maximum ammount of Buffs already!"
					return
				else
					if("minor_exp_buff" in usr.buffs)
						usr.buffs -= "minor_exp_buff"
					usr << "You have activated your <I>Experience Shard (+25% EXP)</I>"
					usr.buffs += "exp_buff"
					usr.buff_time = 18000
					usr.active_buffs ++
					src.cooldown = 36000
					src.BUFF_COOLDOWN()
					if(!usr.buff_time)
						usr.BUFF_TIMER()
					return

	Minor_EXP_Shard
		name = "Minor Experience Shard"
		icon = 'Experience Shard.dmi'
		density = 0

		value = 2500
		equiped = 0

		condition = 1
		condition_max = 1

		cooldown = 0

		Click()
			if(src in usr:contents)
				if(src.cooldown > 0)
					usr << "You are not ready to use the Experience Shard yet! ([src.cooldown] Seconds)"
					return
				if("minor_exp_buff" in usr.buffs)
					usr << "You already have that Buff!"
					return
				if("exp_buff" in usr.buffs)
					usr << "You already have a more Powerful Version of this Buff!"
					return
				if(usr.active_buffs >= 3)
					usr << "You have the Maximum ammount of Buffs already!"
					return
				else
					usr << "You have activated your <I>Minor Experience Shard (+5% EXP)</I>"
					usr.buffs += "minor_exp_buff"
					usr.buff_time = 18000
					usr.active_buffs ++
					src.cooldown = 36000
					src.BUFF_COOLDOWN()
					if(!usr.buff_time)
						usr.BUFF_TIMER()
					return