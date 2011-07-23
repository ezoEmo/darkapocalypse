mob/var/finish_delay = 0
mob/var/saga_finished = 0

mob/PC/verb/Finish(mob/M in get_step(usr,usr.dir))
	set category = "Combat"
	var/exp_bonus = M.exp

	if(!M)
		return

	if(M.safe)
		src << "A force stops you from attacking [M]!"
		return

	if(src.finish_delay)
		src << "You must wait a moment before trying to Finish Someone!"
		return

	if(M.KO)
		if(istype(M,/mob/Saga))
			if(M.saga_finished)
				usr << "That saga has been defeated already!"
				return

			M.saga_finished = 1
			fatename = M.name
//			spawn() src.Saga_Decision()

		src.finish_delay = 1
		spawn(15) src.finish_delay = 0
		if(istype(M,/mob/PC))
			M.exp -= exp_bonus
			src.exp += exp_bonus
			src << "\white Exp + [exp_bonus]"
		src.Level_Up()
		M.DeathCheck(src)
		return
	else
		src.finish_delay = 1
		spawn(15) src.finish_delay = 0
		src << "They are not knocked out yet!"
		return

	src.afk_time = 0



