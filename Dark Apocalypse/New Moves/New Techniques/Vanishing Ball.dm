obj/charger2/icon = 'VanishingBallEnergy.dmi'
mob/var/charging1 = 0

mob/learn
	verb/Vanishing_Ball(mob/M in oview(6))
		set category = "Techniques"

		var/vb_damage = ((src.ki * 0.95) + (src.ki_skill * src.level))

		for(var/turf/Floors/Safe_Zone/S in view(6))
			if(S in oview(6))
				usr << "You are in a Safe Zone!"
				return

		if(usr.monkey)
			usr << "You cannot use this technique at the moment"
			return

		if(!M.pk)
			usr << "[M] Must be a combatant to engage in combat with players!"
			return

		if(M.safe)
			src << "A force stops you from attacking [M]"
			return

		if(M.dead)
			src << "A force stops you from attacking [M]"
			return

		if(!usr.pk)
			usr << "You must be a combatant to engage in combat with players!"
			return


		if(src.safe)
			src << "You are currently safe and cannot attack."
			return

		if(vb_damage < 0)
			vb_damage = 100

		if(src.charging1)
			return

		if(src.wrapped)
			src << "Your ki has been contained in the goo!"
			return

		if(src.karma == "Good")
			src << "You must pure hatred to use the Vanishing Ball technique"
			return

		if(src.rage > 0)
			src << "You must be Calm to use the Vanishing Ball technique"
			return

		if(vb_damage <= src.powerlevel)
			src << "<font size = -1><B>You begin to concentrait your enegry into a Vanishing Ball!"
			src.frozen = 1
			src.doing = 1
			src.icon_state = "vanishing ball"
			src.overlays += small_vanishing_ball
			src.charging1 = 1

			sleep(5)

			for(var/mob/PC/M2 in view(6))
				if(M2 == src)continue
				if(M2 == M)continue
				if(M2.type != /mob/PC)continue
				switch(alert(src,"Allow people to donate power to your Vanishing Ball?","","Yes","No"))
					if("Yes")

						switch(alert(M2,"Donate power to [src.name]'s Vanishing Ball?","","Yes","No"))
							if("Yes")
								var/donate = input(M2,"How much do you wish to Donate?")as num
								if(donate > M2.powerlevel)
									M2 << "You don't have enough Power!"
									continue
								if(donate < 1)
									M2 << "You can't donate that much!"
									continue
								else
									vb_damage += donate
									missile(new/obj/charger2, M2, src)
									M2.powerlevel -= donate
							else
								continue
					else
						continue

			while(src.charging1)
				switch(alert(src,"Continue Charging the Vanishing Ball?","","Yes","No"))
					if("Yes")
						for(var/mob/PC/M2 in view(6))
							if(M2 == src)continue
							if(M2 == M)continue
							if(M2.type != /mob/PC)continue
							switch(alert(src,"Allow people to donate power to your Vanishing Ball?","","Yes","No"))
								if("Yes")
									switch(alert(M2,"Donate power to [src.name]'s Vanishing Ball?","","Yes","No"))
										if("Yes")
											var/donate = input(M2,"How much do you wish to Donate?")as num
											if(donate > M2.powerlevel)
												M2 << "You don't have enough Power!"
												continue
											if(donate < 1)
												M2 << "You can't donate that much!"
												continue
											else
												vb_damage += donate
												missile(new/obj/charger2, M2, src)
												M2.powerlevel -= donate
												continue
										else
											continue
								else
									continue

						for(var/turf/T in view(src,8))
							var/chance = roll(1,8)
							if(chance == 6)
								missile(new/obj/charger2, T, src)
								vb_damage += src.ki_max * 0.05
					else
						if(!M)return
						src.overlays -= small_vanishing_ball
						src.overlays += big_vanishing_ball
						src.charging1 = 0

						sleep(10)

						if(!M)return
						src << "<font size = -1><B>Your Vanishing Ball is complete!"

						sleep(15)
						src.overlays -= big_vanishing_ball

						missile(new/obj/techs/Overlays/Vanishing_Ball_Center, usr, M)

						src.icon_state = ""
						src.frozen = 0
						src.doing = 0


						if(M.karma == "Evil")
							M.powerlevel -= vb_damage
							M.BigKiDeathCheck(src)
						else
							view(6) << "\red [src]'s Vanishing Ball didn't seem to have effected [M]"

				sleep(25)