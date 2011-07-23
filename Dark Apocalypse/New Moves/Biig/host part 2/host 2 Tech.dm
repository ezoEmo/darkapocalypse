

mob/learn/
	verb
		Darkness_Engulf(mob/M in oview(6))
			set category = "Techniques"

			if(src.doing)
				src << "You are already doing something!"
				return

			if(src.buku)
				return

			if(M.safe)
				src << "A force stops you from attacking [M]"
				return

			if(src.safe)
				src << "You are currently safe and cannot attack."
				return

			if(src.wrapped)
				src << "Your ki has been contained in the goo!"
				return

			if(src.dead)
				return

			if(src.ki_lock)
				src << "Cannot use this Technique at his time"
				return

			if(src.disk_lock)
				src << "You are recovering from your last blast..."
				return

			if(!M.pk)
				usr << "[M] Must be a combatant to engage in combat with players!"
				return


			if(!src.pk)
				usr << "You are not a Combatant!"
				return

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


			src.afk_time = 0

			var/ki_damage = round(((usr.ki_skill / usr.ki_skill_max) * usr.level) + usr.powerlevel_max * 15)
			var/ki_cost = round(src.ki_max * 0.95)

			if(src.ki >= ki_cost)
				if(!src.doing)
					M.powerlevel /= 2
					src.ki_lock = 1
					spawn(70) src.ki_lock = 0
					src.doing = 1
					src.ki -= ki_cost
					src.overlays += ray_charge
					view(6) << "<font color = blue>[src]:</font> You dare attack me???"
					sleep(10)
					view(6) << "<font color = blue>[src]:</font> Darkness..."
					sleep(15)
					view(6) << "<font color = blue>[src]:</font> Engulf!!!"
					src.overlays -= ray_charge
					missile(big_Darkness_Engulf, src, M)
					spawn(5) src.doing = 0
					spawn(5) src.frozen = 0
					spawn(150) src.ray_lock = 0

					if(prob(7))
						M.powerlevel = 0
						M << "\blue [usr.name]'s Darkness Engulf Blows through your Chest!"
						M.SmallKiDeathCheck(src)
						src.doing = 0
						src.frozen = 0
						return
					else
						M.powerlevel -= round(ki_damage)
						M << "\red [usr.name]'s Darkness Engulf plows into you"
						M.SmallKiDeathCheck(src)
						src.doing = 0
						src.frozen = 0
						return







/*





obj/charger/icon = 'Final Revenger Charge.dmi'

mob/learn
	verb/Super_Spirit_Bomb(mob/M in oview(6))
		set category = "Techniques"

		var/sb_damage = src.powerlevel * 0.25

		for(var/turf/Floors/Safe_Zone/S in view(6))
			if(S in oview(6))
				usr << "You are in a Safe Zone!"
				return

		if(usr.monkey)
			usr << "You cannot use this technique at the moment"
			return

		if(M.safe)
			src << "A force stops you from attacking [M]"
			return

		if(M.dead)
			src << "A force stops you from attacking [M]"
			return


		if(!M.pk)
			usr << "[M] Must be a combatant to engage in combat with players!"
			return

		if(!usr.pk)
			usr << "You must be a combatant to engage in combat with players!"
			return

		if(src.safe)
			src << "You are currently safe and cannot attack."
			return


		if(sb_damage < 0)
			sb_damage = 100

		if(src.charging)
			return

		if(src.wrapped)
			src << "Your ki has been contained in the goo!"
			return



		if(sb_damage <= src.powerlevel)
			src << "<font size = -1><B>You begin to concentrait your enegry into a Super Spirit Bomb!"
			src.frozen = 1
			src.doing = 1
			src.charging = 1
			src.overlays += big_Final_Revenger

			sleep(15)

			for(var/mob/PC/M2 in view(6))
				if(M2 == src)continue
				if(M2 == M)continue
				if(M2.type != /mob/PC)continue
				switch(alert(src,"Allow people to donate power to your Super Spirit Bomb?","","Yes","No"))
					if("Yes")

						switch(alert(M2,"Donate power to [src.name]'s Super Spirit Bomb?","","Yes","No"))
							if("Yes")
								var/donate = input(M2,"How much do you wish to Donate?")as num
								if(donate > M2.powerlevel)
									M2 << "You don't have enough Power!"
									continue

								if(donate < 1)
									M2 << "You can't donate that much!"
									continue
								else
									sb_damage += donate
									missile(new/obj/charger, M2, src)
									M2.powerlevel -= donate
							else
								continue
					else
						continue

			while(src.charging)
				switch(alert(src,"Continue Charging the Super Spirit Bomb?","","Yes","No"))
					if("Yes")
						for(var/mob/PC/M2 in view(6))
							if(M2 == src)continue
							if(M2 == M)continue
							if(M2.type != /mob/PC)continue
							switch(alert(src,"Allow people to donate power to your Super Spirit Bomb?","","Yes","No"))
								if("Yes")
									switch(alert(M2,"Donate power to [src.name]'s Super Spirit Bomb?","","Yes","No"))
										if("Yes")
											var/donate = input(M2,"How much do you wish to Donate?")as num
											if(donate > M2.powerlevel)
												M2 << "You don't have enough Power!"
												continue

											if(donate < 1)
												M2 << "You can't donate that much!"
												continue
											else
												sb_damage += donate
												missile(new/obj/charger, M2, src)
												M2.powerlevel -= donate
												continue
										else
											continue
								else
									continue

						for(var/turf/T in view(src,8))
							var/chance = roll(1,8)
							if(chance == 6)
								missile(new/obj/charger, T, src)
								sb_damage += src.powerlevel_max * 0.05
					else
						if(!M)return

						src.charging = 0

						sleep(10)

						if(!M)return
						src << "<font size = -1><B>Your Super Spirit Bomb is complete!"
						src.overlays -= big_Final_Revenger

						sleep(15)

						missile(new/obj/Techniques/Overlays/Final_Revenger_Center, usr, M)

						src.icon_state = ""
						src.frozen = 0
						src.doing = 0

						M.powerlevel -= sb_damage
						M.BigKiDeathCheck(src)

				sleep(25)*/


