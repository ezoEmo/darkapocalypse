obj/charger/icon = 'Final Revenger Charge.dmi'

mob/learn
	verb/Final_Revenger(mob/M in oview(6))
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
			src << "<font size = -1><B>You begin to concentrait your enegry into a Final Revenger!"
			src.charging = 1

			sleep(15)

			for(var/mob/PC/M2 in view(6))
				if(M2 == src)continue
				if(M2 == M)continue
				if(M2.type != /mob/PC)continue
				switch(alert(src,"Allow people to donate power to your Final Revenger?","","Yes","No"))
					if("Yes")

						switch(alert(M2,"Donate power to [src.name]'s Final Revenger?","","Yes","No"))
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
				switch(alert(src,"Continue Charging the Final Revenger?","","Yes","No"))
					if("Yes")
						for(var/mob/PC/M2 in view(6))
							if(M2 == src)continue
							if(M2 == M)continue
							if(M2.type != /mob/PC)continue
							switch(alert(src,"Allow people to donate power to your Final Revenger?","","Yes","No"))
								if("Yes")
									switch(alert(M2,"Donate power to [src.name]'s Final Revenger?","","Yes","No"))
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
						src << "<font size = -1><B>Your Final Revenger is complete!"

						sleep(15)

						missile(new/obj/Techniques/Overlays/Final_Revenger_Center, usr, M)

						src.icon_state = ""


						M.powerlevel -= sb_damage
						M.BigKiDeathCheck(src)

				sleep(25)


