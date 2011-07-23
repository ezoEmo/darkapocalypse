mob/var/ki_shield = 0
mob/var/ki_shield_strength = 0
mob/var/ki_shield_on = 'Ki Shield.dmi'

mob/learn
	verb/Ki_Shield()
		set category = "Techniques"
		var/ki_cost = round(src.ki_max * 0.08)

		if(src.monkey)
			src << "Your body is under too much stress!"
			return

		if(src.doing)
			src << "You are already doing something!"
			return

		if(src.buku)
			return

		if(src.dead)
			return

		if(src.ki_lock)
			src << "Cannot use this Technique at his time"
			return

		if(src.ki < ki_cost)
			src << "You do not have enough Ki to sustain the Ki Shield"
			return

		if(!src.ki_shield)
			src << "You create a Shield of Ki around your Body"
			src.overlays += src.ki_shield_on
			src.ki_shield = 1
			src.ki_shield_strength = round(src.ki_max * 0.25)
			spawn() src.Ki_Cost()
		else
			src << "You stop using your Ki as a Shield"
			src.overlays -= src.ki_shield_on
			src.ki_shield = 0
			src.ki_shield_strength = 0
		src.afk_time = 0

mob
	proc/Ki_Cost()
		set background = 1
		var/ki_cost = round(src.ki_max * 0.08)

		if(ki_cost <= 0)
			ki_cost = 1

		if(src.ki_shield_strength <= 0)
			src.ki_shield_strength = 0

		if(src.ki_shield)
			if(src.ki_shield_strength >= 1)
				if(src.ki >= ki_cost)
					src.ki -= ki_cost
					sleep(50)
					src.Ki_Cost()
				else
					src << "You do not have enough Ki to sustain the Ki Shield"
					src.overlays -= src.ki_shield_on
					src.ki_shield = 0
					src.ki_shield_strength = 0
					return
			else
				src << "Your Ki Shield has broken!"
				src.overlays -= src.ki_shield_on
				src.ki_shield = 0
				src.ki_shield_strength = 0
				return
		else
			return