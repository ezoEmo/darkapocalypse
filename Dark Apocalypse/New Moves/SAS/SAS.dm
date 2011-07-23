obj/Star/icon = 'Stars.dmi'
mob/learn/Namek
	verb
		Shooting_All_Star(mob/M in oview(6))
			set category = "Techniques"


			for(var/turf/Floors/Safe_Zone/S in view(6))
				if(S in view(8))
					usr << "They are in a Safe Zone!"
					return

			for(var/turf/Planet_Gravitys/Supreme_Kai/A in view(6))
				if(A in view(8))
					usr << "They are in a Safe Zone!"
					return

			for(var/turf/Planet_Gravitys/King_Kai/D in view(6))
				if(D in view(8))
					usr << "They are in a Safe Zone!"
					return

			var/ki_damage = round((100000000000 * usr.level) + usr.ki_max * 0.50+(100000000000 * usr.level))
			var/ki_cost = src.ki_max

			if(src.ki >= ki_cost)
				if(!src.doing)
					src.ki_lock = 1
					spawn(10) src.ki_lock = 0
					src.doing = 1
					src.ki -= ki_cost
					view(6) << "<font color = white>[src]:</font> FOOL HOW DARE YOU ATTACK ME NOW YOU DIE!!!"
					sleep(30)
					view(6) << "<font color = white>[src]:</font> SHOOTING..."
					sleep(15)
					view(6) << "<font color = white>[src]:</font> ALL STAR!!!"
					spawn(5) src.doing = 0
					spawn(5) src.frozen = 0

/*					for(var/turf/T in view(M,8))
						var/chance = roll(1,8)
						if(chance == 6)
							missile(new/obj/grenade, T, M)
							ki_damage += src.ki_max * 0.05
							M.powerlevel -= ki_damage
							M.BigKiDeathCheck(src)

*/
					for(var/turf/T in view(src,8))
						var/chance = roll(1,8)
						if(chance == 6)
							missile(new/obj/Star, T, M)
					if(prob(M.dodge))
						usr << "\red [M] has avoided some of the blasts."
						M << "<font color=lime>You avoided some of the damage!"
						ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 0.04)
						M.powerlevel -= ki_damage
					else
						M.powerlevel -= ki_damage
					M.BigKiDeathCheck(src)



			src.afk_time = 0

