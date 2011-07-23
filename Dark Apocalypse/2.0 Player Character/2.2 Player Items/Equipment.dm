mob/var/weightgi = 0
mob/var/weightcape = 0
mob/var/weightarmor = 0
mob/var/weightarm = 0
mob/var/weightleg = 0
mob/var/weightankle = 0
mob/var/weightwrist = 0
mob/var/weighthead = 0

/mob/PC
	Move()
		for(var/atom/T in get_step(src,src.dir))
			if(T.density)
				goto NoBonusLol
		for(var/obj/O in get_step(src,src.dir))
			if(O.density)
				goto NoBonusLol
		for(var/area/A in get_step(src,src.dir))
			if(A.density)
				goto NoBonusLol
		for(var/turf/B in get_step(src,src.dir))
			if(B.density)
				goto NoBonusLol
		for(var/mob/V in get_step(src,src.dir))
			if(V.density)
				goto NoBonusLol


		var/FullBonus = 0
		var/FullDrain = rand(0,1)
		var/z_bonus = usr.level * 4
		var/cape1_bonus = 1 + usr.level/5
		var/cape2_bonus = 5 + usr.level/5
		var/cape3_bonus = 12 + usr.level/5
		var/armor1_bonus = 3 + usr.level/5
		var/armor2_bonus = 7 + usr.level/5
		var/armor3_bonus = 17 + usr.level/5
		var/gi1_bonus = 2 + usr.level/5
		var/gi2_bonus = 7 + usr.level/5
		var/gi3_bonus = 15 + usr.level/5
		var/leg_bonus = 5 + usr.level/5
		var/leg2_bonus = 10 + usr.level/5
		var/arm_bonus = 5 + usr.level/5
		var/arm2_bonus = 10 + usr.level/5
		var/ankle_bonus = 1 + usr.level/5
		var/ankle2_bonus = 5 + usr.level/5
		var/wrist_bonus = 1 + usr.level/5
		var/wrist2_bonus = 5 + usr.level/5
		var/turben_bonus = 5 + usr.level/5
		var/turben2_bonus = 10 + usr.level/5


		if(z_bonus <= 1)
			z_bonus = 1

		if(usr.z_sword)
			FullBonus += z_bonus

			if(usr.powerlevel_max < 3500000)
				FullDrain += rand(1,3)

			if(usr.powerlevel_max > 4000000)
				FullDrain += 1

		switch(usr.weightcape)
			if(1)
				FullBonus += cape1_bonus
			if(2)
				FullBonus += cape2_bonus
			if(3)
				FullBonus += cape3_bonus

		switch(usr.weightarmor)
			if(1)
				FullBonus += armor1_bonus
			if(2)
				FullBonus += armor2_bonus
			if(3)
				FullBonus += armor3_bonus

		switch(usr.weightgi)
			if(1)
				FullBonus += gi1_bonus
			if(2)
				FullBonus += gi2_bonus
			if(3)
				FullBonus += gi3_bonus

		switch(usr.weightleg)
			if(1)
				FullBonus += leg_bonus
			if(2)
				FullBonus += leg2_bonus

		switch(usr.weightarm)
			if(1)
				FullBonus += arm_bonus
			if(2)
				FullBonus += arm2_bonus

		switch(usr.weightankle)
			if(1)
				FullBonus += ankle_bonus
			if(2)
				FullBonus += ankle2_bonus

		switch(usr.weightwrist)
			if(1)
				FullBonus += wrist_bonus
			if(2)
				FullBonus += wrist2_bonus

		switch(usr.weighthead)
			if(1)
				FullBonus += turben_bonus
			if(2)
				FullBonus += turben2_bonus

		if(FullBonus <= 0)
			FullBonus = 0

		if(FullBonus >= 650)
			FullBonus = 650
		if(src.mode == 7 && FullBonus >= 1050)
			FullBonus = 1050

		if(FullDrain >= 25)
			FullDrain = rand(5,15)

		if(usr.weightgi >= 1 || usr.weightcape >= 1 ||usr.weightarmor >= 1 || usr.weightarm >= 1 || usr.weightleg >= 1 || usr.weightankle >= 1 || usr.weightwrist >= 1 || usr.weighthead >= 1 || usr.z_sword >= 1)
			if(usr.fatigue < usr.fatigue_max && !usr.KO && !usr.rest && !usr.frozen && !usr.doing)
				if(prob(33))
					usr.fatigue += FullDrain
				if(prob(5))
					usr.fatigue_exp += round(FullBonus / 4)
					usr.Fatigue_Level_Up()
				usr.exp += round(FullBonus)
				usr.Level_Up()
				usr.Tired_KO()
		NoBonusLol
		..()
