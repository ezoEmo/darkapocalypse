mob/var/regen = 0

obj/Techniques/Regenerate
	name = "Regenerate"
	verb/Regenerate()
		set category = "Techniques"
		set src in usr
		if(usr.regenerating)
			usr << "You must wait before using this technique again."
			return
		if(usr.regen)
			usr << "You stop regenerateing"
			usr.regenerating = 1
			usr.regen = 0
			spawn(50) usr.regenerating = 0
			return
		else
			if(!usr.regen)
				usr << "You allow your body to regenerate"
				usr.regen = 1
				spawn(30) usr.Regenerate()
				return

		usr.afk_time = 0

mob
	proc
		Regenerate()
			set background = 1
			sleep(30)
			if(!src.regen)
				return
			else
				if(src.powerlevel >= src.powerlevel_max)
					src.powerlevel = src.powerlevel_max
					src << "Your body is fully regenerated"
					src.regen = 0
					spawn() src.Regenerate()
					return
				else
					src.powerlevel += round(src.powerlevel_max / 10)
					spawn(60) src.Regenerate()
					return