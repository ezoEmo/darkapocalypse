mob/var/donut_locked = 0
mob/learn

	verb/Galactic_Donut(mob/M in oview(6))
		set category = "Techniques"
		var/ki_cost = round(src.ki_max * 0.32)

		if(usr.buku == 1)
			return
		else

			if(usr.monkey == 1)
				return

			if(src.doing)
				src << "You are already doing something!"
				return

			if(M.safe)
				src << "A force stops you from attacking [M]"
				return

			if(src.buku)
				return

			if(src.safe)
				src << "You are currently safe and cannot attack."
				return

			if(M.buku)
				return

			if(src.wrapped)
				src << "Your ki has been contained in the goo!"
				return

			if(src.dead)
				return

			if(src.donut_locked)
				src << "You must wait before using this technique again!"
				return

			if(src.ki_lock)
				src << "Cannot use this Technique at his time"
				return

			if(!M.pk)
				usr << "[M] Must be a combatant to engage in combat with players!"
				return


			if(!src.pk)
				usr << "You are not a Combatant!"

			if(M.donut_wrapped == 1)
				usr << "<font size=1><B>[M.name] is already bound by you!"
				return

			if(usr.ki_lock == 1)
				usr << "<font size=1><B>Some unknown force contains your Ki!"
				return

			if(M.monkey == 1)
				usr << "<font size=1><B>[M.name]'s huge body has instantly broken the bind!"
				return


			if(usr.ki >= ki_cost)
				usr.donut_locked = 1
				usr.doing = 1
				usr.ki -= ki_cost
				usr.overlays += usr.cosmic_donut_charge
				sleep(6)
				usr.overlays -= usr.cosmic_donut_charge
				usr.icon_state = "attack"
				sleep(5)
				usr.icon_state = ""
				M.overlays += M.cosmic_donut

				M.frozen = 1
				M.attack_lock = 1
				M.ki_lock = 1
				M.donut_wrapped = 1
				view(6) << "<font size=1><B>[M.name] has been binded up by [usr.name]!"
				usr.donut_lock()
				M.donut_unlock()


			else
				return





mob/proc/donut_lock()
	src.doing = 0
	spawn(600)
	src.donut_locked = 0

mob/proc/donut_unlock()
	sleep(50)
	view(6) << "<font size=1><B>[src.name] has broken the binding which contains him!"
	src.overlays -= cosmic_donut
	src.frozen = 0
	src.attack_lock = 0
	src.buku = 0
	src.ki_lock = 0
	src.donut_wrapped = 0
