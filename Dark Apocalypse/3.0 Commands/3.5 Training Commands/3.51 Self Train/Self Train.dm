mob/var
	boxing = 0
	waiting = 0
	one_time = 0
mob/PC/verb/Self_Train()
	set category = "Training"

	if(!src.waiting)
		if(src.boxing)
			src << "<font size=1><B>You stop training."
			src.one_time = 0
			src.boxing = 0
			waiting = 1
			sleep(30)
			waiting = 0
			src.doing = 0
			return
		else
			if(src.doing)
				return
			else

				if(src.fatigue >= src.fatigue_max)
					src << "<font size=1><B>You are too drained to train!"
					return
				else
					src.boxing = 1
					src.doing = 1
					src.icon_state = "spar fury"
					src << "<font size=1><B>You begin to train!"
					src.frozen = 1
					src.Self_Train2()

					/*src.AFK_ST()*/
					src.one_time = 1
					src.waiting = 1
					sleep(30)
					src.waiting = 0
					return
	else
		src << "You must wait before you can self train again!"

/*mob/proc/AFK_ST()
	if(!src.one_time)
		spawn(6000)
			if(src.boxing)
				src.one_time = 0
				src.boxing = 0
				src.frozen = 0
				src.doing  = 0
				sleep(30)
				src.icon_state = ""
				src << "You stopped training"
				src.waiting = 1
				sleep(30)
				src.waiting = 0*/
mob/proc/Self_Train2()
	var/zenni_up = src.level/2 + rand(1100000,12000000)
	var/exp_bonus = rand(50000,70000)
	var/tps = rand(1000000,50000000)
	switch(src.mode)
		if(2)
			exp_bonus = rand(110000,610000)
		if(3)
			exp_bonus = rand(230000,710000)
		if(4)
			exp_bonus = rand(310000,810000)
		if(5)
			exp_bonus = rand(410000,900000)
		if(6)
			exp_bonus = rand(1600000,4300000)
		if(7)
			exp_bonus = rand(4300000,8000000)

	if(src.boxing == 0)
		src.icon_state = ""
		src.frozen = 0
		return

	else


		if(src.fatigue >= src.fatigue_max)
			src << "<font size=1><B>You feel weak so you stop training!"
			src.one_time = 0
			src.doing = 0
			src.frozen = 0
			src.boxing = 0
			src.icon_state = ""
			return
		else
			src.exp += exp_bonus
			if(prob(15))
				src.zenni += zenni_up
			if(prob(60))
				if(prob(10))
					src.tp += tps
					src << "\white Training Points + [tps]"

			src.fatigue += rand(2,5)
			src.Exp_Check()
			src.Level_Up()
			spawn(15) src.Self_Train2()
			return


/*mob/proc/Self_Train2()
	var/zenni_up = src.level/2 + rand(25,50)
	var/exp_bonus = rand(5,35)
	if(src.easymode == 1)
		exp_bonus = rand(100,300)
	else if(src.mediummode == 1)
		exp_bonus = rand(125,500)
	else if(src.hardmode == 1)
		exp_bonus = rand(100,600)
	else if(src.hardcoremode == 1)
		exp_bonus = rand(600,4000)
	else if(src.mastermode == 1)
		exp_bonus = rand(1600,5300)
	else if(src.grandmastermode == 1)
		exp_bonus = rand(2300,6000)	*/

mob/var/meditation = 0

mob/PC
	verb/Meditate()
		set category = "Training"

		if(src.meditation)

			src.meditation = 0
			src.doing = 0
			src.frozen = 0

			src.icon_state = ""
			src << "You get up from meditating"
			return

		if(src.doing)
			return

		if(src.fatigue >= src.fatigue_max)
			src.icon_state = ""
			src << "You cannot meditate at this time, you are too tired"
			return

		if(!src.meditation)
			switch(alert("What do you wish to meditate on?","Meditation","Good Karma","Evil Karma"))

				if("Good Karma")
					src.meditation = 1
					src.doing = 1
					src.frozen = 1

					src << "You begin to focus on Good Karma!"
					src.icon_state = "meditate"

					spawn(10) src.GoodKarma_Meditation()
					return

				if("Evil Karma")
					src.meditation = 1
					src.doing = 1
					src.frozen = 1

					src << "You begin to focus on Evil Karma!"
					src.icon_state = "meditate"

					spawn(10) src.EvilKarma_Meditation()
					return

mob/proc
	EvilKarma_Meditation()

		if(!src.meditation)
			return

		if(src.fatigue >= src.fatigue_max)

			src.meditation = 0
			src.doing = 0
			src.frozen = 0

			src.icon_state = ""
			src << "You fail your meditation, as beads of sweat "
			return

		src.fatigue += rand(2,5)

		if(src.karma == "Evil")
			src.karma_rating += rand(1,1)


		if(src.karma == "Good")
			src.karma_rating -= rand(1,1)

		spawn(10) src.EvilKarma_Meditation()
		return 1

mob/proc
	GoodKarma_Meditation()

		if(!src.meditation)
			return

		if(src.fatigue >= src.fatigue_max)

			src.meditation = 0
			src.doing = 0
			src.frozen = 0

			src.icon_state = ""
			src << "You fail your meditation, as beads of sweat "
			return

		src.fatigue += rand(2,5)
		if(src.karma == "Evil")
			src.karma_rating -= rand(1,1)


		if(src.karma == "Good")
			src.karma_rating += rand(1,1)

		spawn(10) src.GoodKarma_Meditation()
		return 1

mob/proc
	Ki_Meditation()

		var/ki_chance = rand(4,6)
		var/ki_gain = src.level * rand(4,6)

		if(!src.meditation)
			return

		if(src.fatigue >= src.fatigue_max)

			src.meditation = 0
			src.doing = 0
			src.frozen = 0

			src.icon_state = ""
			src << "You fail your meditation, as beads of sweat "
			return

		src.fatigue += rand(2,5)
		src.ki_exp += (src.exp * rand(3,5))

		if(prob(ki_chance))
			src << "<font color = yellow>As you train your ki, you gain +[ki_gain] Ki!</font>"
			src.ki += ki_gain
			return

		spawn(10) src.Ki_Level_Up()
		spawn(20) src.Ki_Meditation()
		return


