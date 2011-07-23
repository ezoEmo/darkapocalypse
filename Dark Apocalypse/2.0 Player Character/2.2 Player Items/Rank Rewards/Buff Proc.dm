mob/var/list/buffs = list()
mob/var/buff_time = 0
mob/var/active_buffs = 0

mob/proc
	BUFF_TIMER()
		if(src.buff_time > 0)
			src.buff_time -= 100
			sleep(100)
			BUFF_TIMER()
		else
			if(src.buff_time <= 0)
				if("exp_buff" in src.buffs)
					src.buffs -= "exp_buff"

				if("minor_exp_buff" in src.buffs)
					src.buffs -= "minor_exp_buff"

				if("pl_buff" in src.buffs)
					src.buffs -= "pl_buff"
					src.powerlevel_max -= usr.saved_pl * 0.15

				if("def_buff" in src.buffs)
					src.buffs -= "def_buff"
					src.defence_max -= usr.saved_def * 0.05

				if("str_buff" in src.buffs)
					src.buffs -= "str_buff"
					src.strength_max -= usr.saved_str * 0.075
				src.active_buffs = 0
				return

	MUTE_TIMER()
		src << "\red you will be unmuted in 3 minutes..."
		src.muted = 1
		spawn(1500)	src.muted = 0
obj/proc
	BUFF_COOLDOWN()
		if(src.cooldown > 0)
			src.cooldown -= 100
			sleep(100)
			BUFF_COOLDOWN()
		else
			if(src.cooldown <= 0)
				src.cooldown = 0
				return