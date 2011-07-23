mob/var/ball_locked = 0
mob/learn

	verb/Trap_Ball(mob/M in oview(6))
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

			if(src.ball_locked)
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

			if(M.ball_wrapped == 1)
				usr << "<font size=1><B>[M.name] is already bound by you!"
				return

			if(usr.ki_lock == 1)
				usr << "<font size=1><B>Some unknown force contains your Ki!"
				return

			if(M.monkey == 1)
				usr << "<font size=1><B>[M.name]'s huge body has instantly broken the bind!"
				return


			if(usr.ki >= ki_cost)
				usr.ball_locked = 1
				usr.doing = 1
				usr.ki -= ki_cost
				usr.overlays += usr.trap_ball_charge
				sleep(6)
				usr.overlays -= usr.trap_ball_charge
				usr.icon_state = "attack"
				sleep(5)
				usr.icon_state = ""
				M.overlays += M.trap_ball

				M.frozen = 1
				M.attack_lock = 1
				M.ki_lock = 1
				M.ball_wrapped = 1
				view(6) << "<font size=1><B>[M.name] has been binded up by [usr.name]!"
				usr.ball_lock()
				M.ball_unlock()


			else
				return





mob/proc/ball_lock()
	src.doing = 0
	spawn(600)
	src.ball_locked = 0

mob/proc/ball_unlock()
	sleep(50)
	view(6) << "<font size=1><B>[src.name] has broken the binding which contains him!"
	src.overlays -= trap_ball
	src.frozen = 0
	src.attack_lock = 0
	src.buku = 0
	src.ki_lock = 0
	src.ball_wrapped = 0