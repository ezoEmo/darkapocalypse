mob/var/regen_dead = 0
mob/var/regenerating = 0

obj/Techniques/Majin/Regenerate

	verb/Regenerate()
		set category = "Techniques"

		if(usr.dead)
			usr << "Your body was completely destroyed. You cannot regenerate it!"
			return

		if(usr.regenerating)
			return

		if(usr.regen_dead)
			spawn() usr.Majin_Regenerate()
			usr.overlays -= usr.halo
		else
			usr << "You are not dead, there is no reason to regenerate!"
			return

		usr.afk_time = 0

mob/proc/Majin_Regenerate()
	var/healing = src.powerlevel_max/7

	if(src.powerlevel >= src.powerlevel_max)
		src << "<font size = -1><B>You feel totally Regenerated"
		src.powerlevel = src.powerlevel_max
		src.ki = src.ki_max
		src.doing = 0
		src.frozen = 0
		src.regenerating = 0
		src.icon_state = ""
		src.buku = 0
		src.regen_dead = 0
		src.kaioken = 0
		src.it_lock = 0
		src.Power_Redefine()
		src.ki_lock = 0
		src.buku_lock = 0
		src.attack_lock = 0
		return
	else
		src.frozen = 1
		src.doing = 1
		src.regenerating = 1
		src.powerlevel += healing
		usr.icon_state = "regenerate"
		spawn(20) src.Majin_Regenerate()
		return