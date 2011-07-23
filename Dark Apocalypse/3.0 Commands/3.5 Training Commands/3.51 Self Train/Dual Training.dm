mob/var/dualtrain = 0
mob/var/dual_partner = ""
mob/var/dual_delay = 0
mob/PC/verb/Dual_Train(mob/PC/M in get_step(usr,usr.dir))

	set category = "Training"
	if(dual_delay == 1)
		usr << "you must wait before you can dual train again"
		return

	if(usr.rest==1)
		usr << "you cannot DT while resting!"
		return

	if(!istype(M,/mob/PC))
		usr <<"You cant dual train with NPCs!"
		return
	if(src.dualtrain==1)
		if(istype(M,/mob/PC))
			if(src.dual_partner == M.name)
				M.dualtrain = 0
				M << "<font size=1><B>You or your partner stop Dual Training"
				M.doing = 0
				M.dual_partner = null
				M.frozen = 0
				src.doing = 0
				src.frozen = 0
				src.dualtrain = 0
				src << "<font size=1><B>You or your partner stop Dual Training"
				src.dual_partner = null
		else
			usr <<"You cant dual train with NPCs!"
			return
	else
		switch(alert("Are you sure you wish to Dual-Train with [M]?","Dual Train","Yes","No"))
			if("Yes")
				if(M.dual_delay == 1)
					usr << "[M] must wait before they can dual train again"
					return
				if(M.rest ==1)
					M << "you cannot DT while resting!"
					return
				if(usr.rest == 1)
					usr << "you cannot DT while resting!"
					return
				if(M.doing==1||M.rest==1||M.boxing==1)
					usr << "<font size=1><B>[M] is already busy doing something else."
				else
					switch(alert(M,"Do you wish to Dual Train with [src]?","Dual Train","Yes","No"))
						if("Yes")
							if(usr.doing==1)
								M << "<font size=1><B>Sorry, but they are now busy doing somthing"
							else
								M.doing = 1
								src.doing = 1
								M.dual_delay = 1
								src.dual_delay = 1
								M.dual_partner = src.name
								M.dualtrain = 1
								M << "<font size=1><B>You and your partner begin to dual train"
								M.Dual_Train2()
								M.icon_state = "spar fury"
								src.icon_state = "spar fury"

								M.frozen = 1
								src.frozen = 1
								src.dual_partner = M.name
								src.dualtrain= 1
								src << "<font size=1><B>You and your partner begin to dual train"
								sleep(30)
								src.Dual_Train2()
								sleep(600)
								src.dual_delay = 0
								M.dual_delay = 0
								src << "You are ready to dual train again!"
								M << "You are ready to dual train again!"

mob/proc/Dual_Train2()
	var/grav_bonus = 500
	var/exp_bonus = rand(25000,850000)
	switch(src.mode)
		if(1)
			exp_bonus = rand(600,1300)
		if(2)
			exp_bonus = rand(1500,2000)
		if(3)
			exp_bonus = rand(1700,2800)
		if(4 )
			exp_bonus = rand(1900,4900)
		if(5)
			exp_bonus = 5
		if(6)
			exp_bonus = rand(2500,6150)
		if(7)
			exp_bonus = 5

	if(src.grav >= 10)
		grav_bonus = src.grav
		exp_bonus = exp_bonus + (grav_bonus	* 2)

	if(src.dualtrain == 0)
		src.icon_state = ""
		src.frozen = 0
		return

	else


		if(src.fatigue >= src.fatigue_max)
			for(var/mob/PC/M in world)
				if(M.dual_partner == src.name)
					M << "<font size=1><B>Your partner is too weak to continue dual training!"
					M.doing = 0
					M.frozen = 0
					M.boxing = 0
					M.icon_state = ""

					M.dualtrain = 0
					M.dual_partner = null
			src << "<font size=1><B>You feel weak so you stop training!"
			src.doing = 0
			src.frozen = 0
			src.boxing = 0
			src.icon_state = ""

			src.dualtrain = 0
			src.dual_partner = null
		else
			src.exp += exp_bonus

			src.fatigue += rand(0,9)
			src.Level_Up()
			spawn(20) src.Dual_Train2()
			return