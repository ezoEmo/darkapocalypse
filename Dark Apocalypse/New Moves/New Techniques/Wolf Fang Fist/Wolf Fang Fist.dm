mob/var/learn_wolf_fang_fist = 0
mob/var/wolf_fang_fist = 'Wolf Fang Fist.dmi'

mob/learn
	verb/Wolf(mob/M in oview(6))
		set category = "Techniques"
		if(!M)return


		var/ki_damage = round(src.powerlevel / rand(45,60))
		var/ki_absorbed = round(M.ki_shield_strength - ki_damage)
		var/ki_cost = (src.ki_max / 10)

		if(ki_damage <= 0)
			ki_damage = 0

		if(M.ki_shield_strength == 0)
			ki_damage = round(src.powerlevel / rand(15,30))

		if(ki_absorbed <= 0)
			ki_absorbed = 0



		if(src.doing == 1)
			src << "You are already doing something!"
			return

		if(src.buku == 1)
			return

		if(src.dead == 1)
			return

		if(src.ki_lock == 1)
			src << "Cannot use this Technique at his time"
			return

		if(M.dead == 1)
			return

		if(M.safe == 1)
			return

		if(M.type == /mob/PC)

			/*var/too_weak = M.powerlevel * 100
			if(usr.powerlevel >= too_weak)
				usr << "[M] is too weak for you to attack!"
				return

			var/too_strong = M.powerlevel / 100
			if(usr.powerlevel >= too_strong)
				usr << "[M] is too strong for you to attack!"
				return*/

			if(src.ki >= ki_cost)
				src.doing = 1
				src << "You beging to charge up <font color = Silver>Wolf Fang Fist!<font>"
				src.overlays += src.wolf_fang_fist
				src.frozen = 1
				sleep(30)

				if(!M)return

				if(M.z == src.z)
					src.overlays -= src.wolf_fang_fist
					missile('Wolf Fang Fist.dmi', src, M)
					src.ki -= ki_cost
					sleep(10)

					if(!M)return

					if(M.z == src.z)
						if(M.ki_shield == 1)
							if(ki_absorbed >= 1)
								src << "<font color = #00C3ED>[M] Ki Shield takes [round(ki_absorbed)] damage!"
								M << "<font color = #00C3ED>Your Ki Shield takes [round(ki_absorbed)] worth of power from that attack!"
								M.powerlevel -= round(ki_absorbed)
								M.ki_shield_strength -= round(ki_damage)
								M.KIDEATH()
								src.doing = 0
								src.frozen = 0
								return
							else
								M << "\red [src]'s Wolf Fang Fist hits you for [round(ki_damage)] damage!"
								src <<"\red Your Wolf Fang Fist hits [M] for [round(ki_damage)] damage!"
								M.powerlevel -= round(ki_absorbed)
								M.ki_shield_strength -= round(ki_damage)
								M.KIDEATH()
								src.doing = 0
								src.frozen = 0
								return
						else
							M.powerlevel -= round(ki_damage)
							M << "\red [src]'s Wolf Fang Fist hits you for [round(ki_damage)] damage!"
							src <<"\red Your Wolf Fang Fist hits [M] for [round(ki_damage)] damage!"
							M.KIDEATH()
							src.doing = 0
							src.frozen = 0
							return
					else
						src.overlays -= src.wolf_fang_fist
						src << "[M] is gone! Where did they go?!"
						src.doing = 0
						src.frozen = 0
						return
				else
					src.overlays -= src.wolf_fang_fist
					src << "[M] is gone! Where did they go?!"
					src.doing = 0
					src.frozen = 0
					return
			else
				src << "You do not have enough Ki!"
				return
		else
			if(src.ki >= ki_cost)
				src.doing = 1
				src << "You beging to charge up <font color = gray>Wolf Fang Fist!<font>"
				src.overlays += src.wolf_fang_fist
				src.frozen = 1
				sleep(30)
				if(!M)return

				if(M.z == src.z)
					src.overlays -= src.wolf_fang_fist
					missile('Wolf Fang Fist.dmi', src, M)
					src.ki -= ki_cost
					sleep(10)

					if(!M)return

					if(M.z == src.z)
						M.powerlevel -= round(ki_damage)
						M.KIDEATH()
						src.doing = 0
						src.frozen = 0
						return

		src.afk_time = 0
